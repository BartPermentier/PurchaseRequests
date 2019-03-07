pageextension 89063 "BPEPurchaseAgentActivities" extends "Purchase Agent Activities" //9063
{
    layout
    {
        addafter("Upcoming Orders")
        {
            field("BPE Purchase Requests"; "BPE Purchase Requests")
            {
                ApplicationArea = All;
                DrillDownPageId = "Purchase Order List"; //This is needed or it wont show up in the Navigation Pane
                trigger OnDrillDown()
                var
                    PurchaseOrderList: Page "Purchase Order List";
                begin
                    PurchaseOrderList.SetPurchaseRequest(true);
                    PurchaseOrderList.Run();
                end;
            }
        }
    }

    actions
    {
    }
}