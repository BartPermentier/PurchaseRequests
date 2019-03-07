tableextension 89055 "BPEPurchaseCue" extends "Purchase Cue" //9055
{
    fields
    {
        field(80000; "BPE Purchase Requests"; Integer)
        {
            Caption = 'Purchase Requests';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count ("Purchase Header" where ("BPE Purchase Request" = const (true), "Document Type" = const (Order)));
        }

    }

}
