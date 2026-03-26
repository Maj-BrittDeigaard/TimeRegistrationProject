// Stores completed/posted projects
// Contains historical project data
// Used after project is closed

table 50104 TRPostedProject
{
    Caption = 'TR Posted Project';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Posted Project No."; Code[20])
        {
            Caption = 'Project No.';
            DataClassification = ToBeClassified;
            TableRelation = TRProject."Project No.";
        }

        field(5; "Project Name"; Text[100])
        {
            Caption = 'Project Name';
            DataClassification = ToBeClassified;
        }

        field(10; "Estimated Hours"; Decimal)
        {
            Caption = 'Estimated Hours';
            DecimalPlaces = 0 : 2;
            DataClassification = ToBeClassified;
        }

        field(15; "Used Hours"; Decimal)
        {
            Caption = 'Used Hours';
            DecimalPlaces = 0 : 2;
            DataClassification = ToBeClassified;
        }

        field(20; "Remaining Hours"; Decimal)
        {
            Caption = 'Remaining Hours';
            DecimalPlaces = 0 : 2;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Posted Project No.")
        {
            Clustered = true;
        }
    }
}
