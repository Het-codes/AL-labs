table 50103 DataTypeTable
{
    Caption = 'DataTypeTable';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Salary; Decimal)
        {
            Caption = 'Salary';
            AutoFormatType = 10;
            AutoFormatExpression = '1,USD';
            //BlankZero = true;
            //DecimalPlaces = 0:3;
            //MinValue = 10;
            // Width = 50;
        }
        field(4; Department; Option)
        {
            Caption = 'Department';
            OptionMembers = HR,Technical,Functional;
        }
        field(5; "Work from home"; Boolean)
        {
            Caption = 'Work from home';
            Width = 100;
        }
        field(6; "Profil pic"; Blob)
        {
            Caption = 'Profil pic';
            Subtype = Bitmap;
        }
        field(7; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }
        field(8; CountDown; DateFormula)
        {
            Caption = 'CountDown';
        }
        field(9; "EntryTime"; DateTime)
        {
            Caption = 'EntryTime';
        }
        field(10; WorkHours; Duration)
        {
            Caption = 'WorkHours';
        }
        field(11; Post; Enum PostEnum)
        {
            Caption = 'Post';
        }
        field(12; ExitTime; Time)
        {
            Caption = 'ExitTime';
        }
        field(13; BackgroundImage; Media)
        {
            Caption = 'BackgroundImage';
            ExtendedDatatype = Person;
        }
        field(14; CelebrationPhotos; MediaSet)
        {
            Caption = 'CelebrationPhotos';
        }
        field(15; Age; Integer)
        {
            Caption = 'age';
            // FieldClass = FlowField;
            // CalcFormula = sum(Vendor."Inv. Amounts (LCY)");
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    var
    due : Duration;
}
