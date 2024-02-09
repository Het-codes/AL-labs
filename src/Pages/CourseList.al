page 50108 "Course list"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Course;
    Caption = 'Course list';
    Editable = false;
    CardPageId = "Course Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(code; Rec.code)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}