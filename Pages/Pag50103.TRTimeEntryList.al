// Page for registering and viewing time entries
// Users can enter hours worked on projects
// Employee No. is set automatically
// Project selection is filtered to assigned projects
page 50103 TRTimeEntryList
{
    ApplicationArea = All;
    Caption = 'TR Time Entry List';
    PageType = List;
    SourceTable = TRTimeEntry;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';

                field("Project No."; Rec."Project No.")
                {
                    ToolTip = 'Select the project for this time entry. Only projects assigned to you will be shown.';
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        Project: Record TRProject;
                        Assignment: Record TRProjectAssignment;
                        ProjectFilter: Text;
                    begin
                        //Filter assignments to the current employee on the time entry
                        Assignment.SetRange("Employee No.", Rec."Employee No.");

                        //Build a filter containing all project numbers assigned to the employee
                        if Assignment.FindSet() then begin
                            repeat
                                if ProjectFilter = '' then
                                    ProjectFilter := Assignment."Project No."
                                else
                                    ProjectFilter := ProjectFilter + '|' + Assignment."Project No.";
                            until Assignment.Next() = 0;

                            //Apply the project filter so only assigned projects are shown
                            Project.SetFilter("Project No.", ProjectFilter);
                        end else
                            Error('No projects are assigned to employee %1.', Rec."Employee No.");

                        //Open the project list as a lookup and return the selected project number
                        if Page.RunModal(Page::TRProjectList, Project) = Action::LookupOK then
                            Rec."Project No." := Project."Project No.";

                        exit(true);
                    end;
                }

                field("Work Date"; Rec."Work Date")
                {
                    ToolTip = 'Enter the date you worked on the project.';
                    ApplicationArea = All;
                }

                field("Hours"; Rec."Hours")
                {
                    ToolTip = 'Enter the number of hours worked. You can enter fractions of an hour (e.g., 1.5).';
                    ApplicationArea = All;
                }

                field("Employee No."; Rec."Employee No.")
                {
                    ToolTip = 'This is the employee number for the logged-in user.';
                    ApplicationArea = All;
                    Editable = false; // Employee No. is set automatically based on the logged-in user
                }
            }
        }
    }
}
