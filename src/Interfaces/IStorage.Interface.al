interface IStorage
{
    procedure SaveFile(FileName: Text; FileData: Codeunit "Temp Blob")

    procedure GetFile(FileName: Text): Codeunit "Temp Blob"

}