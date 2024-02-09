table 50105 POPup
{
    Caption = 'POPup';
    DataClassification = ToBeClassified;
    LookupPageId = PopUP;
    
    fields
    {
        field(4;ID;code[20]){

        }
        field(1; Picture; Media)
        {
            Caption = 'Picture';
        }
        field(2; name; Text[50])
        {
            Caption = 'name';
        }
        field(3; Age; Integer)
        {
            Caption = 'Age';
            
        }
    }
    keys
    {
        key(PK; ID,name)
        {
            Clustered = true;
        }
    }
    fieldgroups{
        fieldgroup(Brick;ID,name,Picture){

        }
    }
}
