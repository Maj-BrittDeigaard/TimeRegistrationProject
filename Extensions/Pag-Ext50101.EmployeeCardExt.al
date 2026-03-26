// Extends Employee Card with access to time registrations
// Adds action to open TRTimeEntry list filtered by employee
// Improves navigation for users
pageextension 50101 EmployeeCardExt extends "Employee Card"
{
    layout
    {
        addlast(General)
        {
            field("BC User ID"; Rec."BC User ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Business Central user ID linked to this employee.';
            }
        }
    }

    actions
    {
        addlast(Processing)
        {
            action(OpenTimeEntries)
            {
                Caption = 'Time Registrations';
                ApplicationArea = All;
                Image = Timesheet;

                trigger OnAction()
                var
                    TimeEntry: Record TRTimeEntry;
                begin
                    TimeEntry.SetRange("Employee No.", Rec."No.");
                    Page.Run(Page::TRTimeEntryList, TimeEntry);
                end;
            }
        }
    }
}
