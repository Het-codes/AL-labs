page 50102 "Emp List"
{
    ApplicationArea = All;
    Caption = 'Emp List';
    PageType = List;
    SourceTable = EmpTable;
    UsageCategory = Lists;
    CardPageId = "Emp Information";
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    TableRelation = EmpTable;
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field("Date of birth"; Rec."Date of birth")
                {
                    ToolTip = 'Specifies the value of the Date of birth field.';
                }
                field(Department; Rec.Department)
                {
                    ToolTip = 'Specifies the value of the Department field.';
                }
                field("Work from home"; Rec."Work from home")
                {
                    ToolTip = 'Specifies the value of the Work from home field.';
                }
                field("Average Sales"; Rec."Average Sales")
                {
                    ToolTip = 'Specifies the value of the Average Sales field.';
                }
                field(Salary; Rec.Salary)
                {
                    ToolTip = 'Specifies the value of the Salary field.';
                }
                field("Mobile No.";Rec."Mobile No."){
                    
                }
            }
        }
        area(FactBoxes){
            part(Details;"Emp List Factbox"){
                ApplicationArea = all;
                SubPageLink = "No." = field(ID);
            }
        }
    }
}
