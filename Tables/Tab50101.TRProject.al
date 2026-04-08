// Stores active projects
// Contains project details and hour tracking
// Used to manage ongoing work
table 50101 TRProject
{
    Caption = 'TR Project';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Project No."; Code[20])
        {
            Caption = 'No.';
        }
        field(5; "Project Name"; Text[100])
        {
            Caption = 'Project Name';
        }
        field(10; "Estimated Hours"; Decimal)
        {
            Caption = 'Estimated Hours';
            DecimalPlaces = 0 : 2;

            trigger OnValidate()
            begin
                //Recalculate remaining hours when estimated hours change
                "Remaining Hours" := "Estimated Hours" - "Used Hours";
            end;
        }
        field(15; "Used Hours"; Decimal)
        {
            Caption = 'Used Hours';
            DecimalPlaces = 0 : 2;
            trigger OnValidate()
            begin
                //Recalculate remaining hours when used hours change 
                "Remaining Hours" := "Estimated Hours" - "Used Hours";
            end;
        }
        field(20; "Remaining Hours"; Decimal)
        {
            Caption = 'Remaining Hours';
            DecimalPlaces = 0 : 2;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Project No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        TRSetup: Record TRSetup;
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        //Only assign a number if Project No. is empty 
        if "Project No." = '' then begin
            //Get setup record
            if not TRSetup.Get('SETUP') then
                Error('TR Setup has not been created');

            //Make sure a project number series is selected in setup 
            TRSetup.TestField("Project Nos.");

            //Get the next number from the selected No. Series 
            "Project No." := NoSeriesMgt.GetNextNo(TRSetup."Project Nos.", Today(), true);
        end
    end;
}
