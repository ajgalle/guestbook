<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="guestbook._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Comment Section&nbsp;&nbsp;&nbsp; </h1>
        <p>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <div>
            <div id="targetDiv" runat="server">
            </div>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label><br />
            <asp:TextBox ID="FirstName" runat="server" ToolTip="Letters only please!" OnTextChanged="FirstName_TextChanged"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label><br />
            <asp:TextBox ID="LastName" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>   <br />  
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <br />
            Where did you hear about us?<br />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>Internet Search</asp:ListItem>
                <asp:ListItem>Radio</asp:ListItem>
                <asp:ListItem>Television</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            What&#39;s on your mind?<asp:TextBox ID="userComment" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" Rows="10" TextMode="MultiLine" Width="50%"></asp:TextBox>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.google.com" Target="_blank">Please click here for our terms of service.</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="btnRegister" runat="server" CssClass="btn-primary" OnClick="Button1_Click" Text="Register" />
            <asp:Button ID="btnClear" runat="server" CssClass="btn-danger" Text="Cancel" OnClick="btnClear_Click" />
            <br />
        </div>
    </div>    
</asp:Content>
