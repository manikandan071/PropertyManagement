table 50303 "Order Line Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Property No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Property Table";
        }
        field(3; "Property Description"; Text[30])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Property Table"."Property Description" where("Property Number" = field("Property No.")));
        }
        field(4; "Property Owner"; Text[30])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Property Table"."Property Owner" where("Property Number" = field("Property No.")));
        }
        field(5; "Property Address"; Text[30])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Property Table"."Property Address" where("Property Number" = field("Property No.")));
        }
        field(6; "Property price"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Property Table"."Property Price" where("Property Number" = field("Property No.")));
        }
        field(7; "Order From Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Order to Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Total Hours"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                "Total Hours" := "Order to Date1" - "Order From Date1";
            end;
        }
        field(10; "Total Hours1"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Order From Date1"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Order to Date1"; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                "Total Hours1" := "Order to Date1" - "Order From Date1";
                "Total Amount" := "Total Hours1" * "Property price";
            end;
        }
        field(13; "Total Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Line NO."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(15; CustomerName; Code[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        // field(5;"Property Type"; Option)
        // {
        //    FieldClass = FlowField;
        //    CalcFormula = lookup("Property Table"."Property Type" where("Property Number" = field("Property No.")));
        // }

    }

    keys
    {
        key(Key1; "Document No.")
        {
            Clustered = true;
        }
        key(Key2; "Line NO.")
        {
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        "Total Hours1" := "Order to Date1" - "Order From Date1";
        "Total Amount" := "Total Hours1" * "Property price";
    end;

    trigger OnModify()
    begin
        "Total Hours1" := "Order to Date1" - "Order From Date1";
        "Total Amount" := "Total Hours1" * "Property price";
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}