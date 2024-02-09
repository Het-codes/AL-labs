pageextension 50123 MyExtension extends "Customer List"
{
    trigger OnOpenPage();
    begin
        report.Run(Report::LAB_CustomerList);
    end;
}
