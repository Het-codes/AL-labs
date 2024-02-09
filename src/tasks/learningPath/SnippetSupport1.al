interface IAddressProvider
{
    procedure GetAddress(): Text;
}

codeunit 50201 CompanyAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('Company address \ Denmark 2800')
    end;
}

codeunit 50202 PrivateAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('My Home address \ Denmark 2800')
    end;
}

enum 50203 SendTo
{
    Extensible = true;

    value(0; Company)
    {
    }

    value(1; Private)
    {
    }
}