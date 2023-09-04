<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_EmployeeUpdate1.aspx.cs" Inherits="Web_Selenay.frm_EmployeeUpdate1" %>

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
            width: 431px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Personel Veri Güncelleme Formu</strong></td>
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
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="Empl_FName" HeaderText="Empl_FName" SortExpression="Empl_FName" />
                            <asp:BoundField DataField="Empl_LName" HeaderText="Empl_LName" SortExpression="Empl_LName" />
                            <asp:BoundField DataField="Empl_BDate" HeaderText="Empl_BDate" SortExpression="Empl_BDate" />
                            <asp:BoundField DataField="Empl_Start_Date" HeaderText="Empl_Start_Date" SortExpression="Empl_Start_Date" />
                            <asp:BoundField DataField="Empl_Left_Date" HeaderText="Empl_Left_Date" SortExpression="Empl_Left_Date" />
                            <asp:BoundField DataField="Empl_City" HeaderText="Empl_City" SortExpression="Empl_City" />
                            <asp:BoundField DataField="Empl_Province" HeaderText="Empl_Province" SortExpression="Empl_Province" />
                            <asp:BoundField DataField="Empl_Address" HeaderText="Empl_Address" SortExpression="Empl_Address" />
                            <asp:BoundField DataField="Empl_Phone" HeaderText="Empl_Phone" SortExpression="Empl_Phone" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Email" HeaderText="Empl_Email" SortExpression="Empl_Email" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                            <asp:BoundField DataField="Title_ID" HeaderText="Title_ID" SortExpression="Title_ID" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Left_Date], [Empl_City], [Empl_Province], [Empl_Address], [Empl_Phone], [Empl_Cell], [Empl_Email], [Dept_ID], [Title_ID] FROM [tbl_Employees] WHERE Empl_ID=@Empl_ID" UpdateCommand="UPDATE tbl_Employees SET Empl_FName = @Empl_FName, Empl_LName = @Empl_LName, Empl_Left_Date = @Empl_Left_Date, Empl_Address = @Empl_Address, Empl_City = @Empl_City, Empl_Province = @Empl_Province, Empl_Phone = @Empl_Phone, Empl_Cell = @Empl_Cell, Empl_Email = @Empl_Email, Dept_ID = @Dept_ID, Title_ID = @Title_ID, Gender_ID = @Gender_ID WHERE Empl_ID=@Empl_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_Left_Date"/>
                            <asp:Parameter Name="Empl_Address" />
                            <asp:Parameter Name="Empl_City" />
                            <asp:Parameter Name="Empl_Province" />
                            <asp:Parameter Name="Empl_Phone" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Empl_Email" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Empl_ID" />
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
