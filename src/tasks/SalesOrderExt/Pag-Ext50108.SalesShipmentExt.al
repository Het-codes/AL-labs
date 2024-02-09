pageextension 50108 SalesShipmentExt extends "Posted Sales Shipment"
{
    layout
    {
        addlast(General)
        {
            field(Demo;Rec.Demo)
            {
             Editable = false;   
            }
        }
    }
}
