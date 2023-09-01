page 50300 "Landlord Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Landlord Table";
    Caption = 'Landlord Card';
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(LLNumber; Rec.LLNumber)
                {
                    ApplicationArea = All;
                    Caption = 'LL NO.';
                    Editable = false;
                }
                field(LLName; Rec.LLName)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(LLAddress; Rec.LLAddress)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
                field(LLPincode; Rec.LLPincode)
                {
                    ApplicationArea = All;
                    Caption = 'Pincode';
                }
                field(LLPhoneNumber; Rec.LLPhoneNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Phone';
                }
                field(LLEmail; Rec.LLEmail)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }
                field(LLComments; Rec.LLComments)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                }
            }
            group(Payment)
            {
                field(LLPaymentsTerms; Rec.LLPaymentsTerms)
                {
                    ApplicationArea = All;
                    Caption = 'Payment Terms';
                }
                field(LLTax; Rec.LLTax)
                {
                    ApplicationArea = All;
                    Caption = 'Tax';
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