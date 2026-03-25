// Card page for creating and editing projects
// Handles project details and assigned consultants
// Integrates with No. Series for automatic numbering
page 50102 TRProjectCard
{
    ApplicationArea = All;
    Caption = 'TR Project Card';
    PageType = Card;
    SourceTable = TRProject;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
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
    actions
    {
        area(Processing)
        {
            action(PostProject)
            {
                Caption = 'Post Project';
                ApplicationArea = All;
                Image = Post;

                trigger OnAction()
                begin
                    //TODO: Call posting codeunit here
                    Message('Project posting will be implemented later')
                end;
            }
        }
    }
}
