codeunit 50304 StorageNotImplemented implements IStorage
{
    procedure SaveFile(FileName: Text; FileData: codeunit "Temp Blob");
    begin
        Error('Not implemented');
    end;

    procedure GetFile(FileName: Text): codeunit "Temp Blob";
    begin
        Error('Not implemented');
    end;
}