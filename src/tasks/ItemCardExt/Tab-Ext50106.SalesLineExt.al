tableextension 50106 "Sales Line Ext" extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item_LRec: Record Item;
            begin
                Item_LRec.Get("No.");
                "Bin Reference" := Item_LRec."Bin Reference";
            end;
        }
        field(50100; "Bin Reference"; Text[50])
        {
            Caption = 'Bin Reference';
            DataClassification = ToBeClassified;
        }
    }
}
