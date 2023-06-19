codeunit 50302 StorageDropbox implements IStorage
{
    procedure SaveFile(FileName: Text; FileData: Codeunit "Temp Blob")
    begin
        Message('SaveFile Dropbox');
    end;

    procedure GetFile(FileName: Text): Codeunit "Temp Blob"
    begin
        Message('GetFile Dropbox');
    end;
}