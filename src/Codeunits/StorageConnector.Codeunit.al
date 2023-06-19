codeunit 50300 StorageConnector
{
    procedure SaveFile(FileName: Text; FileData: Codeunit "Temp Blob"; IStorage: Interface IStorage)
    begin
        IStorage.SaveFile(FileName, FileData);
    end;

    procedure GetFile(FileName: Text; IStorage: Interface IStorage) FileData: Codeunit "Temp Blob"
    begin
        FileData := IStorage.GetFile(FileName);
    end;
}