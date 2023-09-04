<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rpt_Departments.aspx.cs" Inherits="Web_Selenay.rpt_Departments" %>

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
                <td class="auto-style2" colspan="2"><strong>Bölümlere Göre Personeller Raporu</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Bölüm Seçiniz:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Empl_ID,Dept_ID" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Empl_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                            <asp:BoundField DataField="Empl_Name" HeaderText="Adı" ReadOnly="True" SortExpression="Empl_Name" />
                            <asp:BoundField DataField="Empl_Start_Date" HeaderText="Başlangıç Tarihi" SortExpression="Empl_Start_Date" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="İş Tel" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Phone" HeaderText="Cep Tel" SortExpression="Empl_Phone" />
                            <asp:BoundField DataField="Empl_Email" HeaderText="E-mail" SortExpression="Empl_Email" />
                            <asp:CheckBoxField DataField="Is_Empl_Active" HeaderText="Aktif mi?" SortExpression="Is_Empl_Active" />
                            <asp:BoundField DataField="Dept_Name" HeaderText="Bölüm Adı" SortExpression="Dept_Name" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT tbl_Employees.Empl_ID, tbl_Employees.Empl_Name, tbl_Employees.Empl_Start_Date, tbl_Employees.Empl_Cell, tbl_Employees.Empl_Phone, tbl_Employees.Empl_Email, tbl_Employees.Is_Empl_Active, tbl_Departments.Dept_Name, tbl_Departments.Dept_ID FROM tbl_Employees INNER JOIN tbl_Departments ON tbl_Employees.Dept_ID = tbl_Departments.Dept_ID WHERE (tbl_Employees.Empl_ID = @Empl_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Raporu Kapat" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
