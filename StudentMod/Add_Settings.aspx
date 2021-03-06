﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Settings.aspx.cs" MasterPageFile="~/StudentMod/StudentSubSiteMaster.master"
    Inherits="Add_Settings" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="FarPoint.Web.Spread" Namespace="FarPoint.Web.Spread" TagPrefix="FarPoint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/css/Registration.css" rel="stylesheet" type="text/css" />
    <link href="Styles/css/Commoncss.css" rel="Stylesheet" type="text/css" />
    <title></title>
    <link href="Styles/Style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function get(id, val, ind, tot, grd) {

            var finalvalue = 0;
            var value = document.getElementById(id).value;

            if (parseInt(tot) < parseInt(value)) {

                document.getElementById(id).value = "";
            }
            else {
                document.getElementById(id).value = value;
            }
            var tbl = document.getElementById(grd);
            var len = tbl.rows.length;

            for (i = 5; i <= val; i++) {

                var cell = tbl.rows[(+ind) + 1].cells[i].children[0].value;

                if (cell.trim() != "") {
                    finalvalue = parseInt(finalvalue) + parseInt(cell);
                }
            }
            if (finalvalue != 0) {

                if (parseInt(tot) < parseInt(finalvalue)) {

                    document.getElementById(id).value = "";
                }
                else {
                    document.getElementById(id).value = value;
                }
            }


        }





        function checkvalue(id) {

            var value = document.getElementById(id).value;
            var temp = "true";
            var count = 0;
            var month = new Array();
            month[0] = "0";
            month[1] = "1";
            month[2] = "2";
            month[3] = "3";
            month[4] = "4";
            month[5] = "5";
            month[6] = "6";
            month[7] = "7";
            month[8] = "8";
            month[9] = "9";
            for (j = 0; j < value.length; j++) {
                var res = value.charAt(j);
                for (i = 0; i < month.length; i++) {
                    if (res.trim() == month[i]) {
                        temp = "false";
                        count++;
                    }
                }
            }

            if (temp == "true" || temp == "false") {
                if (value.length != count) {
                    document.getElementById(id).value = "";
                    alert('Please Enter Numeric Values');
                }
            }
        }

        function minmax(value, min, max) {
            var empty = '';

            if (parseInt(value) < min) {
                return empty;
            }
            else if (parseInt(value) > max) {

                return empty;
            }
            else {
                return value;
            }

        }    
        
    </script>
    <style type="text/css">
        .modalPopup
        {
            background: rgba(54, 25, 25, .2);
           
        }
        .txe
        {
            text-align: center;
        }
        .tx        
        {
             pattern="[A-Za-z]{3}";
        }
        .dropdown-select
        {
            position: relative;
            width: 100%;
            margin: 0;
            padding: 6px 8px 6px 10px;
            height: 28px;
            line-height: 14px;
            font-size: 12px;
            color: #000000;
            background: #FFFFFF; /* "transparent" doesn't work with Opera */
            background: rgba(black, 0) !important;
            border: 0;
            border-radius: 0;
            -webkit-appearance: none;
        }
        .textbox
        {
            border: 1px solid #c4c4c4;
            height: 20px;
            width: 160px;
            font-size: 13px;
            text-transform: capitalize;
            padding: 4px 4px 4px 4px;
            border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            box-shadow: 0px 0px 8px #d9d9d9;
            -moz-box-shadow: 0px 0px 8px #d9d9d9;
            -webkit-box-shadow: 0px 0px 8px #d9d9d9;
        }
        
        .textbox1:hover
        {
            outline: none;
            border: 1px solid #7bc1f7;
            box-shadow: 0px 0px 8px #7bc1f7;
            -moz-box-shadow: 0px 0px 8px #7bc1f7;
            -webkit-box-shadow: 0px 0px 8px #7bc1f7;
        }
        option
        {
            /* Whatever color  you want */
            background-color: #00B8A3;
        }
        
        .MultipleSelectionDDL1
        {
            border: solid 1px #000000;
            overflow-y: scroll;
            background-color: #00B8A3;
            font-size: 11px;
            font-family: Calibri, Arial, Helvetica;
            line-height: normal;
        }
        
        
        .ajax__myTab
        {
            text-align: center;
        }
        .ajax__myTab .ajax__tab_header
        {
            font-family: Book Antiqua;
            text-align: initial;
            font-size: 16px;
            font-weight: bold;
            color: White;
            border-left: solid 1px #666666;
            border-bottom: thin 1px #666666;
        }
        .ajax__myTab .ajax__tab_outer
        {
            border: 1px solid black;
            width: 200px;
            height: 35px;
            border-top: 3px solid transparent;
        }
        .ajax__myTab .ajax__tab_inner
        {
            padding-left: 4px;
            background-color: indigo;
            width: 200px;
            height: 35px;
        }
        
        .ajax__myTab .ajax__tab_tab
        {
            height: 22px;
            padding: 4px;
            margin: 0;
            text-align: center;
        }
        .ajax__myTab .ajax__tab_hover .ajax__tab_outer
        {
            border-top: 3px solid #00527D;
        }
        .ajax__myTab .ajax__tab_hover .ajax__tab_inner
        {
            background-color: #A1C344;
            color: White;
        }
        .ajax__myTab .ajax__tab_hover .ajax__tab_tab
        {
            background-color: #A1C344;
            cursor: pointer;
            color: White;
        }
        .ajax__myTab .ajax__tab_active .ajax__tab_outer
        {
            border-top: 2px solid white;
            border-bottom: transparent;
            color: #B0E0E6;
        }
        .ajax__myTab .ajax__tab_active .ajax__tab_inner
        {
            background-color: #F36200;
            border-bottom: transparent;
        }
        .ajax__myTab .ajax__tab_active .ajax__tab_tab
        {
            background-color: #F36200;
            cursor: inherit;
            width: 120px;
        }
        .ajax__myTab .ajax__tab_body
        {
            border: 1.5px solid #F36200;
            padding: 6px;
            background-color: #FFFFFF;
        }
        .ajax__myTab .ajax__tab_disabled
        {
            color: #F1F1F1;
        }
        .btnapprove1
        {
            background: transparent;
        }
        .btnapprove1:hover
        {
            background-color: Orange;
            color: White;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <body>
        <script type="text/javascript">
            function addmarks(id) {

                var firstvalue = 100;
                var dep_value = document.getElementById("<%=txt_deprecom.ClientID %>").value;

                if (dep_value != "") {
                    var addvalue = id.value;
                    var finalvalue = 0;
                    var totalvalue = 0;
                    var tbl = document.getElementById("<%=religrid.ClientID %>");

                    var gridViewControls = tbl.getElementsByTagName("input");
                    var len = tbl.rows.length;
                    for (var i = 0; i < gridViewControls.length; i++) {
                        if (gridViewControls[i].name.indexOf("txt_percentageornumber") > 1) {
                            if (gridViewControls[i].value != "") {
                                finalvalue = parseInt(finalvalue) + parseInt(gridViewControls[i].value);
                            }
                        }

                    }

                    if (firstvalue >= finalvalue) {

                    }
                    else {
                        id.value = "";
                    }
                }
                else {
                    alert('Please Allocate');
                    id.value = "";
                }

            }

            function subfun(id) {
                var count = 100;
                count = count - id;

                if (count != 0) {
                    document.getElementById("<%=txt_mangquta.ClientID %>").value = count;
                }
                else {
                    document.getElementById("<%=txt_mangquta.ClientID %>").value = "";
                }
            }

            function secondmark(id) {
                var firstvalue = 100;
                if (firstvalue != "") {
                    var addvalue = id.value;
                    var finalvalue = 0;
                    var totalvalue = 0;
                    var firstfinal = 0;

                    var tbl = document.getElementById("<%=religrid.ClientID %>");

                    var gridViewControls = tbl.getElementsByTagName("input");
                    var len = tbl.rows.length;
                    for (var i = 0; i < gridViewControls.length; i++) {
                        if (gridViewControls[i].name.indexOf("txt_percentageornumber") > 1) {
                            if (gridViewControls[i].value != "") {
                                firstfinal = parseInt(firstfinal) + parseInt(gridViewControls[i].value);
                            }
                        }

                    }

                    if (firstfinal != 100) {

                        var second = document.getElementById("<%=gridcommunity.ClientID %>");

                        if (second != null) {
                            var secondlen = second.rows.length;

                            if (secondlen > 0) {
                                var lengthvalue = second.getElementsByTagName("input");
                                for (var j = 0; j < lengthvalue.length; j++) {
                                    if (lengthvalue[j].name.indexOf("txt_compercent") > 1) {
                                        if (lengthvalue[j].value != "") {
                                            finalvalue = parseInt(finalvalue) + parseInt(lengthvalue[j].value);
                                        }
                                    }

                                }
                                if (firstvalue >= finalvalue) {

                                }
                                else {
                                    id.value = "";
                                }
                            }
                        }
                    }
                    else {
                        id.value = "";
                    }

                }
            }

        </script>
        <div id="abl" runat="server">
            <center>
                <center>
                    <div>
                        <span class="fontstyleheader" style="color: Green;">Admission Setting Process</span></div>
                </center>
                <table id="Maintable1" runat="server" visible="false" style="border-bottom-style: solid;
                    border-top-style: solid; border-left-style: solid; border-right-style: solid;
                    background-color: #e3e3ef; border-width: 0.2px; border-color: indigo; border-radius: 5px;
                    width: 1300px;">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Batch :" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Width="55px"></asp:Label>
                            <%--<asp:TextBox ID="txtbatch" runat="server" ReadOnly="true" Width="91px" Font-Bold="True"
                            Font-Size="Medium" Font-Names="Book Antiqua"></asp:TextBox>--%>
                            <asp:Label ID="txtbatch" runat="server" Text="" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Width="40px" ForeColor="Brown"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label65" runat="server" Text="Type" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium"></asp:Label>
                            <asp:DropDownList ID="ddltype" runat="server" CssClass="dropdown-select" Font-Bold="True"
                                Font-Names="Book Antiqua" Font-Size="Medium" Width="110px" Height="32px" OnSelectedIndexChanged="ddltype_select"
                                AutoPostBack="True">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Edu Level" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium"></asp:Label>
                            <asp:DropDownList ID="ddledu" runat="server" Font-Bold="True" CssClass="dropdown-select"
                                OnSelectedIndexChanged="ddledu_SelectedIndexChanged" Font-Names="Book Antiqua"
                                Font-Size="Medium" Width="70px" Height="32px" AutoPostBack="True">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Degree" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Width="57px"></asp:Label>
                            <%--  <asp:DropDownList ID="ddldegree" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                            Font-Size="Medium" Width="78px" AutoPostBack="True" OnSelectedIndexChanged="ddldegreeselected">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>--%>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_Degree" runat="server" CssClass="Dropdown_Txt_Box1" ReadOnly="true"
                                        Enabled="false" Width="120px" Height="13px" Font-Bold="True" Font-Names="Book Antiqua"
                                        Style="position: absolute; left: 493px; top: 10px;" Font-Size="Medium">--Select--</asp:TextBox>
                                    <asp:Panel ID="PDegree" runat="server" CssClass="MultipleSelectionDDL1" Height="195px">
                                        <asp:CheckBox ID="checkDegree" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                            Font-Size="Medium" Text="Select All" AutoPostBack="true" OnCheckedChanged="checkDegree_CheckedChanged" />
                                        <asp:CheckBoxList ID="cheklist_Degree" runat="server" Font-Size="Medium" Font-Bold="True"
                                            Font-Names="Book Antiqua" AutoPostBack="true" OnSelectedIndexChanged="cheklist_Degree_SelectedIndexChanged">
                                        </asp:CheckBoxList>
                                    </asp:Panel>
                                    <asp:PopupControlExtender ID="PopupControlExtender3" runat="server" TargetControlID="txt_Degree"
                                        PopupControlID="pDegree" Position="Bottom">
                                    </asp:PopupControlExtender>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Dept" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Style="left: 620px; top: 5px; position: absolute;"></asp:Label>
                            <%-- <asp:DropDownList ID="ddldept" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                            Font-Size="Medium" Width="190px" AutoPostBack="True">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>--%>
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_Branch" runat="server" CssClass="Dropdown_Txt_Box1" ReadOnly="true"
                                        Enabled="false" Width="120px" Height="13px" Font-Bold="True" Font-Names="Book Antiqua"
                                        Style="position: absolute; left: 665px; top: 10px;" Font-Size="Medium">--Select--</asp:TextBox>
                                    <asp:Panel ID="PBranch" runat="server" CssClass="MultipleSelectionDDL1" Height="250px">
                                        <asp:CheckBox ID="checkBranch" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                            Font-Size="Medium" Text="Select All" AutoPostBack="true" OnCheckedChanged="checkBranch_CheckedChanged" />
                                        <asp:CheckBoxList ID="cheklist_Branch" runat="server" Font-Size="Medium" Font-Bold="True"
                                            Font-Names="Book Antiqua" AutoPostBack="true" OnSelectedIndexChanged="cheklist_Branch_SelectedIndexChanged">
                                        </asp:CheckBoxList>
                                    </asp:Panel>
                                    <asp:PopupControlExtender ID="PopupControlExtender4" runat="server" TargetControlID="txt_Branch"
                                        PopupControlID="pBranch" Position="Bottom">
                                    </asp:PopupControlExtender>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <%--<td>
                            <asp:Button ID="Button1" CssClass="btnapprove1" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Text="Go" Width="44px" Style="border: 1px solid indigo; left: 818px;
                                top: 5px; position: absolute;" OnClick="Button1_Click" />
                        </td>--%>
                    </tr>
                    <tr>
                        <%--<td>
                            <asp:Label ID="lblregligionmain" runat="server" Text="Religion" Font-Bold="True"
                                Font-Names="Book Antiqua" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="upd1" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_Religion" runat="server" CssClass="Dropdown_Txt_Box1" ReadOnly="true"
                                        Enabled="false" Width="120px" Height="13px" Style="position: absolute; left: 100px;
                                        top: 46px;" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium">--Select--</asp:TextBox>
                                    <asp:Panel ID="panelreligion" runat="server" CssClass="MultipleSelectionDDL1" Height="150px"
                                        Width="120px">
                                        <asp:CheckBox ID="cbreligion" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                            Font-Size="Medium" Text="Select All" AutoPostBack="true" OnCheckedChanged="cbreligion_Changed" />
                                        <asp:CheckBoxList ID="cblreligion" runat="server" Font-Size="Medium" Font-Bold="True"
                                            OnSelectedIndexChanged="cblreligion_SelectedIndexChanged" Font-Names="Book Antiqua"
                                            AutoPostBack="true">
                                        </asp:CheckBoxList>
                                    </asp:Panel>
                                    <asp:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="txt_Religion"
                                        PopupControlID="panelreligion" Position="Bottom">
                                    </asp:PopupControlExtender>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>--%>
                        <%--    <td>
                            <asp:Label ID="lblcommunitymain" runat="server" Text="Community" Font-Bold="True"
                                Font-Names="Book Antiqua" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="upd2" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_Community" runat="server" CssClass="Dropdown_Txt_Box1" ReadOnly="true"
                                        Enabled="false" Width="135px" Height="13px" Font-Bold="True" Font-Names="Book Antiqua"
                                        Font-Size="Medium">--Select--</asp:TextBox>
                                    <asp:Panel ID="panelcommunity" runat="server" CssClass="MultipleSelectionDDL1" Height="250px">
                                        <asp:CheckBox ID="cbcommunity" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                            Font-Size="Medium" Text="Select All" AutoPostBack="true" OnCheckedChanged="cbcommunity_Changed" />
                                        <asp:CheckBoxList ID="cblcommunity" runat="server" Font-Size="Medium" Font-Bold="True"
                                            Font-Names="Book Antiqua" OnSelectedIndexChanged="cblcommunity_SelectedIndexChanged"
                                            AutoPostBack="true">
                                        </asp:CheckBoxList>
                                    </asp:Panel>
                                    <asp:PopupControlExtender ID="PopupControlExtender2" runat="server" TargetControlID="txt_Community"
                                        PopupControlID="panelcommunity" Position="Bottom">
                                    </asp:PopupControlExtender>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>--%>
                        <td>
                            <asp:RadioButton ID="rdbCompulsory" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Text="Compulsory" GroupName="orginal" Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdbancillary" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Text="Ancillary" GroupName="orginal" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdblanguage" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Text="Language" GroupName="orginal" />
                        </td>
                    </tr>
                </table>
                <%--17.06.16--%>
                <table id="Maintable" runat="server" visible="false" style="border-radius: 5px; position: absolute;
                    margin-left: 18px; margin-top: 74px; width: 979px; background-color: #e3e3ef;">
                    <tr>
                        <td>
                            <asp:Label ID="lbl_collegename" Text="College" runat="server" CssClass="txtheight"
                                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_college" runat="server" CssClass="textbox" Height="35px"
                                Width="250px" AutoPostBack="true" OnSelectedIndexChanged="ddl_college_selectedindex">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblregligionmain" runat="server" Text="Religion" Font-Bold="True"
                                Font-Names="Book Antiqua" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="upd1" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_Religion" runat="server" CssClass="Dropdown_Txt_Box1" ReadOnly="true"
                                        Enabled="false" Width="120px" Height="25px" Font-Bold="True" Font-Names="Book Antiqua"
                                        Font-Size="Medium">--Select--</asp:TextBox>
                                    <asp:Panel ID="panelreligion" runat="server" CssClass="MultipleSelectionDDL1" Height="150px"
                                        Width="124px">
                                        <asp:CheckBox ID="cbreligion" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                            Font-Size="Medium" Text="Select All" AutoPostBack="true" OnCheckedChanged="cbreligion_Changed" />
                                        <asp:CheckBoxList ID="cblreligion" runat="server" Font-Size="Medium" Font-Bold="True"
                                            OnSelectedIndexChanged="cblreligion_SelectedIndexChanged" Font-Names="Book Antiqua"
                                            AutoPostBack="true">
                                        </asp:CheckBoxList>
                                    </asp:Panel>
                                    <asp:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="txt_Religion"
                                        PopupControlID="panelreligion" Position="Bottom">
                                    </asp:PopupControlExtender>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td>
                            <asp:Label ID="lblcommunitymain" runat="server" Text="Community" Font-Bold="True"
                                Font-Names="Book Antiqua" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="upd2" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_Community" runat="server" CssClass="Dropdown_Txt_Box1" ReadOnly="true"
                                        Enabled="false" Width="120px" Height="25px" Font-Bold="True" Font-Names="Book Antiqua"
                                        Font-Size="Medium">--Select--</asp:TextBox>
                                    <asp:Panel ID="panelcommunity" runat="server" CssClass="MultipleSelectionDDL1" Height="250px"
                                        Width="124px">
                                        <asp:CheckBox ID="cbcommunity" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                            Font-Size="Medium" Text="Select All" AutoPostBack="true" OnCheckedChanged="cbcommunity_Changed" />
                                        <asp:CheckBoxList ID="cblcommunity" runat="server" Font-Size="Medium" Font-Bold="True"
                                            Font-Names="Book Antiqua" OnSelectedIndexChanged="cblcommunity_SelectedIndexChanged"
                                            AutoPostBack="true">
                                        </asp:CheckBoxList>
                                    </asp:Panel>
                                    <asp:PopupControlExtender ID="PopupControlExtender2" runat="server" TargetControlID="txt_Community"
                                        PopupControlID="panelcommunity" Position="Bottom">
                                    </asp:PopupControlExtender>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo_reli" runat="server" GroupName="rr" Text="Religion" Checked="true"
                                AutoPostBack="true" Width="92px" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium"
                                OnCheckedChanged="rdo_reli_CheckedChanged" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo_comm" Width="110px" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" runat="server" GroupName="rr" Text="Community" AutoPostBack="true"
                                OnCheckedChanged="rdo_comm_CheckedChanged" />
                        </td>
                        <td>
                            <asp:Button ID="Button1" CssClass="btnapprove1" Visible="false" runat="server" Font-Bold="True"
                                Font-Names="Book Antiqua" Font-Size="Medium" Text="Go" Width="44px" Height=" 31px"
                                Style="border: 1px solid indigo; left: 918px; top: 5px; position: absolute;"
                                OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr align="right">
                        <td>
                            <asp:Button ID="Button7" runat="server" CssClass="btnapprove1" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Text="Set" Width="99px" Style="margin-top: 730px; margin-left: 205px;
                                position: absolute; border: 2px solid orange;" OnClick="btnset_Click" />
                            <asp:Button ID="Button8" runat="server" CssClass="btnapprove1" Font-Bold="True" Font-Names="Book Antiqua"
                                Font-Size="Medium" Text="Reset" Width="99px" Style="margin-top: 730px; margin-left: 315px;
                                position: absolute; border: 2px solid orange;" OnClick="btnreset_Click" />
                        </td>
                    </tr>
                </table>
                <asp:TabContainer ID="TabContainer1" runat="server" Visible="true" Height="643px"
                    CssClass="ajax__myTab" BackColor="Lavender" Style="margin-top: 30px; margin-left: 11px;
                    margin-right: 0px;" Width="980" ActiveTabIndex="0" OnActiveTabChanged="TabContainer1_ActiveTabChanged"
                    AutoPostBack="true">
                    <asp:TabPanel ID="tabpanel4" runat="server" HeaderText="Religion Setting" Font-Names="Book Antiqua"
                        Font-Size="Medium" TabIndex="4" Visible="false">
                        <%--17.06.16--%>
                        <ContentTemplate>
                            <br />
                            <br />
                            <br />
                            <br />
                            <center>
                                <span style="font-weight: bold;">SANCTIONED STRENGTH FOR <span id="selecttype" runat="server"
                                    style="font-weight: bold;"></span></span>
                            </center>
                            <br />
                            <div id="maindiv" runat="server" visible="false" style="width: 95%; height: 500px;
                                background-color: #F8F8F8; margin: 5px; border: 2px brown solid; -webkit-border-radius: 10px;
                                -moz-border-radius: 10px; border-radius: 10px; padding: 10px; margin: 0 auto;">
                                <center>
                                    <table style="line-height: 50px;">
                                        <tr>
                                            <td colspan="4" style="text-align: center">
                                                <span style="font-weight: bold;">ALLOCATION OF SEATS </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="font-weight: bold;">Department Recommendation </span>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_deprecom" runat="server" CssClass="textbox textbox1 txe"
                                                    MaxLength="4" Width="100px" placeholder="in %" onkeyup="this.value=minmax(this.value,0,100)"
                                                    onblur="return subfun(this.value)"></asp:TextBox><span style="color: Red;">*</span>
                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txt_deprecom"
                                                    FilterType="Custom,Numbers" ValidChars=".% ">
                                                </asp:FilteredTextBoxExtender>
                                            </td>
                                            <td>
                                                <span style="font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Management
                                                    Quota (Principal Recommendation) </span>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_mangquta" runat="server" CssClass="textbox textbox1 txe"
                                                    MaxLength="4" Width="100px" placeholder="in %" onkeyup="this.value=minmax(this.value,0,100)"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender21" runat="server" TargetControlID="txt_mangquta"
                                                    FilterType="Custom,Numbers" ValidChars=".% ">
                                                </asp:FilteredTextBoxExtender>
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                                <br />
                                <div>
                                    <center>
                                        <div id="religiondiv" runat="server" visible="false" style="width: 400px; height: 300px;
                                            background-color: #F8F8F8; margin: 5px; border: 2px lightblue solid; -webkit-border-radius: 10px;
                                            -moz-border-radius: 10px; border-radius: 10px; padding: 10px; margin: 0 auto;
                                            float: left;">
                                            <div style="width: 400px; height: 300px; overflow-y: scroll; float: left;">
                                                <asp:GridView ID="religrid" runat="server" AutoGenerateColumns="false" CellPadding="4"
                                                    OnRowDataBound="religrid_Onrowdatabound" GridLines="None" Width="350px" HeaderStyle-BackColor="Brown"
                                                    HeaderStyle-ForeColor="White">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="S.No">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblsno" runat="server" Font-Bold="true" Text="<%# Container.DisplayIndex+1 %>"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Religion" HeaderStyle-HorizontalAlign="Left">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblrelig" runat="server" Font-Bold="true" ForeColor="Green" Text='<%# Eval("TextVal") %>'></asp:Label>
                                                                <asp:Label ID="lblreligcode" runat="server" Visible="false" Text='<%# Eval("TextCode") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Percentage">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txt_percentageornumber" runat="server" CssClass="textbox textbox1 txe"
                                                                    Width="100px" onblur="return addmarks(this)" placeholder="in %" onkeyup="this.value=minmax(this.value,0,100)"
                                                                    MaxLength="4"></asp:TextBox>
                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender21" runat="server" TargetControlID="txt_percentageornumber"
                                                                    FilterType="Custom,Numbers" ValidChars=".% ">
                                                                </asp:FilteredTextBoxExtender>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                        <div id="communitydiv" runat="server" visible="false" style="width: 413px; height: 300px;
                                            background-color: #F8F8F8; margin: 5px; border: 2px lightblue solid; -webkit-border-radius: 10px;
                                            -moz-border-radius: 10px; border-radius: 10px; padding: 10px; margin: 0 auto;
                                            float: left; margin-left: 15px;">
                                            <div style="width: 400px; height: 300px; overflow-y: scroll; float: left; margin-left: 15px;">
                                                <asp:GridView ID="gridcommunity" runat="server" AutoGenerateColumns="false" CellPadding="4"
                                                    GridLines="None" Width="350px" OnRowDataBound="gridcommunity_Onrowdatabound"
                                                    HeaderStyle-BackColor="Brown" HeaderStyle-ForeColor="White">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="S.No">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblson1" runat="server" Font-Bold="true" Text="<%# Container.DisplayIndex+1 %>"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Community" HeaderStyle-HorizontalAlign="Left">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblcommunity" runat="server" Font-Bold="true" ForeColor="Green" Text='<%# Eval("TextVal") %>'></asp:Label>
                                                                <asp:Label ID="lblcommunitycode" runat="server" Visible="false" Text='<%# Eval("TextCode") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Percentage">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txt_compercent" runat="server" CssClass="textbox textbox1 txe" Width="100px"
                                                                    onkeyup="this.value=minmax(this.value,0,100)" placeholder="in %" onblur="return secondmark(this)"
                                                                    MaxLength="4"></asp:TextBox>
                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender21" runat="server" TargetControlID="txt_compercent"
                                                                    FilterType="Custom,Numbers" ValidChars=".% ">
                                                                </asp:FilteredTextBoxExtender>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </center>
                                </div>
                            </div>
                            <center>
                                <div id="reportdiv" runat="server" visible="false">
                                    <br />
                                    <br />
                                    <br />
                                    <asp:GridView ID="report_grid" runat="server" OnRowDataBound="report_grid_DataBound">
                                    </asp:GridView>
                                    <br />
                                    <div style="text-align: right;">
                                        <asp:Button ID="btnprint" runat="server" Text="Print PDF" OnClick="Click_pdf" />
                                    </div>
                                </div>
                            </center>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="tabpanel2" runat="server" HeaderText="Subject" Font-Names="Book Antiqua"
                        Font-Size="Medium" TabIndex="2" Visible="false">
                        <ContentTemplate>
                            <center>
                                <div style="height: 495px; width: 964px; overflow-y: scroll">
                                    <FarPoint:FpSpread ID="FpSpread1" runat="server" BorderColor="Black" BorderStyle="Solid"
                                        BorderWidth="1px" AutoPostBack="true" OnButtonCommand="FpSpread1_command" Style="top: 200px;
                                        position: absolute;" Visible="false">
                                        <Sheets>
                                            <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black" SelectionForeColor="#A52A2A"
                                                SelectionBackColor="#FFE0A3">
                                            </FarPoint:SheetView>
                                        </Sheets>
                                    </FarPoint:FpSpread>
                                    <FarPoint:FpSpread ID="FpSpread2" runat="server" BorderColor="Black" BorderStyle="Solid"
                                        BorderWidth="1px" AutoPostBack="true" Style="top: 200px; position: absolute;"
                                        Visible="false">
                                        <Sheets>
                                            <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black" SelectionForeColor="#A52A2A"
                                                SelectionBackColor="#FFE0A3">
                                            </FarPoint:SheetView>
                                        </Sheets>
                                    </FarPoint:FpSpread>
                                    <FarPoint:FpSpread ID="FpSpread4" runat="server" BorderColor="Black" BorderStyle="Solid"
                                        BorderWidth="1px" AutoPostBack="true" Style="top: 200px; position: absolute;"
                                        Visible="false">
                                        <Sheets>
                                            <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black" SelectionForeColor="#A52A2A"
                                                SelectionBackColor="#FFE0A3">
                                            </FarPoint:SheetView>
                                        </Sheets>
                                    </FarPoint:FpSpread>
                                    <FarPoint:FpSpread ID="FpSpread5" runat="server" BorderColor="Black" BorderStyle="Solid"
                                        BorderWidth="1px" AutoPostBack="true" Style="top: 200px; position: absolute;"
                                        Visible="false">
                                        <Sheets>
                                            <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black" SelectionForeColor="#A52A2A"
                                                SelectionBackColor="#FFE0A3">
                                            </FarPoint:SheetView>
                                        </Sheets>
                                    </FarPoint:FpSpread>
                                </div>
                            </center>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="tabpanel3" runat="server" HeaderText="Column Header" Font-Names="Book Antiqua"
                        Font-Size="Medium" TabIndex="3">
                        <ContentTemplate>
                            <center>
                                <asp:Panel ID="panel7" runat="server" Visible="false">
                                    <br />
                                    <div class="panel6" id="Div2" style="text-align: center; width: 800px; font-family: Book Antiqua;
                                        font-size: medium; font-weight: bold">
                                        <br />
                                        <span style="font-size: large; color: Green;">Header Settings</span>
                                        <br />
                                        <br />
                                        <span>
                                            <asp:RadioButton ID="rdb_formate1" runat="server" Text="Format 1" GroupName="bb" />
                                        </span><span>
                                            <asp:RadioButton ID="rdb_formate2" runat="server" Text="Format 2" GroupName="bb" /></span>
                                        <br />
                                        <br />
                                        <FarPoint:FpSpread ID="FpSpread6" runat="server" BorderColor="Black" BorderStyle="Solid"
                                            BorderWidth="1px" AutoPostBack="true" OnButtonCommand="FpSpread6_command" Visible="false"
                                            Style="float: left;">
                                            <Sheets>
                                                <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black">
                                                </FarPoint:SheetView>
                                            </Sheets>
                                        </FarPoint:FpSpread>
                                        <FarPoint:FpSpread ID="FpSpread7" runat="server" BorderColor="Black" BorderStyle="Solid"
                                            BorderWidth="1px" AutoPostBack="true" Visible="false" Style="float: left; margin-left: 10px;">
                                            <Sheets>
                                                <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black">
                                                </FarPoint:SheetView>
                                            </Sheets>
                                        </FarPoint:FpSpread>
                                    </div>
                                </asp:Panel>
                            </center>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="tabpanel6" runat="server" HeaderText="Orderby Settings" Font-Names="Book Antiqua"
                        Font-Size="Medium" TabIndex="4">
                        <ContentTemplate>
                            <center>
                                <asp:Panel ID="panel2" runat="server" Visible="false">
                                    <br />
                                    <div class="panel6" id="Div1" style="text-align: center; width: 800px; font-family: Book Antiqua;
                                        font-size: medium; font-weight: bold">
                                        <br />
                                        <br />
                                        <br />
                                        <span style="font-size: large; color: Green;">Orderby Settings</span>
                                        <br />
                                        <br />
                                        <br />
                                        <center>
                                            <asp:Label ID="lbl_percentagesetting" runat="server" Text="Order By Percentage"></asp:Label>
                                            <asp:DropDownList ID="ddl_percentagesetting" runat="server" CssClass="textbox textbox1 dropdown-select"
                                                Width="260px" Height="35px">
                                            </asp:DropDownList>
                                            <asp:CheckBox ID="chkIncMarks" runat="server" Text="Include Marks" Checked="false" />
                                            <asp:LinkButton ID="lnkbtn_religion" runat="server" Text="Religion Settings" OnClick="lnkbtn_religion_click"></asp:LinkButton>
                                            <asp:CheckBox ID="cb_attempt" runat="server" Visible="false" Checked="false" AutoPostBack="true"
                                                OnCheckedChanged="cb_attempt_CheckedChanged" />
                                            <asp:RadioButton ID="rdo_percent" Enabled="false" Visible="false" runat="server"
                                                GroupName="r1" Text="Percentage" />
                                            <asp:RadioButton ID="rdo_tot" Enabled="false" Visible="false" runat="server" GroupName="r1"
                                                Text="Total Mark" />
                                        </center>
                                        <br />
                                        <FarPoint:FpSpread ID="FpSpread10" runat="server" BorderColor="Black" BorderStyle="Solid"
                                            BorderWidth="1px" AutoPostBack="true" OnButtonCommand="FpSpread10_command" Visible="false"
                                            Style="margin-right: 10px">
                                            <Sheets>
                                                <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black">
                                                </FarPoint:SheetView>
                                            </Sheets>
                                        </FarPoint:FpSpread>
                                        <FarPoint:FpSpread ID="FpSpread8" runat="server" BorderColor="Black" BorderStyle="Solid"
                                            BorderWidth="1px" AutoPostBack="true" OnButtonCommand="FpSpread8_command" Visible="false"
                                            Style="margin-left: 290px; margin-top: -203px">
                                            <Sheets>
                                                <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black">
                                                </FarPoint:SheetView>
                                            </Sheets>
                                        </FarPoint:FpSpread>
                                        <FarPoint:FpSpread ID="FpSpread9" runat="server" BorderColor="Black" BorderStyle="Solid"
                                            BorderWidth="1px" AutoPostBack="true" Visible="false" Style="float: left; margin-left: 670px;
                                            margin-top: -433px">
                                            <Sheets>
                                                <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black">
                                                </FarPoint:SheetView>
                                            </Sheets>
                                        </FarPoint:FpSpread>
                                        <div style="z-index: 1000; float: left; width: 950px; height: 500px; margin-top: -228px;
                                            margin-left: 630px;">
                                        </div>
                                    </div>
                                </asp:Panel>
                            </center>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="tabpanel1" runat="server" HeaderText="Religion " Font-Names="Book Antiqua"
                        CssClass="ajax__myTab1" Font-Size="Medium" Visible="false" TabIndex="1">
                        <ContentTemplate>
                            <center>
                                <br />
                                <br />
                                <div style="width: 950px; height: 500px; margin-top: 40px; overflow-y: scroll;">
                                    <asp:GridView ID="religiongrid" runat="server" OnRowDataBound="religiondataBound"
                                        CellPadding="4" GridLines="None" OnDataBound="OnDataBound" HeaderStyle-BackColor="#393965"
                                        HeaderStyle-ForeColor="White">
                                    </asp:GridView>
                                    <FarPoint:FpSpread ID="FpSpread3" runat="server" BorderColor="Black" BorderStyle="Solid"
                                        BorderWidth="1px" autopostback="true" ClientAutoCalculation="true" OnUpdateCommand="FpSpread3_command"
                                        Style="line-height: 30px; width: 650px;" Visible="false">
                                        <Sheets>
                                            <FarPoint:SheetView SheetName="Sheet1" GridLineColor="Black" SelectionBackColor="#FFE0A3">
                                            </FarPoint:SheetView>
                                        </Sheets>
                                    </FarPoint:FpSpread>
                                </div>
                            </center>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="tabpanel5" runat="server" HeaderText="List Setting" Visible="false"
                        Font-Names="Book Antiqua" Font-Size="Medium" TabIndex="5">
                    </asp:TabPanel>
                </asp:TabContainer>
                </asp:Panel>
            </center>
            <center>
                <div id="regionsettings" runat="server" visible="false" style="height: 100%; z-index: 1000;
                    width: 100%; background-color: rgba(54, 25, 25, .2); position: absolute; top: 0;
                    left: 0px;">
                    <asp:ImageButton ID="ImageButton2" runat="server" Width="792px" Height="40px" ImageUrl="~/images/close.png"
                        Style="height: 30px; width: 30px; position: absolute; margin-top: 191px; margin-left: 224px;"
                        OnClick="imagebtnpopclose1_Click" />
                    <center>
                        <div id="Div4" runat="server" class="table" style="background-color: White; height: 188px;
                            width: 467px; border: 5px solid #0CA6CA; border-top: 25px solid #0CA6CA; margin-top: 200px;
                            border-radius: 10px;">
                            <br />
                            <br />
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_columnordertype" Text="Type" Font-Bold="True" Font-Names="Book Antiqua"
                                            runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Button ID="btn_addtype" runat="server" Text="+" Height="30px" Width="30px" CssClass="textbox textbox1 btn1"
                                            OnClick="btn_addtype_OnClick" />
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddl_coltypeadd" Height="30px" Width="150px" runat="server"
                                            CssClass="textbox textbox1 ddlheight4" OnSelectedIndexChanged="ddl_coltypeadd_selectedindexchange"
                                            AutoPostBack="true">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:Button ID="btn_deltype" runat="server" Text="-" Height="30px" Width="30px" CssClass="textbox textbox1 btn1"
                                            OnClick="btn_deltype_OnClick" />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" Text="Priority" Font-Bold="True" Font-Names="Book Antiqua"
                                            runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddl_priority" Height="30px" Width="60px" runat="server" CssClass="textbox1 ddlheight4"
                                            OnSelectedIndexChanged="ddl_priority_selectedindexchange" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="rdb_reli" runat="server" Text=" Religion" Font-Bold="True" Font-Names="Book Antiqua"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                            <ContentTemplate>
                                                <asp:TextBox ID="txt_region" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                                    Font-Size="Medium" CssClass="textbox textbox1 txtheight" ReadOnly="true" Enabled="true">--Select--</asp:TextBox>
                                                <asp:Panel ID="Panel8" runat="server" BackColor="White" BorderColor="Black" BorderStyle="ridge"
                                                    BorderWidth="2px" CssClass="MultipleSelectionDDL1" Width="164px" Height="250px"
                                                    Style="position: absolute;">
                                                    <asp:CheckBox ID="cb_region1" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium"
                                                        runat="server" Text="Select All" AutoPostBack="true" OnCheckedChanged="cbreligion1_Changed" />
                                                    <asp:CheckBoxList ID="cbl_region1" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium"
                                                        runat="server" AutoPostBack="true" OnSelectedIndexChanged="cblreligion1_SelectedIndexChanged">
                                                    </asp:CheckBoxList>
                                                </asp:Panel>
                                                <asp:PopupControlExtender ID="PopupControlExtender8" runat="server" TargetControlID="txt_region"
                                                    PopupControlID="Panel8" Position="Bottom">
                                                </asp:PopupControlExtender>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td colspan="2">
                                        <asp:Button ID="btn_saveheader" runat="server" Text="Save" Height="30px" Width="50px"
                                            CssClass="textbox textbox1 btn1" OnClick="btnsavegroupbt_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </center>
                </div>
            </center>
            <center>
                <div id="imgdiv33" runat="server" visible="false" style="height: 100%; z-index: 1000;
                    width: 100%; background-color: rgba(54, 25, 25, .2); position: absolute; top: 0;
                    left: 0px;">
                    <center>
                        <div id="panel_description11" runat="server" visible="false" class="table" style="background-color: White;
                            height: 120px; width: 430px; border: 5px solid #0CA6CA; border-top: 25px solid #0CA6CA;
                            margin-top: 200px; border-radius: 10px;">
                            <table>
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="lbl_description111" runat="server" Text="Description" Font-Bold="true"
                                            Font-Size="Medium"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:TextBox ID="txt_description11" runat="server" Width="400px" Style="font-family: 'Book Antiqua';
                                            margin-left: 13px" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Button ID="btn_adddesc1" runat="server" Text="Add" Font-Bold="True" Font-Names="Book Antiqua"
                                            Font-Size="Medium" CssClass="textbox btn" Height="30px" OnClick="btndescpopadd_Click" />
                                        <asp:Button ID="btn_exitdesc1" runat="server" Text="Exit" Height="30px" Font-Bold="True"
                                            Font-Names="Book Antiqua" Font-Size="Medium" CssClass="textbox btn" OnClick="btndescpopexit_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </center>
                </div>
            </center>
        </div>
    </body>
</asp:Content>
