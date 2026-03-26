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

                }


            }
        }
    }
}
