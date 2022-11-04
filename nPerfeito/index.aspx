<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="nPerfeito.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
    <title>Número perfeito</title>


    <script>

        function onlynumber(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
            //var regex = /^[0-9.,]+$/;
            var regex = /^[0-9]+$/; //caso queira somente números
            if (!regex.test(key)) {
                theEvent.returnValue = false;
                if (theEvent.preventDefault) theEvent.preventDefault();
            }
        }

    </script>

</head>
<body>
    <form id="form1" runat="server" >
    <h1 class="d-flex justify-content-center">Número Perfeito:</h1>
        <div class="d-flex justify-content-center">
             <asp:TextBox  ID="TextBox1" onkeypress="return onlynumber();" runat="server" Height="27px" Width="384px"></asp:TextBox>
        </div>
        <div class="d-flex justify-content-center">
            <asp:Button ID="Button1" runat="server" Text="Clique aqui" Width="191px" OnClick="Button1_Click" />
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <p>
            &nbsp;</p>
    </form>

</body>
</html>
