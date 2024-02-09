page 50103 "Emp Information"
{
    ApplicationArea = All;
    Caption = 'Emp Information';
    PageType = Document;
    SourceTable = EmpTable;

    layout
    {
        area(content)
        {
            group("Personal Details")
            {
                Caption = 'General';

                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    Style = StrongAccent;
                    Importance = Promoted;
                }
                field("Date of birth"; Rec."Date of birth")
                {
                    ToolTip = 'Specifies the value of the Date of birth field.';
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field("Mobile No."; Rec."Mobile No.")
                {
                }
            }
            part("Sales Details"; "sales ListPart")
            {
                ApplicationArea = all;
                SubPageLink = "No." = field(ID);
            }
            group("Work Details")
            {
                field(Department; Rec.Department)
                {
                    ToolTip = 'Specifies the value of the Department field.';
                }
                field(Salary; Rec.Salary)
                {
                    ToolTip = 'Specifies the value of the Salary field.';
                }
                field("Average Sales"; Rec."Average Sales")
                {
                    ToolTip = 'Specifies the value of the Average Sales field.';
                }
                field("Work from home"; Rec."Work from home")
                {
                    ToolTip = 'Specifies the value of the Work from home field.';
                }
            }
        }
        area(FactBoxes)
        {
            part("Company picture"; "Company Pic Part")
            {
                ApplicationArea = all;
            }
        }
    }
}
