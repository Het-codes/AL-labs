pageextension 50106 ContactCardExt extends "Contact Card"
{
    layout
    {
        modify(Name)
        {
            Editable = false;
        }
        addafter("No.")
        {
            field(First_Name;Rec."First Name")
            {

            }
            field(Last_Name;Rec.Surname)
            {

            }
        }
    }
}
