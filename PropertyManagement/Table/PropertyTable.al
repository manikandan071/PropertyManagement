table 50301 "Property Table"
{
    DataClassification = ToBeClassified;
    DataPerCompany = true;
    fields
    {
        field(1; "Property Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Property No';
            trigger OnValidate()
            begin
                if "Property Number" <> xRec."Property Number" then begin
                    NoSeriesMgt.TestManual('PROPERTIES');
                    "Property No Series" := '';
                end;
            end;
        }
        field(2; "Property Description"; text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Property Address"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Property Pincode"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Property Owner"; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Landlord Table";
        }
        field(6; "Property Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "","1BHK","2BHK","3BHK","Party Hall","reception Hall";
        }
        field(7; "Property Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Per hours';
        }
        field(8; "Property No Series"; code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Property Number")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        NoSeriesMgt.InitSeries('PROPERTIES', xRec."Property No Series", 0D, "Property Number", "Property No Series");
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