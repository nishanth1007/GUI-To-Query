﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div style=" background-color: #EFF3FB; border: double;  margin-left:auto; margin-right:auto; letter-spacing: normal; text-indent: inherit; vertical-align: middle; cursor: crosshair;">
            <div style="padding-left:30%"><br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="58px" Width="448px" BackColor="#FFFFCC" BorderColor="Black" BorderStyle="Double" BorderWidth="3px" Font-Bold="True" Font-Names="Arial Rounded MT Bold" padding-left="20px" Font-Overline="False" Font-Size="Large" Font-Underline="False" ForeColor="Black" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" background-color=" #4CAF50" color="white"  text-align="center" font-size="XX-Large" padding="6px" BackColor="#4CAF50" BorderWidth="3px" Font-Names="Arial Rounded MT Bold" BorderStyle="Double" ForeColor="White" />
    &nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br /></div>
            <div style=" background-color: #EFF3FB; text-align:center; margin-left:auto; margin-right:auto; padding-left:30%; letter-spacing: normal; text-indent: inherit; vertical-align: middle; cursor: crosshair;"">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView></div>
        </div>
    </form>
</body>
</html>