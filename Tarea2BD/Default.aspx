<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tarea2BD._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Hola mundaasdasdasdo</h1>
        <h1>
            
        </h1>
        <p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" 
                        SortExpression="nombre" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [id], [nombre] FROM [tabla]"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
