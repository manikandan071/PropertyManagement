page 50302 "Property Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Property Table";
    Caption = 'Property Card';
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Property Number"; Rec."Property Number")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'No.';
                }
                field("Property Description"; Rec."Property Description")
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
                field("Property Owner"; Rec."Property Owner")
                {
                    ApplicationArea = All;
                    Caption = 'Owner';
                }
                field("Property Address"; Rec."Property Address")
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
                field("Property Pincode"; Rec."Property Pincode")
                {
                    ApplicationArea = All;
                    Caption = 'Pincode';
                }
                field("Property Type"; Rec."Property Type")
                {
                    ApplicationArea = All;
                    Caption = 'Type';
                }
                field("Property Price"; Rec."Property Price")
                {
                    ApplicationArea = All;
                    Caption = 'Price';
                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    var
        myInt: Integer;
}