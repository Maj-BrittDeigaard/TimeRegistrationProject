// Stores active projects
// Contains project details and hour tracking
// Used to manage ongoing work
table 50101 TRProject
{
    Caption = 'TR Project';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project No."; Code[20])
        {
            Caption = 'No.';
        }
        field(5; "Project Name"; Text[100])
        {
            Caption = 'Project Name';
        }
        field(10; "Estimated Hours"; Decimal)
        {
            Caption = 'Estimated Hours';
            DecimalPlaces = 0 : 2;

            trigger OnValidate()
            begin
                "Remaining Hours" := "Estimated Hours" - "Used Hours";
            end;
        }
        field(15; "Used Hours"; Decimal)
        {
            Caption = 'Used Hours';
            DecimalPlaces = 0 : 2;
            trigger OnValidate()
            begin
                "Remaining Hours" := "Estimated Hours" - "Used Hours";
            end;
        }
        field(20; "Remaining Hours"; Decimal)
        {
            Caption = 'Remaining Hours';
            DecimalPlaces = 0 : 2;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Project No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        //TODO: Add No. Series logic here
        //For now, number can be entered manually 
    end;
}
