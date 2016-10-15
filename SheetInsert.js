/*
1-Create a spreadsheet on Google Drive, then copy the ID string in the URL
2-Open script.google.com, or from your Drive > New file > Other > Script
3-Paste code
4-Change the ID string in openById method to that of your newly created spreadsheet
*/

function doGet(e) {
  var sheet = SpreadsheetApp.openById("12psguP4slrUK1BW-PXSPZa4sYEOxksVDrZudSXjqLw8");
  sheet.appendRow([e.parameter.r,e.parameter.t]);
}
