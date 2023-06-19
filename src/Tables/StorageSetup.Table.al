table 50300 StorageSetup
{
    Caption = 'Storage Setup';

    fields
    {
        field(1; PrimaryKey; Code[20]) { }
        field(2; StorageType; Enum StorageType) { }
    }

    procedure GetStorageImplementation() IStorage: Interface IStorage
    begin
        Rec.Get();
        IStorage := Rec.StorageType;
    end;
}