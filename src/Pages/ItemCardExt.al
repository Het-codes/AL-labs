// pageextension 50106 ItemCardExtension extends "Item Card"
// {
//     layout
//     {
//         // Add changes to page layout here
//     }

//     actions
//     {
//         addafter(Functions)
//         {
//             action(ImportItemPicture)

//             {
//                 Caption = 'Import Item Picture';
//                 Promoted = true;
//                 PromotedCategory = Category4;
//                 ApplicationArea = All;
//                 Image = Import;

//                 trigger OnAction()
//                 var
//                     ImageManagement: Codeunit ImageManagement;
//                 begin
//                     ImageManagement.ImportItemPicture(Rec);
//                 end;
//             }
//             action(ExportItemPicture)

//             {
//                 Caption = 'Export Item Picture';
//                 Promoted = true;
//                 PromotedCategory = Category4;
//                 ApplicationArea = All;
//                 Image = Export;

//                 trigger OnAction()
//                 var
//                     ImageManagement: Codeunit ImageManagement;
//                 begin
//                     ImageManagement.ExportItemPicture(Rec);
//                 end;
//             }
//         }
//     }

//     var
//         myInt: Integer;
// }