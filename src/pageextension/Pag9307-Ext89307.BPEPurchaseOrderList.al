pageextension 89307 "BPEPurchaseOrderList" extends "Purchase Order List" //9307
{
    layout
    {
        addafter("No.")
        {
            field("BPE Purchase Request"; "BPE Purchase Request")
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
    }
    trigger OnOpenPage()
    begin
        FilterGroup(2);
        SetRange("BPE Purchase Request", PurchaseRequest);
        FilterGroup(0);
        if PurchaseRequest then
            CurrPage.Caption('Purchase Request List');
    end;

    //#region SetPurchaseRequest
    procedure SetPurchaseRequest(EnablePurchaseRequest: Boolean);
    begin
        PurchaseRequest := EnablePurchaseRequest;
    end;
    //#endregion SetPurchaseRequest
    var
        PurchaseRequest: Boolean;
}