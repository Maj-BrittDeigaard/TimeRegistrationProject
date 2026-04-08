// Page for configuring system setup
// Allows selection of No. Series for projects
// Used by system to generate project numbers
page 50105 TRSetup
{
    ApplicationArea = All;
    Caption = 'TR Setup';
    PageType = Card;
    SourceTable = TRSetup;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Primary Key"; Rec."Primary Key")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the primary key for the setup record.';
                }
                field("Project Nos."; Rec."Project Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifices the number series used for projects.';
                }
            }
        }
    }
}
