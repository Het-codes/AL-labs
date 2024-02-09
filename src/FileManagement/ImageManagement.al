codeunit 50105 ImageManagement
{


    trigger OnRun()
    begin

    end;

    procedure ImportItemPicture(var Item: Record Item)
    var
        PicInStream: InStream;
        FromFileName: Text;
        OverrideImageQst: Label 'The Existing Picture Will Be Replaced, want to continue?', Locked = false, MaxLength = 250;

    begin

        if Item.Picture.Count > 0 then
            if not Confirm(OverrideImageQst) then
                exit;

        if UploadIntoStream('import from my local to server ', '', 'All files(*.*)|*.*', FromFileName, PicInStream) then begin
            Clear(Item.Picture);
            Item.Picture.ImportStream(PicInStream, FromFileName);
            Item.Modify(true);
        end;

    end;

    procedure ExportItemPicture(var Item: Record Item)
    var
        PicInStream: InStream;
        Index: Integer;
        TenantMedia: Record "Tenant Media";
        FileName: Text;
    begin
        if Item.Picture.Count = 0 then
            exit;

        for Index := 1 to Item.Picture.Count do begin
            if TenantMedia.Get(Item.Picture.Item(Index)) then begin
                TenantMedia.CalcFields(Content);
                if TenantMedia.Content.HasValue then begin
                    FileName := Item.TableCaption + '_Image' + Format(Index) + GetTenantMediaFileExtension(TenantMedia);

                    TenantMedia.Content.CreateInStream(PicInStream);
                    DownloadFromStream(PicInStream, '', '', '', FileName);
                end;
            end;
        end;
    end;


    local procedure GetTenantMediaFileExtension(var TenantMedia: Record "Tenant Media"): Text;

    begin

        case TenantMedia."Mime Type" of
            'image/jpeg':
                exit('.jpg');
            'image/png':
                exit('.png');
            'image/bmp':
                exit('.bmp');
            'image/gif':
                exit('.gif');
            'image/tiff':
                exit('.tiff');
            'image/wmf':
                exit('.wmf');
        end;
    end;


    var
        myInt: Integer;
}