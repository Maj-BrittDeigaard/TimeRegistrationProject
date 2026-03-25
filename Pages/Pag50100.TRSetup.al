// Page for configuring system setup
// Allows selection of No. Series for projects
// Used by system to generate project numbers
page 50100 TRSetup
{
    ApplicationArea = All;
    Caption = 'TRSetup';
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
                }
                field("Project Nos."; Rec."Project Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
