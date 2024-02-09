page 50101 PictureCardPart
{
    ApplicationArea = All;
    Caption = 'PictureCardPart';
    PageType = CardPart;
    SourceTable = EmpTable;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Profile Pic"; Rec."Profile Pic")
                {
                    ToolTip = 'Specifies the value of the Profile Picture field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
            }
        }
    }
}
