<%@ Page
    Title=""
    Language="C#"
    MasterPageFile="~/AddressHeader.master"
    AutoEventWireup="true"
    CodeFile="Inspections.aspx.cs"
    Inherits="Inspections" %>

<%@ MasterType
    VirtualPath="~/AddressHeader.master" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="Server">

    <style
        type="text/css">
        .auto-style2 {
            height: 29px;
            background-color: antiquewhite;
        }

        .auto-style7 {
            font-weight: bold;
        }

        .auto-style10 {
            height: 28px;
        }

        .auto-style11 {
            height: 36px;
        }

        .auto-style12 {
            height: 23px;
        }

        .auto-style20 {
            height: 29px;
            width: 166px;
        }

        .auto-style21 {
            height: 24px;
        }

        .auto-style22 {
            height: 29px;
            width: 161px;
            vertical-align: top;
        }

        .auto-style23 {
            height: 29px;
            width: 332px;
        }

        .auto-style27 {
            margin-left: 0px;
        }

        .auto-style28 {
            height: 29px;
            width: 254px;
        }

        .auto-style29 {
            width: 951px;
            background-color: antiquewhite;
        }
    </style>
    <script
        src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link
        rel="stylesheet"
        href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" />
    <script
        src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script
        type="text/javascript">
        $(document).ready(function () {
            $("#InspDate").datepicker();       // Associate the calendar with the BeginningDate text box.
        });
    </script>
    <script
        type="text/javascript">
        $(document).ready(function () {
            $("#StartDate").datepicker();       // Associate the calendar with the BeginningDate text box.
        });
    </script>
    <script
        type="text/javascript">
        $(document).ready(function () {
            $("#FinishDate").datepicker();       // Associate the calendar with the BeginningDate text box.
        });
    </script>

    <form
        id="form1"
        runat="server">
        <div>

            <table
                align="center"
                class="auto-style29"
                border="1">
                <tr>
                    <td
                        class="auto-style21"
                        colspan="4">
                        Notice
                        #:
                        <br />
                        <asp:Label
                            ID="lblNoticeNo"
                            runat="server"
                            Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style12"
                        colspan="4">
                        <%--                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Inspections.aspx?MasterID=1a195eda-ee4f-44d6-824c-9cb2a1dbd3b8&NoticeNo=19-106901-1">HyperLink</asp:HyperLink>--%>
                        <asp:HyperLink
                            ID="HyperLink2"
                            runat="server"
                            NavigateUrl="Inspections.aspx?MasterID=B275473A-434A-11D5-AF68-00A0C9EAFDD3&NoticeNo=19-FRADT1203175">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style22">
                        DATE:
                        <asp:RequiredFieldValidator
                            ID="rfvInspDate"
                            runat="server"
                            ErrorMessage="Date Field Is Required"
                            ControlToValidate="InspDate"
                            Display="Dynamic"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox
                            ID="InspDate"
                            runat="server"
                            BackColor="#FF8080"
                            Width="72px"></asp:TextBox>
                    </td>
                    <td
                        class="auto-style28"
                        style="vertical-align: top">
                        INSPECTED
                        BY:
                        <br />
                        <asp:DropDownList
                            ID="ddInspectedBy"
                            runat="server"
                            BackColor="#FF8080"
                            DataSourceID="sqlInspectors"
                            DataTextField="EmployeeID"
                            DataValueField="EmployeeID">
                        </asp:DropDownList>
                        <br />
                        <asp:Label
                            ID="lblEmployeeName"
                            runat="server"></asp:Label>
                    </td>
                    <td
                        class="auto-style20"
                        style="vertical-align: top">
                        INSPECTION
                        TYPE:<br />
                        <asp:DropDownList
                            ID="ddInspectionType"
                            runat="server"
                            BackColor="#FF8080"
                            DataSourceID="sqlInspectionType"
                            DataTextField="Code"
                            DataValueField="CodeID">
                        </asp:DropDownList>
                    </td>
                    <td
                        class="auto-style23"
                        style="vertical-align: top">
                        TIME:<br />
                        <asp:TextBox
                            ID="InspTime"
                            runat="server"
                            BackColor="#FF8080"
                            Width="33px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style2"
                        colspan="4">
                        Comments<br />
                        <asp:TextBox
                            ID="Comments"
                            runat="server"
                            Height="109px"
                            TextMode="MultiLine"
                            Width="930px"
                            CssClass="auto-style27"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style2"
                        colspan="2">
                        PRESENTED
                        TO:
                        <strong>
                            <asp:Button
                                ID="Button1"
                                runat="server"
                                CssClass="auto-style7"
                                Text="SEARCH NAMES"
                                Width="134px" />
                        </strong>
                        <asp:TextBox
                            ID="InspName"
                            runat="server"
                            BackColor="#FF8080"
                            Width="203px"></asp:TextBox>
                    </td>
                    <td
                        class="auto-style2"
                        colspan="2">
                        METHOD
                        OF
                        DELIVERY:<asp:DropDownList
                            ID="ddMethodOfDelivery"
                            runat="server"
                            DataSourceID="sqlMethodOfDelivery"
                            DataTextField="MethodOfDelivery"
                            DataValueField="MethodOfDelivery">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style2"
                        colspan="2">
                        BUSINESS
                        NAME:
                        <asp:TextBox
                            ID="BusinessName"
                            runat="server"
                            Width="218px"></asp:TextBox>
                    </td>
                    <td
                        class="auto-style2"
                        colspan="2">
                        (E-mail
                        Address
                        For
                        Electronic
                        Delivery)<br />
                        <asp:TextBox
                            ID="EmailAddress"
                            runat="server"
                            Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style2"
                        colspan="2">
                        MAILING
                        ADDRESS:
                        <asp:TextBox
                            ID="MailingAddress"
                            runat="server"
                            Width="216px"></asp:TextBox>
                    </td>
                    <td
                        class="auto-style2"
                        colspan="2">
                        PHONE:
                        <br />
                        <asp:TextBox
                            ID="Phone"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style2"
                        colspan="2">
                        CITY,
                        STATE,
                        ZIP:
                        <asp:TextBox
                            ID="CityStateZip"
                            runat="server"
                            Width="216px"></asp:TextBox>
                    </td>
                    <td
                        class="auto-style2"
                        colspan="2">
                        FAX:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        CELL:<br />
                        <asp:TextBox
                            ID="Fax"
                            runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox
                            ID="Cell"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style10"
                        colspan="2">
                        <strong>
                            <asp:CheckBox
                                ID="chkPreCitation"
                                runat="server"
                                ForeColor="Red"
                                Text="NOTICE OF PRE-CITATION  "
                                TextAlign="Left" />
                        </strong>
                    </td>
                    <td
                        class="auto-style10"
                        colspan="2">
                        <asp:CheckBox
                            ID="chkReinspection"
                            runat="server"
                            Text="RE-INSPECTION: "
                            TextAlign="Left" />
                        &nbsp;DURATION:
                        <asp:TextBox
                            ID="Duration"
                            runat="server"
                            Width="37px"></asp:TextBox>
                        DAY(S)
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style11"
                        colspan="2">
                        START
                        DATE:&nbsp;<asp:TextBox
                            ID="StartDate"
                            runat="server"
                            Width="72px"></asp:TextBox>
                    </td>
                    <td
                        class="auto-style11"
                        colspan="2">
                        <asp:CheckBox
                            ID="chkFinished"
                            runat="server"
                            Text="FINISHED"
                            TextAlign="Left" />
                        &nbsp;DATE:
                        <asp:TextBox
                            ID="FinishDate"
                            runat="server"
                            Width="72px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <strong>
                            REFERRED
                            TO:<asp:DropDownList
                                ID="ddReferredTo"
                                runat="server"
                                DataSourceID="SqlReferredTo"
                                DataTextField="Name"
                                DataValueField="EmployeeID">
                            </asp:DropDownList>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style2"
                        colspan="4"
                        style="text-align: center">
                        <asp:Button
                            ID="btnSave"
                            runat="server"
                            Text="Save"
                            OnClick="btnSave_Click" />
                        <asp:Button
                            ID="btnNew"
                            runat="server"
                            Text="New" />
                        <asp:Button
                            ID="btnPrevious"
                            runat="server"
                            OnClick="btnPrevious_Click"
                            Text="&lt;&lt; Previous" />
                        <asp:Button
                            ID="btnNext"
                            runat="server"
                            OnClick="btnNext_Click"
                            Text="Next &gt;&gt;" />
                        <asp:Button
                            ID="Button6"
                            runat="server"
                            Text="Print" />
                        <asp:Button
                            ID="Button7"
                            runat="server"
                            Text="Delete" />
                        <asp:Button
                            ID="Button8"
                            runat="server"
                            Text="Cancel" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td
                        class="auto-style2"
                        style="text-align: center"
                        colspan="4">
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <asp:TextBox ID="SortOrder" 
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td
                        colspan="4"
                        style="text-align: center">
                        <asp:GridView
                            ID="grdViolations"
                            runat="server"
                            AutoGenerateColumns="False"
                            OnRowEditing="gridView_RowEditing"
                            DataKeyNames="CodeViolationID"
                            DataSourceID="sqlViolations"
                            EmptyDataText="No Code Violations Associated With This Specific Record"
                            ShowHeaderWhenEmpty="True"
                            AllowPaging="True"
                            AllowSorting="True"
                            BackColor="#FFCC99"
                            BorderColor="#CC9966"
                            BorderStyle="None"
                            BorderWidth="1px"
                            CellPadding="4"
                            PageSize="5"
                            ShowFooter="True">
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Table
                                            runat="server">
                                            <asp:TableRow
                                                VerticalAlign="Top">
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label112"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="SORT: " />
                                                    <asp:TextBox
                                                        ID="TextBox1"
                                                        runat="server"
                                                        Width="25px" />
                                                </asp:TableCell></asp:TableRow></asp:Table></HeaderTemplate><ItemTemplate>
                                        <asp:Table
                                            runat="server">
                                            <asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label1"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="SORT: " />


                                                    <asp:TextBox
                                                        ID="TextBox3"
                                                        runat="server"
                                                        Width="25px"
                                                        Text='<%# Bind("SortOrder") %>'
                                                        Font-Size="Small"
                                                        ForeColor="Black" />
                                                </asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:TemplateField><asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Table
                                            runat="server">
                                            <asp:TableRow>

                                                <asp:TableCell>

                                                    <asp:Label
                                                        ID="Label1"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="DATE: " />
                                                    <asp:TextBox
                                                        ID="TextBox11"
                                                        runat="server"
                                                        Width="75px" />


                                                </asp:TableCell></asp:TableRow></asp:Table></HeaderTemplate><ItemTemplate>
                                        <asp:Table
                                            runat="server">
                                            <asp:TableRow>

                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label19"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="DATE: " />
                                                    <asp:TextBox
                                                        ID="TextBox2"
                                                        runat="server"
                                                        Width="75px"
                                                        Text='<%# Eval("ViolationDate", "{0:MM/dd/yyyy}") %>'
                                                        Font-Size="Small"
                                                        ForeColor="Black" />

                                                </asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:TemplateField><asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Table
                                            ID="Table12"
                                            runat="server">

                                            <asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label3"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="Code: "></asp:Label>
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:DropDownList
                                                        SelectedValue='<%# Bind("CodePrefix") %>'
                                                        Font-Size="X-Small"
                                                        ID="ddCodePrefix"
                                                        runat="server"
                                                        DataSourceID="sqlCodePrefix"
                                                        DataTextField="CodePrefix"
                                                        DataValueField="CodePrefix">
                                                    </asp:DropDownList>
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label4"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="ID: "></asp:Label>
                                                </asp:TableCell></asp:TableRow><asp:TableRow>

                                                <asp:TableCell>
                                                    <asp:DropDownList
                                                        Font-Size="X-Small"
                                                        ID="ddCodeID"
                                                        SelectedValue='<%# Bind("CodeID") %>'
                                                        runat="server"
                                                        DataSourceID="sqlCodeID"
                                                        DataTextField="CodeDisplay"
                                                        DataValueField="CodeID">
                                                    </asp:DropDownList>
                                                </asp:TableCell></asp:TableRow></asp:Table></HeaderTemplate><ItemTemplate>
                                        <asp:Table
                                            ID="Table12"
                                            runat="server">

                                            <asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label3"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="Code: "></asp:Label>
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:DropDownList
                                                        SelectedValue='<%# Bind("CodePrefix") %>'
                                                        Font-Size="X-Small"
                                                        ID="ddCodePrefix"
                                                        runat="server"
                                                        DataSourceID="sqlCodePrefix"
                                                        DataTextField="CodePrefix"
                                                        DataValueField="CodePrefix">
                                                    </asp:DropDownList>
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label4"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="ID: "></asp:Label>
                                                </asp:TableCell></asp:TableRow><asp:TableRow>

                                                <asp:TableCell>
                                                    <asp:DropDownList
                                                        Font-Size="X-Small"
                                                        ID="ddCodeID"
                                                        SelectedValue='<%# Bind("CodeID") %>'
                                                        runat="server"
                                                        DataSourceID="sqlCodeID"
                                                        DataTextField="CodeDisplay"
                                                        DataValueField="CodeID">
                                                    </asp:DropDownList>
                                                </asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:TemplateField><asp:TemplateField
                                    HeaderText="Violation Description"
                                    SortExpression="Description">
                                    <HeaderTemplate>
                                        <asp:Table
                                            ID="Table14"
                                            runat="server">

                                            <asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label8"
                                                        runat="server"
                                                        Text="Violation Description"></asp:Label>
                                                    <asp:TextBox
                                                        Font-Size="Small"
                                                        ID="itmDescription"
                                                        Text=""
                                                        runat="server"
                                                        Height="60px"
                                                        TextMode="MultiLine"
                                                        Width="400px"></asp:TextBox>
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Labe28"
                                                        runat="server"
                                                        Text="Code Description"></asp:Label>
                                                    <asp:TextBox
                                                        Font-Size="Small"
                                                        ID="itmCodeDescription"
                                                        Text=""
                                                        runat="server"
                                                        Height="60px"
                                                        TextMode="MultiLine"
                                                        Width="400px"></asp:TextBox>
                                                </asp:TableCell></asp:TableRow></asp:Table></HeaderTemplate><ItemTemplate>
                                        <asp:Table
                                            ID="Table15"
                                            runat="server">

                                            <asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label8"
                                                        runat="server"
                                                        Text="Violation Description"></asp:Label>
                                                    <asp:TextBox
                                                        Font-Size="Small"
                                                        ID="itmDescription"
                                                        Text='<%# Bind("Description") %>'
                                                        runat="server"
                                                        Height="60px"
                                                        TextMode="MultiLine"
                                                        Width="400px"></asp:TextBox>
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Labe28"
                                                        runat="server"
                                                        Text="Code Description"></asp:Label>
                                                    <asp:TextBox
                                                        Font-Size="Small"
                                                        ID="itmCodeDescription"
                                                        Text='<%# Bind("CodeDescription") %>'
                                                        runat="server"
                                                        Height="60px"
                                                        TextMode="MultiLine"
                                                        Width="400px"></asp:TextBox>
                                                </asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:TemplateField><asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Table
                                            ID="Table5"
                                            runat="server">
                                            <asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label51"
                                                        Font-Size="Small"
                                                        runat="server"
                                                        Text="Corrected: "></asp:Label><asp:CheckBox
                                                            ID="itmCorrected"
                                                            Checked='<%# Bind("Corrected") %>'
                                                            runat="server" />
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label6"
                                                        Font-Size="Small"
                                                        runat="server"
                                                        Text="Date: "></asp:Label><asp:Label
                                                            Font-Size="Small"
                                                            ID="itmDateCorrected"
                                                            runat="server"
                                                            Text='<%# Eval("DateCorrected", "{0:MM/dd/yyyy}") %>'
                                                            ForeColor="Black" />
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label7"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="Emp #: "></asp:Label><asp:DropDownList
                                                            Font-Size="X-Small"
                                                            ID="ddCorrectedBy"
                                                            SelectedValue='<%# Bind("CorrectedBy") %>'
                                                            runat="server"
                                                            DataSourceID="sqlEmployee"
                                                            DataTextField="EmployeeID"
                                                            DataValueField="EmployeeID" />
                                                </asp:TableCell></asp:TableRow></asp:Table></HeaderTemplate><ItemTemplate>
                                        <asp:Table
                                            ID="Table5"
                                            runat="server">
                                            <asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label5"
                                                        Font-Size="Small"
                                                        runat="server"
                                                        Text="Corrected: "></asp:Label><asp:CheckBox
                                                            ID="itmCorrected"
                                                            Checked='<%# Bind("Corrected") %>'
                                                            runat="server" />
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label6"
                                                        Font-Size="Small"
                                                        runat="server"
                                                        Text="Date: "></asp:Label><asp:Label
                                                            Font-Size="Small"
                                                            ID="itmDateCorrected"
                                                            runat="server"
                                                            Text='<%# Eval("DateCorrected", "{0:MM/dd/yyyy}") %>'
                                                            ForeColor="Black" />
                                                </asp:TableCell></asp:TableRow><asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Label
                                                        ID="Label7"
                                                        runat="server"
                                                        Font-Size="Small"
                                                        Text="Emp #: "></asp:Label><asp:DropDownList
                                                            Font-Size="X-Small"
                                                            ID="ddCorrectedBy"
                                                            SelectedValue='<%# Bind("CorrectedBy") %>'
                                                            runat="server"
                                                            DataSourceID="sqlEmployee"
                                                            DataTextField="EmployeeID"
                                                            DataValueField="EmployeeID" />
                                                </asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:TemplateField><asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Button
                                            ID="Button2"
                                            runat="server"
                                            Text="ADD" />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button
                                            ID="Button3"
                                            runat="server"
                                            Text="UPDATE" />
                                    </ItemTemplate>
                                </asp:TemplateField>


                            </Columns>
                            <EmptyDataRowStyle
                                HorizontalAlign="Center" />
                            <FooterStyle
                                BackColor="#FFFFCC"
                                ForeColor="#330099" />
                            <HeaderStyle
                                BackColor="#990000"
                                Font-Bold="True"
                                ForeColor="#FFFFCC" />
                            <PagerStyle
                                BackColor="#FFFFCC"
                                ForeColor="#330099"
                                HorizontalAlign="Center" />
                            <RowStyle
                                BackColor="White"
                                ForeColor="#330099" />
                            <SelectedRowStyle
                                BackColor="#FFCC66"
                                Font-Bold="True"
                                ForeColor="#663399" />
                            <SortedAscendingCellStyle
                                BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle
                                BackColor="#AF0101" />
                            <SortedDescendingCellStyle
                                BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle
                                BackColor="#7E0000" />
                        </asp:GridView>
                    </td>
                </tr>

            </table>
        </div>
        <asp:SqlDataSource
            ID="sqlViolations"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="SELECT CodeViolations.ViolationDate,
       CodeViolations.SortOrder,
       tblInspectionInformation.FormType,
       tblInspectionInformation.NoticeNo,
       tblInspectionInformation.MasterID,
       CodeViolations.CodeViolationID,
       CodeViolations.CodeID,
       CodeViolations.CodeDescription,
       CodeViolations.[INSPTRANS#],
       CodeViolations.Description,
       [CodeDescription],
       [Description] AS [Desc],
       CodeViolations.Corrected,
       CodeViolations.DateCorrected,
       CodeViolations.CorrectedBy,
       CodeViolations.Time,
       [Corrected] AS CorrectedViolations,
       Corrected AS UncorrectedViolations,
       tblInspectionInformation.FormType,
       CodeViolations.CodePrefix,
       CodeViolations.rowguid
FROM CodeViolations
    INNER JOIN tblInspectionInformation
        ON CodeViolations.[INSPTRANS#] = tblInspectionInformation.[INSPTRANS#]
WHERE (
          ((tblInspectionInformation.NoticeNo) = @NoticeNo)
          AND ((tblInspectionInformation.MasterID) = @MasterID)
          AND ((CodeViolations.DateCorrected) = @INSPDATE)
          AND ((tblInspectionInformation.FormType) = 'MAINT')
      )
      OR
      (
          ((tblInspectionInformation.NoticeNo) = @NoticeNo)
          AND ((tblInspectionInformation.MasterID) = @MasterID)
          AND ((CodeViolations.[INSPTRANS#]) = @INSPTRANSNo)
          AND ((tblInspectionInformation.FormType) = 'MAINT')
      )
ORDER BY CodeViolations.ViolationDate,
         CodeViolations.SortOrder;"
            UpdateCommand="ATempDelete"
            UpdateCommandType="StoredProcedure"
            DeleteCommand="Delete from CHEMDATA where [Chem Trade Name]='asdfsdlfhasdlfh'">
            <SelectParameters>
                <asp:ControlParameter
                    ControlID="HiddenNoticeNo"
                    Name="NoticeNo"
                    PropertyName="Value" />
                <asp:QueryStringParameter
                    Name="MasterID"
                    QueryStringField="MasterID" />
                <asp:ControlParameter
                    ControlID="InspDate"
                    Name="INSPDATE"
                    PropertyName="Text" />
                <asp:ControlParameter
                    ControlID="hidInspTransNo"
                    Name="INSPTRANSNo"
                    PropertyName="Value" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter
                    Name="LastName"
                    Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource
            ID="sqlInspections"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="SELECT [INSPTRANS#]
      ,[MasterID]
      ,[INSPDATE]
      ,[INSPINPECTOR]
      ,[EmployeeID]
      ,[INSPTYPE]
      ,[CodeID]
      ,[INSPVIOLATION#]
      ,[INSPCORRECTION#]
      ,[INSPCOMMENTS]
      ,[INSPTIME]
      ,[Partial]
      ,[INSPFinished]
      ,[PrimaryNoticeMasterId]
      ,[InspStatus]
      ,[InspComp]
      ,[SystemToolName]
      ,[NoticeNo]
      ,[NoticeNoDisplay]
      ,[Refered]
      ,[ReferedTo]
      ,[PresentedTo]
      ,[ReIinspection]
      ,[ReInspectionPeriod]
      ,[MethodOfDelivery]
      ,[FormType]
      ,[StartDate]
      ,[FinishDate]
      ,[TenentImprovment]
      ,[PresentedToPhone]
      ,[PresentedToAddr1]
      ,[PresentedToAddr2]
      ,[InspApproved]
      ,[OKToCover]
      ,[Temp_FinalOccApproved]
      ,[SortOrder]
      ,[FinalNotice]
      ,[UpdatedBy]
      ,[rowguid]
      ,[rowguid39]
      ,[InspText1]
      ,[InspText2]
      ,[InspText3]
      ,[InspText4]
      ,[SiteAddress]
  FROM [dbo].[v_Inspections]
WHERE NoticeNo = @NoticeNo AND MasterID = @MasterID
ORDER BY INSPDATE, SortOrder">
            <SelectParameters>
                <asp:QueryStringParameter
                    Name="NoticeNo"
                    QueryStringField="NoticeNo" />
                <asp:QueryStringParameter
                    Name="MasterID"
                    QueryStringField="MasterID" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource
            ID="sqlInspectors"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="
SELECT '' AS EmployeeID, '' AS Employee, '' AS Name, '' AS NTLogIn
UNION

SELECT tblEmployee.EmployeeID, [EmployeeID] + '  ' + [Name] AS Employee, tblEmployee.Name, tblEmployee.NTLogIn
FROM tblEmployee
WHERE (((tblEmployee.EmployeeID) Is Not Null));">
        </asp:SqlDataSource>
        <asp:SqlDataSource
            ID="sqlInspectionType"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="SELECT 
       NULL  AS CodeID,
       '' AS Code,
       '' AS CodeDescription
	   UNION
SELECT 
       CodeID,
       cast([CodeID] as varchar(25)) + ' ' + cast([CodeDescription] as varchar(200)) AS Code,
       CodeDescription
FROM tblCodeID
WHERE (
    (
        (tblCodeID.CodeID) &gt;= 630
        AND (tblCodeID.CodeID) &lt; 676
    )
      )
      OR (
    (
        (tblCodeID.CodeID) &gt;= 830
        AND (tblCodeID.CodeID) &lt; 876
    )
         )
      OR (
    (
        (tblCodeID.CodeID) &gt;= 930
        AND (tblCodeID.CodeID) &lt; 976
    )
         )
      OR (
    (
        (tblCodeID.CodeID) &gt;= 980
        AND (tblCodeID.CodeID) &lt; 997
    )
         )
      OR (
    (
        (tblCodeID.CodeID) = 102
        OR (tblCodeID.CodeID) = 106
        OR (tblCodeID.CodeID) = 130
        OR (tblCodeID.CodeID) = 140
        OR (tblCodeID.CodeID) = 150
        OR (tblCodeID.CodeID) = 160
        OR (tblCodeID.CodeID) = 170
    )
         )
      OR (
    (
        (tblCodeID.CodeID) &gt;= 1100
        AND (tblCodeID.CodeID) &lt;= 1197
    )
         )
      OR (
    (
        (tblCodeID.CodeID) &gt;= 1700
        AND (tblCodeID.CodeID) &lt;= 1797
    )
         )
      OR (
    (
        (tblCodeID.CodeID) = 920
        OR (tblCodeID.CodeID) = 925
    )
         )
      OR (((tblCodeID.CodeID) = 580))
      OR (((tblCodeID.CodeID) = 797))
      OR (
    (
        (tblCodeID.CodeID) = 1078
        OR (tblCodeID.CodeID) = 1079
        OR (tblCodeID.CodeID) = 1085
    )
         )
      OR (
    (
        (tblCodeID.CodeID) = 128
        OR (tblCodeID.CodeID) = 628
        OR (tblCodeID.CodeID) = 928
        OR (tblCodeID.CodeID) = 1028
        OR (tblCodeID.CodeID) = 1128
        OR (tblCodeID.CodeID) = 1228
        OR (tblCodeID.CodeID) = 1428
        OR (tblCodeID.CodeID) = 1328
    )
         )
ORDER BY CodeID;

"></asp:SqlDataSource>
        <asp:SqlDataSource
            ID="sqlMethodOfDelivery"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="SELECT '' as MethodOfDelivery 
UNION
SELECT MethodOfDelivery FROM tblMethodOfDelivery">
        </asp:SqlDataSource>
        <asp:HiddenField
            ID="hidRecordNumber"
            runat="server"
            Value="0" />
        <asp:HiddenField
            ID="hidInspTransNo"
            runat="server" />
        <asp:SqlDataSource
            ID="SqlReferredTo"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="SELECT '' as EmployeeID, '' as Employee, '' as Name, '' as NTLogIn
UNION
SELECT tblEmployee.EmployeeID, [EmployeeID] + '  ' + [Name] AS Employee, tblEmployee.Name, tblEmployee.NTLogIn
FROM tblEmployee
WHERE (((tblEmployee.EmployeeID) Is Not Null))">
        </asp:SqlDataSource>
        <asp:ScriptManager
            ID="ScriptManager1"
            runat="server">
        </asp:ScriptManager>
        <asp:HiddenField
            ID="HiddenNoticeNo"
            runat="server" />
        <asp:SqlDataSource
            ID="sqlCodePrefix"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="SELECT CodeLookUp.CodePrefix
FROM dbo.CodeLookUp
WHERE (
    (
        (CodeLookUp.CodePrefix) &lt;&gt; 'UMC-98'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA 72-99'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA 13-99'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA 13'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA 1142'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA 13-00'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA 25-00'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA 72-00'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'NFPA 820'
        AND (CodeLookUp.CodePrefix) &lt;&gt; 'IMC-98'
        AND (CodeLookUp.CodePrefix) &lt;&gt; '2003 IFC'
    )
      )
GROUP BY CodeLookUp.CodePrefix
ORDER BY CodeLookUp.CodePrefix DESC;">
        </asp:SqlDataSource>
        <asp:SqlDataSource
            ID="sqlCodeID"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="SELECT  Left(CodeLookUp.CodeID,30) as CodeDisplay, CodeLookUp.CodeID
FROM dbo.CodeLookUp
ORDER BY CodeLookUp.CodePrefix;">
        </asp:SqlDataSource>
        <asp:SqlDataSource
            ID="sqlEmployee"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FireInspection %>"
            SelectCommand="SELECT  tblEmployee.EmployeeID, tblEmployee.Name
FROM dbo.tblEmployee
ORDER BY tblEmployee.Name;">
        </asp:SqlDataSource>
        </form>

</asp:Content>

