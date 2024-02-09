pageextension 50101 PurchaseFactbox extends "Purchase Line FactBox"
{
    layout
    {
        addbefore(Attachments)
        {
            field("Standard Cost"; v."Standard Cost")
            {
                ApplicationArea = All;
                DrillDownPageId = "Item Card";
            }
            field("Unit Cost"; v."Unit Cost")
            {
                ApplicationArea = All;
                DrillDownPageId = "Item Card";
            }
        }
    }
    var
        v: Record Item;

    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        v.Get(Rec."No.");
        // if Rec."No." = v."No." then
        //     Rec."Standard Cost" := v."Standard Cost";
    end;
}
