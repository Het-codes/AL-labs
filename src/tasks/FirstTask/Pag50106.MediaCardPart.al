page 50106 MediaCardPart
{
    ApplicationArea = All;
    Caption = 'MediaCardPart';
    PageType = CardPart;
    SourceTable = DataTypeTable;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(BackgroundImage; Rec.BackgroundImage)
                {
                    ToolTip = 'Specifies the value of the BackgroundImage field.';
                }
            }
        }
    }
}
