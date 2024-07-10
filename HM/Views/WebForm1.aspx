<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HM.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .grid {
            width: 200px;
            height: 200px;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            grid-template-rows: 1fr 1fr 1fr;
        }

        .box {
            width: 50px;
            height: 50px;
            border: solid 1px black;
            text-align: center;
            margin: 2px;
        }

        div.box {
            position: relative
        }
        .btn_Num{
            width: 50px;
            height: 50px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="grid">
                <div class="box">
                    <asp:Button ID="Button1" CssClass="btn_Num" runat="server" Text="1" OnClick="Button_Click" />
                </div>
                <div class="box">
                    <asp:Button ID="Button2" CssClass="btn_Num" runat="server" Text="2" OnClick="Button_Click" />
                </div>
                <div class="box">
                    <asp:Button ID="Button3" CssClass="btn_Num" runat="server" Text="3" OnClick="Button_Click" />
                </div>
                <div class="box">
                    <asp:Button ID="Button4" CssClass="btn_Num" runat="server" Text="4" OnClick="Button_Click" />
                </div>
                <div class="box">
                    <asp:Button ID="Button5" CssClass="btn_Num" runat="server" Text="5" OnClick="Button_Click" />
                </div>
                <div class="box">
                    <asp:Button ID="Button6" CssClass="btn_Num" runat="server" Text="6" OnClick="Button_Click" />
                </div>
                <div class="box">
                    <asp:Button ID="Button7" CssClass="btn_Num" runat="server" Text="7" OnClick="Button_Click" />
                </div>
                <div class="box">
                    <asp:Button ID="Button8" CssClass="btn_Num" runat="server" Text="8" OnClick="Button_Click" />
                </div>
                <div class="box">
                    <asp:Button ID="Button9" CssClass="btn_Num" runat="server" Text="9" OnClick="Button_Click" />
                </div>
            </div>
            
            <div>
                <asp:Button ID="btn_Reset" runat="server" Text="Reset" OnClick="btn_Reset_Click" />
            </div>

            <div>
                <asp:Label ID="lbl_Score" runat="server" Text="Score: 0" Font-Size="Large"></asp:Label>
            </div>
        </div>
    </form>
</body>
    
</html>
