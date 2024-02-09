// tableextension 50103 ContactTabExt extends Contact
// {
//     fields
//     {
//         field(50100; First_Name; Text[50])
//         {
//             Caption = 'First Name';
//             DataClassification = ToBeClassified;
//         }
//         field(50101; Last_Name; Text[50])
//         {
//             Caption = 'Last Name';
//             DataClassification = ToBeClassified;
//             trigger OnValidate()
//             begin
//                 Rec.Name := Rec.First_Name + ' ' + Rec.Last_Name;
//             end;
//         }
//     }
//     var
// }
