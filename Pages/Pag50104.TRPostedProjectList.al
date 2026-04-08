// List page showing posted (closed) projects
// Used for historical data and overview
// Read-only view of completed projects
page 50104 TRPostedProjectList
{
    ApplicationArea = All;
    Caption = 'TR Posted Project List';
    PageType = List;
    SourceTable = TRPostedProject;
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Project No."; Rec."Project No.")
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
