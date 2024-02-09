table 50104 EmpTable
{
    Caption = 'EmpTable';
    DataClassification = ToBeClassified;
    LookupPageId = "Company Pic Part";

    fields
    {
        field(1; ID; Code[20])
        {
            Caption = 'ID';
            TableRelation = Customer;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            TableRelation = POPup.name;
            trigger OnValidate()
            var

                myInt: Record POPup;
            begin
                // Rec.Get(ID);
                Name := myInt.name;
            end;
        }
        field(3; "Date of birth"; Date)
        {
            Caption = 'Date of birth';
        }
        field(4; Department; Option)
        {
            Caption = 'Department';
            OptionMembers = EC,IT,CS;
        }
        field(5; Gender; Enum GenderEnum)
        {
            Caption = 'Gender';
        }
        field(6; Salary; Decimal)
        {
            Caption = 'Salary';
            DecimalPlaces = 0 : 5;
            trigger OnValidate()
            begin
                Salary := System.Round(Salary, 0.01, '=');
                // Salary := NewNumber;
            end;
        }
        field(7; "Average Sales"; Decimal)
        {
            Caption = 'Average Sales';
            FieldClass = FlowField;
            CalcFormula = average("Cust. Ledger Entry"."Sales (LCY)" where("Customer No." = field(ID)));
            AutoFormatType = 10;
            AutoFormatExpression = '1,USD';
        }
        field(8; "Work from home"; Boolean)
        {
            Caption = 'Work from home';
        }
        field(9; "Profile Pic"; Media)
        {
            Caption = 'Profile Picture';
        }
        field(10;"Mobile No.";Text[20]){
            Numeric = true;
            trigger OnValidate()
            begin
                if StrLen("Mobile No.") <> 10 then
                Error('Enter 10 Digits');
            end;
        }
        field(11;"Company pic";Media){

        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(Brick;"Profile Pic",ID,Name,Department){

        }
    }
}
