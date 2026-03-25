// Stores system configuration
// Contains No. Series setup for projects
// Used to control automatic numbering
table 50100 TRSetup
{
    Caption = 'TRSetup';
    DataClassification = CustomerContent;


    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(5; "Project Nos."; Code[20])
        {
            Caption = 'Project Nos.';
            TableRelation = "No. Series".Code;
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
