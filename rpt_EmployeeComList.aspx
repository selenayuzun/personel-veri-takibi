<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_EmployeeComList.aspx.cs" Inherits="Web_Selenay.rpt_EmployeeComList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 507px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2"><strong>Personel İletişim Raporu</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">Bölüm Seçiniz:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Empl_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                            <asp:BoundField DataField="Empl_FName" HeaderText="Adı" SortExpression="Empl_FName" />
                            <asp:BoundField DataField="Empl_LName" HeaderText="Soyadı" SortExpression="Empl_LName" />
                            <asp:BoundField DataField="Empl_BDate" HeaderText="Doğum Tarihi" SortExpression="Empl_BDate" />
                            <asp:BoundField DataField="Empl_Email" HeaderText="E-mail" SortExpression="Empl_Email" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="Telefon Numarası" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Address" HeaderText="Adresi" SortExpression="Empl_Address" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT Empl_ID, Empl_FName, Empl_LName, Empl_BDate, Empl_Email, Empl_Cell, Empl_Address FROM tbl_Employees WHERE (Dept_ID = @Dept_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Raporu Kapat" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
