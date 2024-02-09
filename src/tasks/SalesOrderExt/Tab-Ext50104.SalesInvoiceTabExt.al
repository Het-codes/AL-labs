tableextension 50104 SalesInvoiceTabExt extends "Sales Invoice Header"
{
    fields
    {
        field(50100; Demo; Text[50])
        {
            Caption = 'Demo';
            DataClassification = ToBeClassified;
        }
    }
}
