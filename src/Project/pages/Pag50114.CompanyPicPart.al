page 50114 "Company Pic Part"
{
    ApplicationArea = All;
    Caption = 'Company Pic Part';
    PageType = CardPart;
    SourceTable = EmpTable;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Company pic"; Rec."Company pic")
                {
                    ToolTip = 'Specifies the value of the Company pic field.';
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
                        Rec."Company pic".ImportStream(PicInStream,FileName);
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
                    if Rec."Company pic".HasValue then
                    Clear(Rec."Company pic");
                    Rec.Modify(true);
                    Message('Deleted');
                end;
            }   
        }
    }
}
