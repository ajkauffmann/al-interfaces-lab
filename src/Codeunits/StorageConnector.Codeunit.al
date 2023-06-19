codeunit 50300 StorageConnector
{
    var
        StorageSetup: Record StorageSetup;
        IStorage: Interface IStorage;

    procedure SaveFile(FileName: Text; FileData: Codeunit "Temp Blob")
    begin
        IStorage := StorageSetup.GetStorageImplementation();
        IStorage.SaveFile(FileName, FileData);
    end;

    procedure GetFile(FileName: Text) FileData: Codeunit "Temp Blob"
    begin
        IStorage := StorageSetup.GetStorageImplementation();
        FileData := IStorage.GetFile(FileName);
    end;
}