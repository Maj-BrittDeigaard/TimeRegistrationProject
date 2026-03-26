// Page for registering and viewing time entries
// Users can enter hours worked on projects
// Employee No. is set automatically
// Project selection is filtered to assigned projects
page 50103 TRTimeEntryList
{
    ApplicationArea = All;
    Caption = 'TR Time Entry List';
    PageType = Card;
    SourceTable = TRTimeEntry;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Project No."; Rec."Project No.")
                {
                    ToolTip = 'Select the project for this time entry. Only projects assigned to you will be shown.';
                    ApplicationArea = All;
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
