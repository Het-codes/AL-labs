page 50110 "Emp List Factbox"
{
    ApplicationArea = All;
    Caption = 'Emp List Factbox';
    PageType = CardPart;
    SourceTable = Customer;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the customer''s name.';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the customer''s address. This address will appear on all sales documents for the customer.';
                }
                group("Payment Details")
                {
                    field("Currency Code"; Rec."Currency Code")
                    {
                        ToolTip = 'Specifies the default currency for the customer.';
                    }
                    field("Language Code"; Rec."Language Code")
                    {
                        ToolTip = 'Specifies the language to be used on printouts for this customer.';
                    }
                    field(Amount; Rec.Amount)
                    {
                        ToolTip = 'Specifies the value of the Amount field.';
                    }
                    field("Last Modified Date Time"; Rec."Last Modified Date Time")
                    {
                        ToolTip = 'Specifies the value of the Last Modified Date Time field.';
                    }
                    field(Balance; Rec.Balance)
                    {
                        ToolTip = 'Specifies the value of the Balance field.';
                    }
                    field(Payments; Rec.Payments)
                    {
                        ToolTip = 'Specifies the value of the Payments field.';
                    }
                }
                cuegroup(this){
                    field(Name1;Rec.Name){
                        ApplicationArea = all;
                    }
                }
                // grid(this){
                //     field(namee;Rec.Name){
                //         ApplicationArea = all;
                //     }
                // }
            }
        }
    }
}
