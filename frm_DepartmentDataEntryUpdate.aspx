<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_DepartmentDataEntryUpdate.aspx.cs" Inherits="Web_Selenay.frm_DepartmentDataEntryUpdate" %>

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
            width: 542px;
        }
        .auto-style4 {
            width: 542px;
            height: 33px;
        }
        .auto-style5 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Bölüm Veri Giriş ve Güncelleme Formu</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Dept_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                            <asp:BoundField DataField="Dept_Name" HeaderText="Bölüm Adı" SortExpression="Dept_Name" />
                            <asp:BoundField DataField="Dept_Phone" HeaderText="Bölüm Telefonu" SortExpression="Dept_Phone" />
                            <asp:BoundField DataField="Manager_ID" HeaderText="Yönetici ID" SortExpression="Manager_ID" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Bölüm Adı" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Bölüm Telefon" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Müdür ID" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Empl_Name" DataValueField="Empl_ID" Visible="False">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Veriyi Kaydet" OnClick="Button3_Click" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT * FROM [tbl_Departments]" UpdateCommand="UPDATE tbl_Departments SET Dept_Name = @Dept_Name, Dept_Phone = @Dept_Phone, Manager_ID = @Manager_ID WHERE (Dept_ID = @Dept_ID)">
                        <UpdateParameters>
                            <asp:Parameter Name="Dept_Name" />
                            <asp:Parameter Name="Dept_Phone" />
                            <asp:Parameter Name="Manager_ID" />
                            <asp:Parameter Name="Dept_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" InsertCommand="INSERT INTO tbl_Departments(Dept_Name, Dept_Phone, Manager_ID) VALUES (@Dept_Name, @Dept_Phone, @Manager_ID)" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]">
                        <InsertParameters>
                            <asp:Parameter Name="Dept_Name" />
                            <asp:Parameter Name="Dept_Phone" />
                            <asp:Parameter Name="Manager_ID" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" Text="Veri Girişini Aç" OnClick="Button4_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
