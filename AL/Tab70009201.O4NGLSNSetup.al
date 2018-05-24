table 70009201 "O4N GL SN Setup"
{
  // version GLSN10.0


  fields
  {
    field(1;"Primary Key";Code[10])
    {
      Caption='Primary Key';
    }
    field(2;"Registration E-Mail Address";Text[50])
    {
      Caption='Registration E-Mail Address';
    }
    field(3;"Installation Id";Guid)
    {
      Caption='Installation Id';
    }
    field(4;"Registration Id";Guid)
    {
      Caption='Registration Id';
    }
    field(5;"Next Registration Verification";DateTime)
    {
      Caption='Next Registration Verification';
    }
    field(12;Status;Option)
    {
      Caption='Status';
      OptionCaption='Not Completed,Completed,Not Started,Seen,Watched,Read, ';
      OptionMembers="Not Completed",Completed,"Not Started",Seen,Watched,Read," ";
    }
    field(13;"Tour Id";Integer)
    {
      Caption='Tour Id';
    }
    field(14;"Video Status";Boolean)
    {
      Caption='Video Status';
    }
    field(15;"Help Status";Boolean)
    {
      Caption='Help Status';
    }
    field(16;"Tour Status";Boolean)
    {
      Caption='Tour Status';
    }
  }

  keys
  {
    key(Key1;"Primary Key")
    {
      Clustered=true;
    }
  }

  fieldgroups
  {
  }
}


