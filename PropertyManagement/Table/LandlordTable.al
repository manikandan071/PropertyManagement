table 50300 "Landlord Table"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; LLNumber; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Landlord No';
            trigger OnValidate()
            begin
                if LLNumber <> xRec.LLNumber then begin
                    NoSeriesMgt.TestManual('LANDLORD');
                    "LL No Series" := '';
                end;
            end;
        }
        field(2; LLName; text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(3; LLAddress; code[40])
        {
            DataClassification = ToBeClassified;

        }
        field(4; LLPincode; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(5; LLPhoneNumber; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(6; LLEmail; Code[40])
        {
            DataClassification = ToBeClassified;

        }
        field(7; LLPaymentsTerms; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "","Day","Weekly","Monthly","Yearly";

        }
        field(8; LLTax; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(9; LLComments; Code[100])
        {
            DataClassification = ToBeClassified;

        }
        field(10; "LL No Series"; code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; LLNumber)
        {
            Clustered = true;
        }
        key(Key2; LLName)
        {

        }
    }
    fieldgroups
    {
        fieldgroup(Dropdown; LLNumber, LLName, LLPaymentsTerms)
        {

        }
        fieldgroup(Brick; LLNumber, LLName, LLPaymentsTerms)
        {

        }
    }

    var
        myInt: Integer;
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        IF LLNumber = '' then
            NoSeriesMgt.InitSeries('LANDLORD', xRec."LL No Series", 0D, LLNumber, "LL No Series");
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}