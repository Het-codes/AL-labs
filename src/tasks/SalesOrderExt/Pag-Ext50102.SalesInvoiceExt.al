pageextension 50102 SalesInvoiceExt extends "Posted Sales Invoice"
{
    layout
    {
        addlast(General)
        {
            field("Contact No.";Rec.Demo)
            {
                Editable = false;
            }
        }
    }
}
