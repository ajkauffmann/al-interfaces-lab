codeunit 50303 StorageSharePoint
{
    procedure SaveFile(FileName: Text; FileData: Codeunit "Temp Blob")
    begin
        Message('SaveFile SharePoint');
    end;

    procedure GetFile(FileName: Text): Codeunit "Temp Blob"
    begin
        Message('GetFile SharePoint');
    end;
}