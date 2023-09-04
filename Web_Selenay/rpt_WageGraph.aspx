<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rpt_WageGraph.aspx.cs" Inherits="Web_Selenay.rpt_WageGraph" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Yıllık Personel Maaşları Grafiği</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                        <series>
                            <asp:Series Name="Series1" XValueMember="Empl_Name" YValueMembers="W/Amount">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1">
                        <series>
                            <asp:Series Name="Series1" XValueMember="W/Year" YValueMembers="W/Amount">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT SUM(tbl_EmployeeWages.Wage_Amount) AS [W/Amount], YEAR(tbl_EmployeeWages.Wage_Date) AS [W/Year], tbl_Employees.Empl_Name FROM tbl_EmployeeWages INNER JOIN tbl_Employees ON tbl_EmployeeWages.Empl_Id = tbl_Employees.Empl_ID GROUP BY YEAR(tbl_EmployeeWages.Wage_Date), tbl_Employees.Empl_Name"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
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
