table 50102 EmployeeTable
{
    Caption = 'EmpTable';
    DataClassification = ToBeClassified;
    // ObsoleteState = Pending;
    // ObsoleteReason ='For better UI';
    DrillDownPageId = DataTypePage;

    fields
    {
        field(4; ID; Code[50])
        {
            Caption = 'ID';
            TableRelation = Customer;
            //TestTableRelation = false;
        }
        field(1; Name; Text[100])
        {
            Caption = 'Name', Comment = 'name is here', Locked = false, MaxLength = 5;
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field(ID)));
        }
        field(2; TotalSales; Integer)
        {
            Caption = 'Total Sales';
            FieldClass = FlowField;
            CalcFormula = count("Cust. Ledger Entry" where("Customer No." = field(ID)));
            // ObsoleteState = Pending;
            // ObsoleteReason = 'For better UI';
        }
        field(3; Salary; Decimal)
        {
            Caption = 'Salary';
            FieldClass = FlowField;
            CalcFormula = average("Cust. Ledger Entry"."Sales (LCY)" where("Customer No." = field(ID)));
        }

        field(5; Workfromhome; Boolean)
        {
            Caption = 'Work from home';
            FieldClass = FlowField;
            CalcFormula = exist("Cust. Ledger Entry" where("Customer No." = field(ID)));
        }
        field(6; SalesDelay; Decimal)
        {
            Caption = 'Sales Delay';
            FieldClass = FlowField;
            CalcFormula = sum("Cust. Ledger Entry"."Sales (LCY)" where("Customer No." = field(ID)));
        }
        field(7; BestSale; Decimal)
        {
            Caption = 'Best sale value';
            FieldClass = FlowField;
            CalcFormula = max("Cust. Ledger Entry"."Sales (LCY)" where("Customer No." = field(ID)));
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}