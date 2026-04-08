page 50106 TRProjectAssignmentList
{
    ApplicationArea = All;
    Caption = 'TR Project Assignment List';
    PageType = List;
    SourceTable = TRProjectAssignment;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Project No."; Rec."Project No.")
                {
                    ApplicationArea = All;
                }
                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}