// pageextension 50107 CustXMLExt extends "Customer List"
// {
//     layout
//     {
       
//     }

//     actions
//     {
//         addafter("&Customer"){
//             action("Export to XML")
//             {
//                 ApplicationArea = All;
//                 RunObject = xmlport 50107;
//                 Promoted = true;
//                 PromotedCategory = Category4;
//                 trigger OnAction()
//                 begin
                    
//                 end;
//             }
//             action("Export to CSV")
//             {
//                 ApplicationArea = All;
//                 RunObject = xmlport 50108;
//                 Promoted = true;
//                 PromotedCategory = Category4;
//                 trigger OnAction()
//                 begin
                    
//                 end;
//             }
//         }
//     }

//     var
//         myInt: Integer;
// }