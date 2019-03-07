pageextension 80050 "BPEPurchaseOrder" extends "Purchase Order" //50
{
    layout
    {

    }

    actions
    {
    }
    trigger OnOpenPage()
    begin
        FilterGroup(2);
        if GetFilter("BPE Purchase Request") <> '' then
            Evaluate(PurchaseRequest, GetFilter("BPE Purchase Request"));
        FilterGroup(0);
        if PurchaseRequest then
            CurrPage.Caption('Purchase Request');
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        //you'll get the message "view is filtered etc etc. without this part"
        "BPE Purchase Request" := PurchaseRequest;
    end;

    var
        PurchaseRequest: Boolean;
}