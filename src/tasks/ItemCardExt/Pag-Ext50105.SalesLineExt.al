pageextension 50105 SalesLineExt extends "Sales Order Subform"
{
    layout
    {
        
        addafter(Description)
        {
            field("Bin Ref."; Rec."Bin Reference")
            {
                ApplicationArea = All;

            }
        }
    }
    // var
    //     Bin: Record Item;

    // trigger OnAfterGetRecord()
    // begin
    //     Bin.Get(Rec."No.");
    // end;
}
