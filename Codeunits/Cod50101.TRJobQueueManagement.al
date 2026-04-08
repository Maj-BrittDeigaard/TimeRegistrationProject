// Handles scheduled processing via Job Queue
// Finds unposted time entries and posts them
// Updates project hours (used and remaining)
// Validates projects with negative remaining hours
// Sends notification email via Email Scenario
codeunit 50101 TRJobQueueManagement
{
    trigger OnRun()
    begin
        PostTimeEntries();
        SendNegativeHoursEmail();
    end;

    local procedure PostTimeEntries()
    var
        TRTimeEntry: Record TRTimeEntry;
        TRProject: Record TRProject;
    begin
        TRTimeEntry.SetRange(Posted, false);
        if TRTimeEntry.FindSet() then
            repeat
                if TRProject.Get(TRTimeEntry."Project No.") then begin
                    TRProject."Used Hours" += TRTimeEntry.Hours;
                    TRProject.Modify();
                    TRTimeEntry.Posted := true;
                    TRTimeEntry.Modify();
                end;
            until TRTimeEntry.Next() = 0;
    end;

    local procedure SendNegativeHoursEmail()
    var
        TRProject: Record TRProject;
        Email: Codeunit Email;
        EmailMessage: Codeunit "Email Message";
        Recipients: List of [Text];
        Subject: Text;
        Body: Text;
    begin
        TRProject.SetFilter("Remaining Hours", '<0');
        if TRProject.FindSet() then begin
            Recipients.Add('admin@company.com');
            Subject := 'Projects with Negative Remaining Hours';
            Body := 'The following projects have negative remaining hours:<br><br>';
            repeat
                Body += StrSubstNo('Project %1: %2 hours remaining<br>', TRProject."Project No.", TRProject."Remaining Hours");
            until TRProject.Next() = 0;
            EmailMessage.Create(Recipients, Subject, Body, true);
            Email.Send(EmailMessage);
        end;
    end;
}
