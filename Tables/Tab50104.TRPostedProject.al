// Stores completed/posted projects
// Contains historical project data
// Used after project is closed

table 50104 TRPostedProject
{
    Caption = 'TR Posted Project';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Project No."; Code[20])
        {
            Caption = 'Project No.';
        }

        field(2; "Project Name"; Text[100])
        {
            Caption = 'Project Name';
        }

        field(3; "Estimated Hours"; Decimal)
        {
            Caption = 'Estimated Hours';
            DecimalPlaces = 0 : 2;
        }

        field(4; "Used Hours"; Decimal)
        {
            Caption = 'Used Hours';
            DecimalPlaces = 0 : 2;
        }

        field(5; "Remaining Hours"; Decimal)
        {
            Caption = 'Remaining Hours';
            DecimalPlaces = 0 : 2;
        }
    }

    keys
    {
        key(PK; "Project No.")
        {
            Clustered = true;
        }
    }
}

