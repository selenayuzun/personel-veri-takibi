<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rpt_EmployeeWageList.aspx.cs" Inherits="Web_Selenay.rpt_EmployeeWageList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Wage_ID], [Empl_Id], [Wage_Date], [Wage_Commision], [Wage_Amount], [Wage_Total], [Month_ID], [Wage_Year] FROM [tbl_EmployeeWages]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                            <asp:BoundField DataField="Empl_Id" HeaderText="Empl_Id" SortExpression="Empl_Id" />
                            <asp:BoundField DataField="Wage_Date" HeaderText="Wage_Date" SortExpression="Wage_Date" />
                            <asp:BoundField DataField="Wage_Commision" HeaderText="Wage_Commision" SortExpression="Wage_Commision" />
                            <asp:BoundField DataField="Wage_Amount" HeaderText="Wage_Amount" SortExpression="Wage_Amount" />
                            <asp:BoundField DataField="Wage_Total" HeaderText="Wage_Total" SortExpression="Wage_Total" />
                            <asp:BoundField DataField="Month_ID" HeaderText="Month_ID" SortExpression="Month_ID" />
                            <asp:BoundField DataField="Wage_Year" HeaderText="Wage_Year" SortExpression="Wage_Year" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
