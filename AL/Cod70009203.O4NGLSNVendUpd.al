codeunit 70009203 "O4N GL SN Vend Upd."
{
  // version GLSN10.0


  trigger OnRun();
  begin
  end;

  var
    GLSourceNamesMgt : Codeunit "O4N GL SN Mgt";
    SourceType : Option " ",Customer,Vendor,"Bank Account","Fixed Asset";

  [EventSubscriber(ObjectType::Table, 23, 'OnAfterInsertEvent', '', true, false)]
  local procedure UpdateSourceNameOnVendorInsert(var Rec : Record Vendor;RunTrigger : Boolean);
  begin
    if Rec.ISTEMPORARY then exit;
    GLSourceNamesMgt.AddSource(SourceType::Vendor,Rec."No.",Rec.Name);
  end;

  [EventSubscriber(ObjectType::Table, 23, 'OnAfterDeleteEvent', '', true, false)]
  local procedure UpdateSourceNameOnVendorDelete(var Rec : Record Vendor;RunTrigger : Boolean);
  begin
    if Rec.ISTEMPORARY then exit;
    GLSourceNamesMgt.RemoveSource(SourceType::Vendor,Rec."No.");
  end;

  [EventSubscriber(ObjectType::Table, 23, 'OnAfterModifyEvent', '', true, false)]
  local procedure UpdateSourceNameOnVendorModify(var Rec : Record Vendor;var xRec : Record Vendor;RunTrigger : Boolean);
  begin
    if Rec.ISTEMPORARY then exit;
    GLSourceNamesMgt.UpdateSource(SourceType::Vendor,Rec."No.",Rec.Name);
  end;
}


