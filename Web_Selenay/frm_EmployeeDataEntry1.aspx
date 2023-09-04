<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_EmployeeDataEntry1.aspx.cs" Inherits="Web_Selenay.frm_EmployeeDataEntry1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 297px;
        }
        .auto-style4 {
            width: 214px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            width: 297px;
            height: 31px;
        }
        .auto-style7 {
            width: 214px;
            height: 31px;
        }
        .auto-style8 {
            width: 263px;
        }
        .auto-style9 {
            height: 31px;
            width: 263px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4"><strong>Personel Veri Giriş Formu</strong></td>
            </tr>
            <tr>
                <td class="auto-style8">Adı:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">Soyadı:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Cinsiyeti:</td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="1">Kadın</asp:ListItem>
                        <asp:ListItem Value="2">Erkek</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style7">Doğum Tarihi:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">İşe Giriş Tarihi:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style4">İş Tel:</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Ünvanı:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Title" DataValueField="LK_ID">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">Bölümü:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Cep tel:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">E-mail:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Adres:</td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">İl:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="City" DataValueField="City">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">İlçe:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Province" DataValueField="Province">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Aktif mi?</td>
                <td class="auto-style3">
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Personeli Kaydet" />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" InsertCommand="INSERT INTO tbl_Employees(Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Empl_Address, Empl_City, Empl_Province, Empl_Cell, Empl_Email, Dept_ID, Gender_ID, Title_ID, Is_Empl_Active) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Empl_Address, @Empl_City, @Empl_Province, @Empl_Cell, @Empl_Email, @Dept_ID, @Gender_ID, @Title_ID, @Is_Empl_Active)" SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Cell], [Empl_Email], [Dept_ID], [Gender_ID], [Title_ID], [Is_Empl_Active] FROM [tbl_Employees]">
                        <InsertParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_BDate" />
                            <asp:Parameter Name="Empl_Start_Date" />
                            <asp:Parameter Name="Empl_Address" />
                            <asp:Parameter Name="Empl_City" />
                            <asp:Parameter Name="Empl_Province" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Empl_Email" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Is_Empl_Active" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT Title, LK_ID FROM tbl_Lookups WHERE (Title IS NOT NULL)"></asp:SqlDataSource>
                </td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT Dept_ID, Dept_Name FROM tbl_Departments WHERE (Dept_Name IS NOT NULL)"></asp:SqlDataSource>
                </td>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT City FROM tbl_Lookups WHERE (City IS NOT NULL)"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT Province FROM tbl_Lookups WHERE (Province IS NOT NULL)"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
