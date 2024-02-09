enum 50102 "Transaction_Type"
{
    Extensible = true;
    
    value(0;" ")
    {
        Caption = ' ';
    }
    value(1; Cost)
    {
        Caption = 'Cost';
    }
    value(2; "Project contract")
    {
        Caption = 'Project contract';
    }
    value(3; Unbuild)
    {
        Caption = 'Unbuild';
    }
    value(4; Build)
    {
        Caption = 'Build';
    }
    value(5; Blank)
    {
        Caption = 'Blank';
    }
}
