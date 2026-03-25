// Stores completed/posted projects
// Contains historical project data
// Used after project is closed
table 50104 TRPostedProject
{
    Caption = 'TRPostedProject';
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
