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

    procedure GetStorageImplementation(): Interface IStorage
    var
        StorageAzureBlob: Codeunit StorageAzureBlob;
        StorageDropbox: Codeunit StorageDropbox;
        StorageSharePoint: Codeunit StorageSharePoint;
    begin
        Rec.Get();
        case Rec.StorageType of
            Rec.StorageType::AzureBlob:
                exit(StorageAzureBlob);
            Rec.StorageType::Dropbox:
                exit(StorageDropbox);
            Rec.StorageType::SharePoint:
                exit(StorageSharePoint);
        end;
    end;
}