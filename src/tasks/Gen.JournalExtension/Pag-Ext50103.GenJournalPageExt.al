pageextension 50103 "Gen.JournalPageExt" extends "General Journal"
{
    layout
    {
        addafter("Document Type")
        {
            field("Traction_Type"; Rec."Transaction_Type")
            {
                Editable = Rec."Document Type" = Rec."Document Type"::Payment;
            }
        }
    }
}
