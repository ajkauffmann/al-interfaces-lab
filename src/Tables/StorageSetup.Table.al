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
}