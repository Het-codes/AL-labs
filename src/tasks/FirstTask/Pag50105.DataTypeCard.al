page 50105 DataTypeCard
{
    ApplicationArea = All;
    Caption = 'DataTypeCard';
    PageType = Card;
    SourceTable = DataTypeTable;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field(WorkHours; Rec.WorkHours)
                {
                    ToolTip = 'Specifies the value of the WorkHours field.';
                }
                field("Work from home"; Rec."Work from home")
                {
                    ToolTip = 'Specifies the value of the Work from home field.';
                }
                field(Salary; Rec.Salary)
                {
                    ToolTip = 'Specifies the value of the Salary field.';
                }
                field("Profil pic"; Rec."Profil pic")
                {
                    ToolTip = 'Specifies the value of the Profil pic field.';
                }
                field(ExitTime; Rec.ExitTime)
                {
                    ToolTip = 'Specifies the value of the ExitTime field.';
                }
                field(EntryTime; Rec.EntryTime)
                {
                    ToolTip = 'Specifies the value of the EntryTime field.';
                }
                field(Department; Rec.Department)
                {
                    ToolTip = 'Specifies the value of the Department field.';
                }
                field(CountDown; Rec.CountDown)
                {
                    ToolTip = 'Specifies the value of the CountDown field.';
                }

                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the CelebrationPhotos field.';
                }
                field(Post; Rec.Post)
                {
                    ToolTip = 'Specifies the value of the Post field.';
                }
                field(UniqueId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
            }
        }
        area(FactBoxes)
        {
            part("Background Image"; MediaCardPart)
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
            part("CelebrationPhotos"; MediaSetCardPart)
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
    actions
    {
        area(Creation)
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
                        Rec.BackgroundImage.ImportStream(PicInStream,FileName);
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
                    if Rec.BackgroundImage.HasValue then
                    Clear(Rec.BackgroundImage);
                    Rec.Modify(true);
                    Message('Deleted');
                end;
            }   
        }
    }
}
