// Links employees to projects (many-to-many)
// Controls which employees can register time on which projects
// Used for filtering project selection
table 50103 TRProjectAssignment
{
    Caption = 'TR Project Assignment';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry number';
            AutoIncrement = true;
        }

        field(2; "Project No."; Code[20])
        {
            Caption = 'Project number';
            TableRelation = TRProject."Project No.";
        }

        field(3; "Employee No."; Code[20])
        {
            Caption = 'Employee number';
            TableRelation = Employee."No.";
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

}
