page 50304 "Landlord Order Page"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Order Header Table";
    Caption = 'Landlord Order';
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Order No."; Rec."Order No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Customer Address"; Rec."Customer Address")
                {
                    ApplicationArea = All;
                }
                field("Customer City"; Rec."Customer City")
                {
                    ApplicationArea = All;
                }
                field("Customer Phone"; Rec."Customer Phone")
                {
                    ApplicationArea = All;
                }
                field("Customer Mail"; Rec."Customer Mail")
                {
                    ApplicationArea = All;
                }
            }
            part(OrderLine; "Order SubForm Page")
            {
                ApplicationArea = All;
                // Editable = IsSalesLinesEditable;
                // Enabled = IsSalesLinesEditable;
                // SubPageLink = "Document No." = field("Order No.");
                SubPageLink = CustomerName = field("Customer No.");
                // UpdatePropagation = Both;
            }
        }
        area(Factboxes)
        {

        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction();
    //             begin

    //             end;
    //         }
    //     }
    // }
}