<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rpt_WagesByEmployee.aspx.cs" Inherits="Web_Selenay.rpt_WagesByEmployee" %>

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
            width: 511px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Personele Göre Maaşlar Raporu</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">Personel Seçiniz:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                            <asp:BoundField DataField="Wage_Amount" HeaderText="Maaş Tutarı" SortExpression="Wage_Amount" />
                            <asp:BoundField DataField="Wage_Commision" HeaderText="Maaş Komisyonu" SortExpression="Wage_Commision" />
                            <asp:BoundField DataField="Wage_Total" HeaderText="Maaş Toplamı" SortExpression="Wage_Total" ReadOnly="True" />
                            <asp:BoundField DataField="Month_Name" HeaderText="Ay Adı" SortExpression="Month_Name" />
                            <asp:BoundField DataField="Wage_Year" HeaderText="Maaş Yılı" SortExpression="Wage_Year" />
                            <asp:BoundField DataField="Empl_Id" HeaderText="Id" SortExpression="Empl_Id" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT tbl_EmployeeWages.Wage_ID, tbl_EmployeeWages.Wage_Amount, tbl_EmployeeWages.Wage_Commision, tbl_EmployeeWages.Wage_Total, tbl_EmployeeWages.Month_Name, tbl_EmployeeWages.Wage_Year, tbl_EmployeeWages.Empl_Id FROM tbl_EmployeeWages INNER JOIN tbl_Lookups ON tbl_EmployeeWages.Month_ID = tbl_Lookups.LK_ID WHERE (tbl_EmployeeWages.Empl_Id = @Empl_Id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_Id" PropertyName="SelectedValue" />
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
