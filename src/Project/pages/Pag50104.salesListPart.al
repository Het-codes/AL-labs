page 50104 "sales ListPart"
{
    ApplicationArea = All;
    Caption = 'sales ListPart';
    PageType = ListPart;
    SourceTable = Customer;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the customer''s name.';
                }
                field("Sales (LCY)"; Rec."Sales (LCY)")
                {
                    ToolTip = 'Specifies the total net amount of sales to the customer.';
                }
                field("Profit (LCY)"; Rec."Profit (LCY)")
                {
                    ToolTip = 'Specifies the value of the Profit (LCY) field.';
                }
            }
        }
    }
}
