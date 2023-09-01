tableextension 50302 "Customer Table Extension" extends Customer
{
    fields
    {
        field(50300; "Customer Type"; Option)
        {
            Caption = 'Customer Type';
            DataClassification = ToBeClassified;
            OptionMembers = "","Normal","Landlord";
        }
    }
}
