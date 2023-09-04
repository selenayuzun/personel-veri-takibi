<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_EmployeeUpdate.aspx.cs" Inherits="Web_Selenay.frm_EmployeeUpdate" %>

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
            width: 517px;
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
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                            <asp:BoundField DataField="Empl_FName" HeaderText="Empl_FName" SortExpression="Empl_FName" />
                            <asp:BoundField DataField="Empl_LName" HeaderText="Empl_LName" SortExpression="Empl_LName" />
                            <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" ReadOnly="True" SortExpression="Empl_Name" />
                            <asp:BoundField DataField="Empl_BDate" HeaderText="Empl_BDate" SortExpression="Empl_BDate" />
                            <asp:BoundField DataField="Empl_Start_Date" HeaderText="Empl_Start_Date" SortExpression="Empl_Start_Date" />
                            <asp:BoundField DataField="Empl_Left_Date" HeaderText="Empl_Left_Date" SortExpression="Empl_Left_Date" />
                            <asp:BoundField DataField="Empl_Address" HeaderText="Empl_Address" SortExpression="Empl_Address" />
                            <asp:BoundField DataField="Empl_City" HeaderText="Empl_City" SortExpression="Empl_City" />
                            <asp:BoundField DataField="Empl_Province" HeaderText="Empl_Province" SortExpression="Empl_Province" />
                            <asp:BoundField DataField="Empl_Phone" HeaderText="Empl_Phone" SortExpression="Empl_Phone" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Email" HeaderText="Empl_Email" SortExpression="Empl_Email" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                            <asp:BoundField DataField="Gender_ID" HeaderText="Gender_ID" SortExpression="Gender_ID" />
                            <asp:BoundField DataField="Title_ID" HeaderText="Title_ID" SortExpression="Title_ID" />
                            <asp:BoundField DataField="Empl_Photo" HeaderText="Empl_Photo" SortExpression="Empl_Photo" />
                            <asp:BoundField DataField="Empl_CV" HeaderText="Empl_CV" SortExpression="Empl_CV" />
                            <asp:BoundField DataField="Empl_CV_File" HeaderText="Empl_CV_File" SortExpression="Empl_CV_File" />
                            <asp:BoundField DataField="Empl_CV_Web" HeaderText="Empl_CV_Web" SortExpression="Empl_CV_Web" />
                            <asp:BoundField DataField="Entered_By" HeaderText="Entered_By" SortExpression="Entered_By" />
                            <asp:BoundField DataField="Entered_Date" HeaderText="Entered_Date" SortExpression="Entered_Date" />
                            <asp:CheckBoxField DataField="Is_Empl_Active" HeaderText="Is_Empl_Active" SortExpression="Is_Empl_Active" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                    </asp:DetailsView>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:com_PMTP %>" SelectCommand="SELECT * FROM [tbl_Employees]
WHERE Empl_ID=@Empl_ID" UpdateCommand="UPDATE tbl_Employees SET Empl_FName = @Empl_FName, Empl_LName = @Empl_LName, Empl_Start_Date = @Empl_Start_Date, Dept_ID = @Dept_ID, Gender_ID = @Gender_ID, Title_ID = @Title_ID, Empl_Cell = @Empl_Cell WHERE (Empl_ID = @Empl_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_Start_Date" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Empl_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
