page 50300 StorageSetup
{
    PageType = Card;
    SourceTable = StorageSetup;
    InsertAllowed = false;
    DeleteAllowed = false;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(StorageType; Rec.StorageType) { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(TestStorage)
            {
                Caption = 'Test Storage';

                trigger OnAction()
                var
                    StorageConnector: Codeunit StorageConnector;
                    FileData: Codeunit "Temp Blob";
                begin
                    StorageConnector.SaveFile('Test.txt', FileData, Rec.GetStorageImplementation());
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}