table 70009205 "O4N GL SN User Setup"
{
  // version GLSN10.0.0.1


  fields
  {
    field(1;"User Security ID";Guid)
    {
      Caption='User Security ID';
      TableRelation=User."User Security ID";
    }
    field(2;"Notification Id";Guid)
    {
      Caption='Notification Id';
      Editable=false;
      NotBlank=true;
    }
  }

  keys
  {
    key(Key1;"User Security ID","Notification Id")
    {
      Clustered=true;
    }
  }

  fieldgroups
  {
  }
}


