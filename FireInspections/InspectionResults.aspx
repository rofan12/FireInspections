<%@ Page Title="" Language="C#" MasterPageFile="~/FireMenu.master" AutoEventWireup="true" CodeFile="InspectionResults.aspx.cs" Inherits="InspectionResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" AllowSorting="True" PageSize="20">
            <Columns>
                <asp:TemplateField HeaderText="" >
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("[LinkField]") %>' Text="Inspection(s)"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:BoundField DataField="NoticeNo" HeaderText="Activity #" SortExpression="NoticeNo" />
                <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:d}"  SortExpression="StartDate" />
                <asp:BoundField DataField="FinishDate" HeaderText="Finish Date" DataFormatString="{0:d}" SortExpression="FinishDate" />
                <asp:BoundField DataField="SystemToolName" HeaderText="Description" SortExpression="SystemToolName" />
                <asp:BoundField DataField="CountOfINSPTRANS#" HeaderText="Records" ReadOnly="True" SortExpression="CountOfINSPTRANS#" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FireInspection %>" SelectCommand="SELECT '~\Inspections.aspx?MasterID=' + MasterID + '&amp;NoticeNo=' + NoticeNo AS LinkField,
       CASE NoticeNo
           WHEN NULL THEN
               ''
           ELSE
               LEFT([NoticeNo], 3)
       END + RIGHT(NoticeNo, LEN(NoticeNo) - dbo.NoticeNumberDisplay([NoticeNo]) - 2) AS NoticeNo,
       tblInspectionInformation.SystemToolName,
       tblInspectionInformation.FinishDate,
       COUNT(tblInspectionInformation.[INSPTRANS#]) AS [CountOfINSPTRANS#],
       tblInspectionInformation.StartDate
FROM tblInspectionInformation
WHERE (((tblInspectionInformation.FormType) = 'MAINT'))
GROUP BY tblInspectionInformation.NoticeNo,
         tblInspectionInformation.SystemToolName,
         tblInspectionInformation.FinishDate,
         tblInspectionInformation.StartDate,
         tblInspectionInformation.MasterID
HAVING (((tblInspectionInformation.MasterID) = @MasterID))
ORDER BY tblInspectionInformation.StartDate DESC;">
            <SelectParameters>
                <asp:QueryStringParameter Name="MasterID" QueryStringField="MasterID" />
            </SelectParameters>
        </asp:SqlDataSource>

</asp:Content>

