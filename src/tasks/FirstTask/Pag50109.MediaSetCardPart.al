page 50109 MediaSetCardPart
{
    ApplicationArea = All;
    Caption = 'MediaSetCardPart';
    PageType = CardPart;
    SourceTable = DataTypeTable;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(CelebrationPhotos; Rec.CelebrationPhotos)
                {
                    ToolTip = 'Specifies the value of the CelebrationPhotos field.';
                }
            }
        }
    }
}
