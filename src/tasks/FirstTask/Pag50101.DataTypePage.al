page 50112 DataTypePage
{
    ApplicationArea = All;
    Caption = 'DataTypePage';
    PageType = List;
    SourceTable = DataTypeTable;
    UsageCategory = Lists;
    CardPageId = DataTypeCard;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Post; Rec.Post)
                {
                    ToolTip = 'Specifies the value of the Post field.';
                }
                field(Department; Rec.Department)
                {
                    ToolTip = 'Specifies the value of the Department field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field(Salary; Rec.Salary)
                {
                    ToolTip = 'Specifies the value of the Salary field.';
                }
                field(EntryTime; Rec.EntryTime)
                {
                    ToolTip = 'Specifies the value of the EntryTime field.';
                }
                field(ExitTime; Rec.ExitTime)
                {
                    ToolTip = 'Specifies the value of the ExitTime field.';
                }
                field(CountDown; Rec.CountDown)
                {
                    ToolTip = 'Specifies the value of the CountDown field.';
                }
                // field(BackgroundImage; Rec.BackgroundImage)
                // {
                //     ToolTip = 'Specifies the value of the BackgroundImage field.';
                // }
                field("Profil pic"; Rec."Profil pic")
                {
                    ToolTip = 'Specifies the value of the Profil pic field.';
                }
                // field(CelebrationPhotos; Rec.CelebrationPhotos)
                // {
                //     ToolTip = 'Specifies the value of the CelebrationPhotos field.';
                // }
                field(WorkHours; Rec.WorkHours)
                {
                    ToolTip = 'Specifies the value of the WorkHours field.';
                }
                field("Work from home"; Rec."Work from home")
                {
                    ToolTip = 'Specifies the value of the Work from home field.';
                }
                field(Age; Rec.Age)
                {
                    // DrillDownPageId = EmpList;
                }
            }
        }
    }
}
