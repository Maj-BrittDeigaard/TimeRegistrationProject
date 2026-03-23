page 50100 TRSetup
{
    ApplicationArea = All;
    Caption = 'TRSetup';
    PageType = Card;
    SourceTable = TRSetup;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Primary Key"; Rec."Primary Key")
                {
                    ToolTip = 'Specifies the value of the Primary Key field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Project Nos."; Rec."Project Nos.")
                {
                    ToolTip = 'Specifies the value of the Project Nos. field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Time Entry Nos."; Rec."Time Entry Nos.")
                {
                    ToolTip = 'Specifies the value of the Time Entry Nos. field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
        }
    }
}
