page 50303 "Property List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Property Table";
    Caption = 'Properties List';
    CardPageId = "Property Card Page";
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Property Number"; Rec."Property Number")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }
                field("Property Description"; Rec."Property Description")
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
                field("Property Address"; Rec."Property Address")
                {
                    ApplicationArea = All;
                    Caption = 'Address';
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
                field("Property Owner"; Rec."Property Owner")
                {
                    ApplicationArea = All;
                    Caption = 'Owner';
                }
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