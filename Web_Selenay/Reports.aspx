<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Web_Selenay.Reports" %>

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
            width: 475px;
        }
        .auto-style3 {
            text-align: center;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2"><strong>PMTP Raporları</strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/rpt_EmployeeComList.aspx" Text="Personel İletişim Raporu" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/rpt_WagesByEmployee.aspx" Text="Personele Göre Maaşlar Raporu" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/rpt_Departments.aspx" Text="Bölüme Göre Personeller Raporu" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/rpt_WageGraph.aspx" Text="Yıllık Personel Maaş Grafiği" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
