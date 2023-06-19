codeunit 50301 StorageAzureBlob
{
    procedure SaveFile(FileName: Text; FileData: Codeunit "Temp Blob")
    begin
        Message('SaveFile Azure');
    end;

    procedure GetFile(FileName: Text): Codeunit "Temp Blob"
    begin
        Message('GetFile Azure');
    end;
}