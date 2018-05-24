codeunit 70009212 "O4N GL SN Perm. Notif."
{
  // version GLSN10.0


  trigger OnRun();
  begin
  end;

  var
    ShowAgainQst : Label 'Do you want to hide this notification in the future?';

  procedure ShowAssistedSetupToUser(MissingPermissionNotification : Notification);
  begin
    StartVideo('https://www.youtube.com/embed/C3zK8Jm0lGM');
  end;

  local procedure StartVideo(Url : Text);
  var
    VideoLink : Page "Video link";
    ClientTypeMgt : Codeunit ClientTypeManagement;
  begin
    if ClientTypeMgt.IsCommonWebClientType then begin
      VideoLink.SetURL(Url);
      VideoLink.RUNMODAL;
    end else
      HYPERLINK(Url);
  end;
}


