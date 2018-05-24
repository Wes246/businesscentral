page 70009202 "O4N GL SN Help Resources"
{
  // version GLSN10.0

  Editable=false;
  PageType=List;
  SourceTable="O4N GL SN Help Resource";

  layout
  {
    area(content)
    {
      repeater(Group)
      {
        field("Code";Code)
        {
          ApplicationArea=Basic,Suite;
        }
        field(Url;Url)
        {
          ApplicationArea=Basic,Suite;
        }
        field(Icon;Icon)
        {
          ApplicationArea=Basic,Suite;
        }
      }
    }
  }

  actions
  {
  }

  trigger OnOpenPage();
  begin
    InitializeResources;
  end;
}


