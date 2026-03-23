table 50100 TRSetup
{
    Caption = 'TRSetup';
    DataClassification = ToBeClassified;
    //DataClassification = CustomerContent;


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
        field(10; "Time Entry Nos."; Code[20])
        {
            Caption = 'Time Entry Nos.';
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
