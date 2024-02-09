// pageextension 50102 SalesFactboxExtension extends "Sales Order"
// {
//     layout
//     {
//         addafter(Control1906127307)
//         {
//             part("Substitute Item Detail"; "Substitute Item Detail")
//             {
//                 ApplicationArea = All;
//                 Provider = SalesLines;
//                 SubPageLink = "No." = field("No.");
//             }
//         }
//     }
// }
