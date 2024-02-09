page 50111 EmployeeList
{
    ApplicationArea = All;
    Caption = 'EmployeeList';
    // CaptionML = ENU = 'EmployeeList' , FRA = 'liste d employés';
    PageType = List;
    SourceTable = EmployeeTable;
    UsageCategory = Lists;
    ContextSensitiveHelpPage = 'sales-rewards';
    // PromotedActionCategories = 'New, Process, Report, promoted',Locked = true, Comment = 'do not translate',MaxLength = 200;
    PromotedActionCategoriesML = ENU = 'New, Process, Report, promoted' , FRA = 'Nouveau,Processus,Report,promu';
    RefreshOnActivate = true;

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
                }
                field(BestSale; Rec.BestSale)
                {
                    ToolTip = 'Specifies the value of the Sales field.';
                }
                field(TotalSales; Rec.TotalSales)
                {
                    ToolTip = 'Specifies the value of the DOB field.';
                }
                field(Workfromhome; Rec.Workfromhome)
                {
                    ToolTip = 'Specifies the value of the Department field.';
                }
                field(SalesDelay; Rec.SalesDelay)
                {
                    ToolTip = 'Specifies the value of the Hobby field.';
                }
                field(Salary; Rec.Salary)
                {
                    ToolTip = 'Specifies the value of the Salary field.';
                    
                }
            }
        }
    }
    actions{
        area(Creation){
            action(Action){
                Promoted = true;
                PromotedCategory = Category4;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    
                end;
            }
        }
    }
}
// "contextSensitiveHelpUrl": "https://mysite.com/documentation/",
  // "contextSensitiveHelpUrl": "https://mysite.com/{0}/documentation/",
  // "supportedLocales": [
  //   "en-GB", "en-IE
  // ],