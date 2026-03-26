// Stores time registrations
// Links employee to project with date and hours
// Contains posted flag for processing status

table 50102 TRTimeEntry
{
    Caption = 'TR Time Entry';
    DataClassification = ToBeClassified;



    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }

        field(2; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = Employee."No.";
        }

        field(3; "Project No."; Code[20])
        {
            Caption = 'Project No.';
            TableRelation = TRProject."Project No.";
        }

        field(4; "Work Date"; Date)
        {
            Caption = 'Work Date';
        }

        field(5; "Hours"; Decimal)
        {
            Caption = 'Hours';
            DecimalPlaces = 0 : 2;
        }

        field(6; "Posted"; Boolean)
        {
            Caption = 'Posted';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        Employee: Record Employee;
    begin
        Employee.SetRange("BC User ID", UserId());

        if Employee.FindFirst() then
            "Employee No." := Employee."No."
        else
            Error('No employee is linked to the current user %1.', UserId());
    end;
}
