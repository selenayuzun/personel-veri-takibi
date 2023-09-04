<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_WageDataEntry1.aspx.cs" Inherits="Web_Selenay.frm_WageDataEntry1" %>

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
            width: 459px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Maaş Veri Giriş Formu&nbsp;</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">Personel Adı:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tarih:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Maaş Tutarı:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Maaş Komisyonu:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Maaş Ayı:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Month" DataValueField="LK_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [LK_ID], [Month] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" InsertCommand="INSERT INTO tbl_EmployeeWages(Empl_Id, Wage_Date, Wage_Amount, Wage_Commision, Month_ID) VALUES (@Empl_Id, @Wage_Date, @Wage_Amount, @Wage_Commision, @Month_ID)" SelectCommand="SELECT [Wage_ID], [Empl_Id], [Wage_Date], [Wage_Amount], [Wage_Commision], [Wage_Total], [Month_ID], [Wage_Year], [Month_Name] FROM [tbl_EmployeeWages]">
                        <InsertParameters>
                            <asp:Parameter Name="Empl_Id" />
                            <asp:Parameter Name="Wage_Date" />
                            <asp:Parameter Name="Wage_Amount" />
                            <asp:Parameter Name="Wage_Commision" />
                            <asp:Parameter Name="Month_ID" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
