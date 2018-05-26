codeunit 70009249 "O4N GL Test Codeunits"
{

    // {
    //   "name": "G/L Source Names",
    //   "publisher": "Objects4NAV",
    //   "version": "2.0.1.2",
    //   "appId": "479e77f3-031a-49fe-bb6a-314464c6a9a8"
    // }

    // [FEATURE] [G/L Source Names Lookup]
    Subtype = Test;

    var
        Assert: Codeunit Assert;
        
    [Test]
    procedure TestAssistedSetup()
    var
        AssistedSetup: TestPage "O4N GL SN Setup Wizard";
    begin
        // [SCENARIO] User presses Update G/L Source Names in assisted setup
        // [GIVEN] An empty lookup table
        Initialize();
        // [WHEN] User presses the action to update the lookup table
        AssistedSetup.ActionUpdateSourceLookup.Invoke();
        // [THEN] G/L Source Name Lookup should have 4 records
        TestLookupNoOfRecords(4);
    end;
    local procedure Initialize()
    var
        GLSourceName: record "O4N GL SN";
        GLAcc: Record "G/L Account";
        Cust: record Customer;
        Vend: record Vendor;
        BankAcc: record "Bank Account";
    begin
        GLAcc.DeleteAll();
        Cust.DeleteAll();
        Vend.DeleteAll();
        BankAcc.DeleteAll();
        GLAcc."No." := 'GLSOURCE';
        GLAcc.Insert();
        Cust."No." := 'GLSOURCE';
        Cust.Insert();
        Vend."No." := 'GLSOURCE';
        Vend.Insert();
        BankAcc."No." := 'GLSOURCE';
        BankAcc.Insert();
        GLSourceName.DeleteAll();
    end;

    local procedure TestLookupIsEmpty()
    var
        GLSourceName: record "O4N GL SN";
    begin
        if not GLSourceName.IsEmpty() then
            error('G/L Source Names lookup table is not empty!');        
    end;

    local procedure TestLookupIsNotEmpty()
    var
        GLSourceName: record "O4N GL SN";
    begin
        if GLSourceName.IsEmpty() then
            error('G/L Source Names lookup table is empty!');        
    end;

    local procedure TestLookupNoOfRecords(ExpectedNoOfRecords: Integer)
    var
        GLSourceName: record "O4N GL SN";
    begin
        if GLSourceName.Count() <> ExpectedNoOfRecords then
            error('G/L Source Names lookup table record count is not correct!');        
    end;
}