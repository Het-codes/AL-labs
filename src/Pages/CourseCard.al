page 50107 "Course Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Course;
    Caption = 'Course list';


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(code; Rec.code)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    TableRelation = Course;
                    // trigger OnLookup()
                    // begin
                    //     Message('validated');
                    // end;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;

                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;

                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;

                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;

                }
                field("Instructor code"; Rec."Instructor code")
                {
                    ApplicationArea = All;

                }
                field("Instructor name"; Rec."Instructor name")
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
            action("Resource card")
            {
                ApplicationArea = All;
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }

    var
        myInt: Integer;
}