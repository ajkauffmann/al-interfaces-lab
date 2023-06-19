enum 50300 StorageType implements IStorage
{
    DefaultImplementation = IStorage = StorageNotImplemented;

    value(1; AzureBlob) { Implementation = IStorage = StorageAzureBlob; }
    value(2; Dropbox) { Implementation = IStorage = StorageDropbox; }
    value(3; SharePoint) {  }

}