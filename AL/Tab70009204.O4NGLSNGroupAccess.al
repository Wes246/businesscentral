table 70009204 "O4N GL SN Group Access"
{
  // version GLSN10.0


  fields
  {
    field(1;"Permission Level";Option)
    {
      Caption='Permission Level';
      OptionCaption='Read,Update';
      OptionMembers=Read,Update;
    }
    field(2;"User Group Code";Code[20])
    {
      Caption='User Group Code';
      NotBlank=true;
      TableRelation="User Group";
    }
    field(4;"User Group Name";Text[50])
    {
      CalcFormula=Lookup("User Group".Name WHERE (Code=FIELD("User Group Code")));
      Caption='User Group Name';
      Editable=false;
      FieldClass=FlowField;
    }
    field(6;"Has Permission";Boolean)
    {
      Caption='Has Permission';
    }
    field(7;"Assign Permission";Boolean)
    {
      Caption='Assign Permission';
    }
    field(8;"Remove Permission";Boolean)
    {
      Caption='Remove Permission';
    }
  }

  keys
  {
    key(Key1;"Permission Level","User Group Code")
    {
      Clustered=true;
    }
  }

  fieldgroups
  {
  }
}


