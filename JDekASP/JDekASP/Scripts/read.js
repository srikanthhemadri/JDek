var injsonstr;
var injson;

$(document).ready(function () {
    $("#btnread").click(function () {
        $("#urlbox").show();
        $("#inputurlsubmit").click(function (val) {
            $("#urlbox").hide();
            $.get($("#inputURL").val(), function (data, status) {
                alert("Data: " + data + "\nStatus: " + status);
                try { injson = JSON.parse(data); injsonstr = data; }
                catch (e) { injson = data; injsonstr = JSON.stringify(data); }
                $("#edit").val(injsonstr);
            });
        });

    });
    $("#btnshow").click(function () {
        $("#edit").hide();
        $("#jsonelements").show();
        AppendText(injson);
    });
    function AppendText(inp) {
        for (var i in inp) {
            if (typeof inp[i] === 'object' && inp[i] != null) {
                AppendText(inp[i]);
            }
            var txt = '<tr><td style="padding: 5px">' + i + '</td><td style="padding: 5px">' + inp[i] + '</td></tr>';
            $("#jsonelements").append(txt);
        }
    }
});