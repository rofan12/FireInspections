<%@ Page Title="" Language="C#" MasterPageFile="~/FireMenu.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<!DOCTYPE html>--%>




    <style type="text/css">
        .auto-style1 {
            width: 378px;
        }
        .auto-style4 {
            height: 26px;
            width: 1007px;
        }
        .auto-style6 {
            height: 26px;
            text-align: left;
            width: 399px;
        }
        .auto-style7 {
            width: 1007px;
        }
        .auto-style8 {
            width: 399px;
        }
    </style>
    <style type="text/css">
        html { 
          background: url(image/fire.jpg) no-repeat ;
          background-size:cover;
        }
        .auto-style9 {
            width: 378px;
            height: 26px;
            text-align: right;
            color: #FFFFFF;
        }
    </style>




        <div align ="center" >
            <table style="width: 100%; ">

                <tr>
                    <td class="auto-style7">
                        <table align= "center">
                            <tr>
                                <td class="auto-style9"><strong>Address #: </strong> </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="AddressNumber" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9"><strong>Street Name:&nbsp;
                                </strong>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="StreetName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9"><strong>Business Name: </strong> </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="BusinessName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"align="center">
                                    <asp:Button ID="ViewResults" runat="server" Text="View Results" OnClick="ViewResults_Click" />
                                    <asp:Button ID="ClearCriteria" runat="server" Text="Clear Criteria" OnClick="ClearCriteria_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style8">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
           
        </div>
        <div align="center" >
        <asp:GridView  ID="SearchResults" ShowHeaderWhenEmpty="True" EmptyDataText="No Records Returned - Modify Search Criteria" runat="server" AutoGenerateColumns="False" DataSourceID="sqlSearchResults" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="20">
            <Columns>
                <asp:TemplateField HeaderText="Inspection" >
                    <ItemTemplate>
                       <asp:Table ID="Table1" runat="server">
                            <asp:TableRow runat="server">
                                <asp:TableCell>
                                    <asp:HyperLink Font-Size="Small" ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("NewRecord") %>' Text="New Inspection"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell>
                                    <asp:HyperLink ID="HyperLink4" Font-Size="Small" runat="server" NavigateUrl='<%# Eval("LinkField") %>' Text="Inspection Menu"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="Bus\Building Info" >
                    <ItemTemplate>
                        <asp:Table ID="Table2" runat="server">
                            <asp:TableRow runat="server">
                                <asp:TableCell>
                                    <asp:HyperLink ID="HyperLink3" Font-Size="Small" runat="server" NavigateUrl='<%# Eval("GeneralInformation") %>' Text="General Info"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell>
                                    <asp:HyperLink ID="HyperLink4" Font-Size="Small" runat="server" NavigateUrl='<%# Eval("SiteInformation") %>' Text="Site Info"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="Address/Business Name(s)" >
                    <ItemTemplate>
                        <asp:Table ID="Table1" runat="server">
                            <asp:TableRow runat="server">
                                <asp:TableCell>
                                    <asp:Label ID="SiteAddress" runat="server" Text='<%# Eval("[SiteAddr]") %>'   ForeColor="Black"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell>
                                    <asp:Label ID="BusinessName" runat="server" Text='<%# Eval("[BusinessName]") %>' ForeColor="Blue" Font-Size="X-Small"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:BoundField DataField="TLID" HeaderText="TLID" SortExpression="TLID" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="AddrJur" HeaderText="Jurisdiction" SortExpression="AddrJur" />
                <asp:BoundField DataField="Phase" HeaderText="Phase" SortExpression="Phase" />
                
                
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
            
        </div>
        <asp:SqlDataSource ID="sqlSearchResults" runat="server" ConnectionString="<%$ ConnectionStrings:FireInspection %>" SelectCommand="spAddressResults" SelectCommandType="StoredProcedure" >
            <SelectParameters>
                <asp:ControlParameter ControlID="StreetName" DefaultValue="Nurf" Name="StreetName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="AddressNumber" DefaultValue="Nurf" Name="AddressNumber" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="BusinessName" DefaultValue="Nurf" Name="BusinessName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


</asp:Content>

