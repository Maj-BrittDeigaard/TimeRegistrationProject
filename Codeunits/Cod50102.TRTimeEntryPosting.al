codeunit 50102 TRTimeEntryPosting
{
    //Posts unposted time entries
    //Updates project hours and marks entries as posted

    procedure PostTimeEntries()
    var
        TimeEntry: Record TRTimeEntry;
        Project: Record TRProject;
    begin
        TimeEntry.SetRange(Posted, false);

        if TimeEntry.FindSet() then
            repeat
                if Project.Get(TimeEntry."Project No.") then begin
                    //Add hours from the time entry to the project
                    Project."Used Hours" := Project."Used Hours" + TimeEntry.Hours;
                    Project."Remaining Hours" := Project."Estimated Hours" - Project."Used Hours";
                    Project.Modify();

                    //Mark the time entry as posted
                    TimeEntry.Posted := true;
                    TimeEntry.Modify();
                end;
            until TimeEntry.Next() = 0;
    end;

}
