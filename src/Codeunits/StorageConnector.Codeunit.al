codeunit 50300 StorageConnector
{
    var
        StorageSetup: Record StorageSetup;
        StorageAzureBlob: Codeunit StorageAzureBlob;
        StorageDropbox: Codeunit StorageDropbox;
        StorageSharePoint: Codeunit StorageSharePoint;

    procedure SaveFile(FileName: Text; FileData: Codeunit "Temp Blob")
    begin
        StorageSetup.Get();
        case StorageSetup.StorageType of
            StorageSetup.StorageType::AzureBlob:
                StorageAzureBlob.SaveFile(FileName, FileData);
            StorageSetup.StorageType::Dropbox:
                StorageDropbox.SaveFile(FileName, FileData);
            StorageSetup.StorageType::SharePoint:
                StorageSharePoint.SaveFile(FileName, FileData);
        end;
    end;

    procedure GetFile(FileName: Text) FileData: Codeunit "Temp Blob"
    begin
        StorageSetup.Get();
        case StorageSetup.StorageType of
            StorageSetup.StorageType::AzureBlob:
                FileData := StorageAzureBlob.GetFile(FileName);
            StorageSetup.StorageType::Dropbox:
                FileData := StorageDropbox.GetFile(FileName);
            StorageSetup.StorageType::SharePoint:
                FileData := StorageSharePoint.GetFile(FileName);
        end;
    end;
}