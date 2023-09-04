<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_WageDataUpdate.aspx.cs" Inherits="Web_Selenay.frm_WageDataUpdate" %>

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
                <td class="auto-style2" colspan="2"><strong>Maaş Veri Güncelleme Formu</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">Personel Seçiniz:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                            <asp:BoundField DataField="Wage_Amount" HeaderText="Maaş Tutarı" SortExpression="Wage_Amount" />
                            <asp:BoundField DataField="Wage_Date" HeaderText="Maaş Tarihi" SortExpression="Wage_Date" />
                            <asp:BoundField DataField="Wage_Commision" HeaderText="Maaş Komisyonu" SortExpression="Wage_Commision" />
                            <asp:BoundField DataField="Month_ID" HeaderText="Month_ID" SortExpression="Month_ID" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Wage_ID], [Wage_Amount], [Wage_Date], [Wage_Commision], [Month_ID] FROM [tbl_EmployeeWages] WHERE ([Empl_Id] = @Empl_Id)" UpdateCommand="UPDATE tbl_EmployeeWages SET Wage_Amount = @Wage_Amount, Wage_Date = @Wage_Date, Wage_Commision = @Wage_Commision, Month_ID = @Month_ID WHERE (Wage_ID = @Wage_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Wage_Amount" Type="Decimal" />
                            <asp:Parameter Name="Wage_Date" Type="DateTime" />
                            <asp:Parameter Name="Wage_Commision" Type="Decimal" />
                            <asp:Parameter Name="Month_ID" Type="Int16" />
                            <asp:Parameter Name="Wage_ID" Type="Int16" />
                        </UpdateParameters>
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
