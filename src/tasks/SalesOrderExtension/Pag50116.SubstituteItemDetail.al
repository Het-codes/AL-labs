page 50116 "Substitute Item Detail"
{
    ApplicationArea = All;
    Caption = 'Substitute Item Detail';
    PageType = ListPart;
    SourceTable = "Item Substitution";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Substitute Type"; Rec."Substitute Type")
                {
                    ToolTip = 'Specifies the type of the item that can be used as a substitute.';
                }
                field("Substitute No."; Rec."Substitute No.")
                {
                    ToolTip = 'Specifies the number of the item that can be used as a substitute in case the original item is unavailable.';
                }
                field("Quantity on hand"; Quantity.Inventory)
                {
                    ToolTip = 'Specifies the quantity of the item availaible';
                }
            }
        }
    }
    var
        Quantity: Record Item;

    trigger OnAfterGetRecord()
    begin
        Quantity.Get(Rec."Substitute No.");
        Quantity.CalcFields(Inventory);
        end;

}
