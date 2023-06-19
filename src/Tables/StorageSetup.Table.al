table 50300 StorageSetup
{
    Caption = 'Storage Setup';

    fields
    {
        field(1; PrimaryKey; Code[20]) { }
        field(2; StorageType; Option)
        {
            OptionMembers = AzureBlob,Dropbox,SharePoint;
        }
    }

    procedure GetStorageImplementation() IStorage: Interface IStorage
    var
        StorageAzureBlob: Codeunit StorageAzureBlob;
        StorageDropbox: Codeunit StorageDropbox;
        StorageSharePoint: Codeunit StorageSharePoint;
        IsHandled: Boolean;
    begin
        Rec.Get();

        OnBeforeGetStorageImplementation(Rec, IStorage, IsHandled);
        if IsHandled then
            exit;

        case Rec.StorageType of
            Rec.StorageType::AzureBlob:
                IStorage := StorageAzureBlob;
            Rec.StorageType::Dropbox:
                IStorage := StorageDropbox;
            Rec.StorageType::SharePoint:
                IStorage := StorageSharePoint;
        end;
    end;

    procedure OnBeforeGetStorageImplementation(var Rec: Record StorageSetup; var Storage: Interface IStorage; var IsHandled: Boolean);
    begin
    end;
}