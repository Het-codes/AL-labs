page 50115 PopUP
{
    ApplicationArea = All;
    Caption = 'PopUP';
    PageType = List;
    SourceTable = POPup;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Picture; Rec.Picture)
                {
                    ToolTip = 'Specifies the value of the Picture field.';
                }
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(name; Rec.name)
                {
                    ToolTip = 'Specifies the value of the name field.';
                }
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(upload)
            {
                ApplicationArea = All;
                Image = Import;
                trigger OnAction()
                var
                    PicInStream: InStream;
                    FileName: Text;
                begin
                    if UploadIntoStream('Import Pic','','All Files (*.*)|*.*',FileName,PicInStream) then
                        Rec.Picture.ImportStream(PicInStream,FileName);
                        Rec.Modify(true);
                        Message('Done');
                end;
            }
            action(delete)
            {
                ApplicationArea = All;
                Image = Import;
                trigger OnAction()
                var
                    // PicInStream: InStream;
                    // FileName: Text;
                begin
                    if Rec.Picture.HasValue then
                    Clear(Rec.Picture);
                    Rec.Modify(true);
                    Message('Deleted');
                end;
            }   
        }
    }
}
