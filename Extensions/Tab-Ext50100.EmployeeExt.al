tableextension 50100 EmployeeExt extends Employee
{
    fields
    {
        field(50100; "BC User ID"; Code[100])
        {
            Caption = 'BC User ID';
            DataClassification = EndUserIdentifiableInformation;
        }
    }
}
