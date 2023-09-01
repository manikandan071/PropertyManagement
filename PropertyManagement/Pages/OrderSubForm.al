page 50306 "Order SubForm Page"
{
    PageType = ListPart;
    ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = "Order Line Table";
    Caption = 'Order Line';
    AutoSplitKey = true;
    //MultipleNewLines = true;
    // DelayedInsert = true;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Property No."; Rec."Property No.")
                {
                    ApplicationArea = All;
                    // trigger OnValidate()
                    // begin
                    //     PriceCalculation()
                    // end;
                }
                field(CustomerName; Rec.CustomerName)
                {
                    ApplicationArea = All;
                }
                field("Property Description"; Rec."Property Description")
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    Editable = false;
                }
                field("Property Address"; Rec."Property Address")
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                    Editable = false;
                }
                field("Property Owner"; Rec."Property Owner")
                {
                    ApplicationArea = All;
                    Caption = 'Owner';
                    Editable = false;
                }
                field("Property price"; Rec."Property price")
                {
                    ApplicationArea = All;
                    Caption = 'Actual price / Day';
                    Editable = false;
                }
                field("Order From Date"; Rec."Order From Date1")
                {
                    ApplicationArea = All;
                    Caption = 'From Date';
                }
                field("Order to Date"; Rec."Order to Date1")
                {
                    ApplicationArea = All;
                    Caption = 'To Date';
                    // trigger OnValidate()
                    // begin
                    //     PriceCalculation()
                    // end;
                }
                field("Total Hours1"; Rec."Total Hours1")
                {
                    ApplicationArea = All;
                    Caption = 'Total Days';
                    Editable = false;
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Total Amount';
                    Editable = false;
                }
                field("Line NO."; Rec."Line NO.")
                {
                    ApplicationArea = All;
                    Caption = 'Line No';
                    Editable = false;
                }
            }
        }
        // area(Factboxes)
        // {

        // }
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
    // procedure PriceCalculation()
    // begin
    //     Rec."Total Hours1" := Rec."Order to Date1" - Rec."Order From Date1";
    //     Rec."Total Amount" := Rec."Total Hours1" * Rec."Property price";
    // end;
}