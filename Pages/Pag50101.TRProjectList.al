// List page showing all active projects
// Displays key project information (name, hours, etc.)
// Provides navigation to project card
page 50101 TRProjectList
{
    ApplicationArea = All;
    Caption = 'TR Project List';
    PageType = List;
    SourceTable = TRProject;
    UsageCategory = Lists;
    CardPageId = TRProjectCard;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."Project No.")
                {
                    ApplicationArea = All;
                }

                field("Project Name"; Rec."Project Name")
                {
                    ApplicationArea = All;
                }

                field("Estimated Hours"; Rec."Estimated Hours")
                {
                    ApplicationArea = All;
                }

                field("Used Hours"; Rec."Used Hours")
                {
                    ApplicationArea = All;
                }

                field("Remaining Hours"; Rec."Remaining Hours")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
