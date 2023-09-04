<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="Web_Selenay.Forms" %>

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
            font-size: large;
        }
        .auto-style3 {
            width: 480px;
        }
        .auto-style4 {
            width: 480px;
            height: 39px;
        }
        .auto-style5 {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>PMTP Formları</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/frm_EmployeeDataEntry1.aspx" Text="Personel Veri Giriş Formu" OnClientClick="target='_blank'" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button5" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/frm_WageDataUpdate.aspx" Text="Maaş Veri Güncelleme Formu" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button3" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/frm_EmployeeUpdate.aspx" Text="Personel Veri Güncelleme Formu" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/frm_WageDataEntry1.aspx" Text="Maaş Veri Giriş Formu" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button6" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/frm_DepartmentDataEntryUpdate.aspx" Text="Bölüm Giriş ve Güncelleme Formu" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
