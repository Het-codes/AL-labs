table 50101 Course
{
    DataClassification = ToBeClassified;
    LookupPageId = "Course list";
    DrillDownPageId = "Course Card";

    fields
    {
        field(10; code; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(20; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            var
                myInt: Integer;
            begin
                Message('hi');
            end;
        }
        field(30; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(40; Type; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Insrutor led","e-learning","Remote training";
        }
        field(50; Duration; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60; Price; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(80; Difficulty; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(90; "Passing rate"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(100; "Instructor code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource where(Type = const(Person));
        }
        field(120; "Instructor name"; Text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor code")));
        }
    }

    keys
    {
        key(pk1; code)
        {
            Clustered = true;
        }
        key(sk1; "instructor code")
        {

        }
        key(sk2; Type)
        {

        }
    }
    trigger OnDelete()
    var
        myInt: Integer;
    begin
        Message('Why did u destroy me');
    end;

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        Message('Thanks for adding me');
    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin
        Message('Dont change me');
    end;

    trigger OnRename()
    var
        myInt: Integer;
    begin
        Message('My');
    end;


}