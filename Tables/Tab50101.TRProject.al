// Stores active projects
// Contains project details and hour tracking
// Used to manage ongoing work
table 50101 TRProject
{
    Caption = 'TRProject';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ""; )
        {
            Caption = '';
        }
    }
    keys
    {
        key(PK; "")
        {
            Clustered = true;
        }
    }
}
