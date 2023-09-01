page 50301 "Landlord List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Landlord Table";
    Caption = 'Landlord List';
    CardPageId = "Landlord Card Page";
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(LLNumber; Rec.LLNumber)
                {
                    ApplicationArea = All;
                    Caption = 'LL NO.';
                }
                field(LLName; Rec.LLName)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
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