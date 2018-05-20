<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="JDekASP.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="Scripts/read.js"></script>
    <title>JDek</title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        #TextArea1 {
            height: 666px;
            width: 1249px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 769px">
            <div>
            <h2>JDek</h2>
                <div style="height: 28px">
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <input id="btnread" type="button" value="Read From Source" />
                            </td>
                            <td>
                                <input id="btnshow" type="button" value="Show JSON" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="height: 100%">
                    <textarea style="width: 100%; height: 100%; font-family: monospace;"
                        id="edit" name="edit" class=" x-form-textarea x-form-field  x-form-empty-field"></textarea>
                    <table id="jsonelements" style="width: 100%; height: 100%; font-family: monospace;"></table>
                </div>
                <div id="urlbox" hidden="hidden" style="position:absolute; left:45%; top:50%; z-index:10; border:solid">
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <p style="padding: 10px">Enter URL:</p>
                            </td>
                            <td>
                                <input id="inputURL" type="text" style="padding: 10px"/>
                            </td>
                            <td>
                                <input id="inputurlsubmit" type="button"  style="padding: 5px" value="Submit"/>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>
    </div>
    </form>
</body>
</html>
