// Stores time registrations
// Links employee to project with date and hours
// Contains posted flag for processing status
table 50102 TRTimeEntry
{
    Caption = 'TR Time Entry';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ""; Text[100])
        {
            Caption = '';
        }
    }
    /*keys
    {
        key(PK; "")
        {
            Clustered = true;
        }
    }
    */
}
