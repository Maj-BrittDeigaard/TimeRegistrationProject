// Links employees to projects (many-to-many)
// Controls which employees can register time on which projects
// Used for filtering project selection
table 50103 TRProjectAssignment
{
    Caption = 'TR Project Assignment';
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
