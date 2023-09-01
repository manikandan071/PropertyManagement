table 50302 "Order Header Table"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Order No';
            trigger OnValidate()
            begin
                if "Order No." <> xRec."Order No." then begin
                    NoSeriesMgt.TestManual('LLORDER');
                    "Order No Series" := '';
                end;
            end;
        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;//where("Customer Type" = const("Landlord"));
        }
        field(3; "Customer Name"; Code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No.")));
        }
        field(4; "Customer Address"; Code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Address where("No." = field("Customer No.")));
        }
        field(5; "Customer Phone"; Code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer."Phone No." where("No." = field("Customer No.")));
        }
        field(6; "Customer City"; Code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.City where("No." = field("Customer No.")));
        }
        field(7; "Customer Mail"; Code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer."E-Mail" where("No." = field("Customer No.")));
        }
        field(10; "Order No Series"; code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "No. Series";
        }
        field(11; "OrderID"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            AutoIncrement = true;
        }
    }

    keys
    {
        key(Key1; "Order No.")
        {
            Clustered = true;
        }
        key(Key2; "OrderID")
        {
        }
    }

    var
        myInt: Integer;
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        IF "Order No." = '' then
            //NoSeriesMgt.InitSeries('LLORDER', xRec."Order No Series", 0D, "Order No.", "Order No Series");
            Message('');
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