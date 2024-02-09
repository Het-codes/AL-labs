tableextension 50101 "Gen.JournalExtension" extends "Gen. Journal Line"
{
    fields
    {
        modify("Document Type")
        {
            trigger OnAfterValidate()
                begin
                    if Rec."Document Type" <> Rec."Document Type"::Payment then begin
                        // Editable := false;
                        Rec.Transaction_Type := Rec.Transaction_Type::" ";  
                    end;
                end;
        }
        field(50100; "Transaction_Type";Enum "Transaction_Type")
        {
            Caption = 'Transaction Type';
            DataClassification = ToBeClassified;
        }
    }
}
