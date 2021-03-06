﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TransportMod/TransportSubSiteMaster.master"
    AutoEventWireup="true" CodeFile="travellers.aspx.cs" Inherits="travellers" %>

<%@ Register Assembly="FarPoint.Web.Spread,  Version=5.0.3520.2008, Culture=neutral, PublicKeyToken=327c3516b1b18457"
    Namespace="FarPoint.Web.Spread" TagPrefix="FarPoint" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="FarPoint.Web.Spread" Namespace="FarPoint.Web.Spread" TagPrefix="FarPoint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <link href="Styles/css/Style.css" rel="Stylesheet" type="text/css" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    <div style="top: 60px; position: absolute;">
        <div>
            <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/Menu/Top Band-2.jpg" Style="position: absolute;
                width: 995px; height: 21px; margin-bottom: 0px; top: 8px; left: 10px;">
                <%-- style="top: 71px; left: 0px; position: absolute; width: 960px"--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Travellers Photo List" Font-Bold="True"
                    Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="White"></asp:Label>&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                    ID="LinkButton3" runat="server" CausesValidation="False" Font-Bold="True" 
                    Font-Names="Book Antiqua" Font-Size="Small" ForeColor="White" 
                    PostBackUrl="~/reports.aspx">Back</asp:LinkButton>
&nbsp;&nbsp;<asp:LinkButton ID="lb1" runat="server" CausesValidation="False" Font-Bold="True" 
                    Font-Names="Book Antiqua" Font-Size="Small" ForeColor="White" 
                    PostBackUrl="~/Default_login.aspx">Home</asp:LinkButton>
&nbsp;
                <asp:LinkButton ID="lb2" runat="server" onclick="lb2_Click" Font-Bold="True"
                    Font-Names="Book Antiqua" Font-Size="Small" ForeColor="White" CausesValidation="False">Logout</asp:LinkButton>
                <%--<asp:Label ID="lbltitle" runat="server" Font-Names="Book Antiqua" 
                    Font-Size="Large" ForeColor="White"></asp:Label>--%>
            </asp:Panel>
        </div>
    </div>
            </ContentTemplate>
    </asp:UpdatePanel>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
    <asp:Panel ID="Panel5" runat="server" Style="border-style: solid; border-width: thin;
        border-color: Black; background: White; top: 100px; width: 600px; height: 56px;
        left: 50px; position: absolute;">
        <table>
            <tr>
                <td align="right">
                    <asp:Label ID="lblvehicleid" runat="server" Text="Vehicle ID" Font-Bold="true" Font-Names="Book Antiqua"
                        Font-Size="Medium"></asp:Label>
                </td>
                <td align="left">
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="Vehicleid" runat="server" Width="122px" Font-Bold="true"></asp:TextBox>
                            <asp:Panel ID="vehiclpan" runat="server" CssClass="multxtpanel" Style="font-family: 'Book Antiqua';
                                position: absolute;" Font-Bold="True" Font-Names="Book Antiqua" Width="124px"
                                Height="350px">
                                <asp:CheckBox ID="vehiclecheck" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                    Font-Size="Medium" OnCheckedChanged="vehiclecheck_CheckedChanged" Text="Select All"
                                    AutoPostBack="True" />
                                <asp:CheckBoxList ID="vehiclechecklist" runat="server" Font-Size="Medium" AutoPostBack="True"
                                    OnSelectedIndexChanged="vehiclechecklist_SelectedIndexChanged" Font-Bold="True"
                                    Font-Names="Book Antiqua">
                                </asp:CheckBoxList>
                            </asp:Panel>
                            <asp:PopupControlExtender ID="PopupControlExtender3" runat="server" TargetControlID="Vehicleid"
                                PopupControlID="vehiclpan" Position="Bottom">
                            </asp:PopupControlExtender>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td align="right">
                    <asp:Label ID="lblrouteid" runat="server" Text="Route ID" Font-Bold="true" Font-Names="Book Antiqua"
                        Font-Size="Medium"></asp:Label>
                </td>
                <td align="left">
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txt_route" runat="server" Width="122px" Font-Bold="true"></asp:TextBox>
                            <asp:Panel ID="routeid" runat="server" CssClass="multxtpanel" Style="font-family: 'Book Antiqua';
                                position: absolute;" Font-Bold="True" Font-Names="Book Antiqua" Width="124px"
                                Height="350px">
                                <asp:CheckBox ID="checkro" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                                    Font-Size="Medium" OnCheckedChanged="checkro_CheckedChanged" Text="Select All"
                                    AutoPostBack="True" />
                                <asp:CheckBoxList ID="checkrolist" runat="server" Font-Size="Medium" AutoPostBack="True"
                                    OnSelectedIndexChanged="checkrolist_SelectedIndexChanged" Font-Bold="True" Font-Names="Book Antiqua">
                                </asp:CheckBoxList>
                            </asp:Panel>
                            <asp:PopupControlExtender ID="PopupControlExtender4" runat="server" TargetControlID="txt_route"
                                PopupControlID="routeid" Position="Bottom">
                            </asp:PopupControlExtender>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td align="left">
                <asp:UpdatePanel ID="btngoUpdatePanel" runat="server">
                    <ContentTemplate>
                    <asp:Button ID="btnMainGo" runat="server" Text="Go" Font-Bold="True" OnClick="btnMainGo_Click"
                        Font-Names="Book Antiqua" Font-Size="Medium" />
                        </ContentTemplate>
                </asp:UpdatePanel>
                </td>
                <td>
                    <asp:Label ID="lblpages" runat="server" Text="Page" Font-Names="Book Antiqua" Font-Size="Medium"
                        Font-Bold="true" Visible="false"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlpagecount" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlpagecount_SelectedIndexChanged"
                        Visible="false" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="true">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <asp:Label ID="lblerror" runat="server" Visible="false" Style="top: 31px; left: 35px;
                    position: absolute; font-size: 16px; color: Red;"></asp:Label>
            </tr>
        </table>
    </asp:Panel>

            </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
            <ContentTemplate>
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Menu/Top Band-2.jpg" Height="16px"
        Style="margin-left: 0px; top: 160px; left: 10px; position: absolute; width: 1000px;">
    </asp:Panel>
            </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <br />
    <br />
    
    <div>
        <table>
            <tr>
                <td>
                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                    <ContentTemplate>
                    <FarPoint:FpSpread ID="FpSpread1" runat="server" BorderColor="Black" BorderStyle="Solid"
                        BorderWidth="1px" Width="700" Style="border: 1px solid Black; direction: ltr;
                        overflow: hidden; width: 700px; left: 50px; overflow: hidden;">
                        <CommandBar BackColor="Control" ButtonFaceColor="Control" ButtonHighlightColor="ControlLightLight"
                            ButtonShadowColor="ControlDark" ButtonType="PushButton">
                        </CommandBar>
                        <Sheets>
                            <FarPoint:SheetView SheetName="Sheet1">
                            </FarPoint:SheetView>
                        </Sheets>
                    </FarPoint:FpSpread>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblrptname" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                        Font-Size="Medium" Text="Report Name"></asp:Label>
                    <asp:TextBox ID="txtexcelname" runat="server" Height="20px" Width="180px" Style="font-family: 'Book Antiqua'"
                        Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium"></asp:TextBox>
                    <asp:Button ID="btn_excel" runat="server" Text="Export Excel" Font-Bold="true" Font-Names="Book Antiqua"
                        OnClick="btn_excel_Click" />
                    <asp:Label ID="lblerror1" runat="server" Style="color: Red; font-size: medium;"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
           
     <center>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="btngoUpdatePanel">
            <ProgressTemplate>
                <center>
                    <div style="height: 40px; width: 150px;">
                        <img src="../gv images/cloud_loading_256.gif" style="height: 150px;" />
                        <br />
                        <span style="font-family: Book Antiqua; font-size: medium; font-weight: bold; color: Black;">
                            Processing Please Wait...</span>
                    </div>
                </center>
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="UpdateProgress1"
            PopupControlID="UpdateProgress1">
        </asp:ModalPopupExtender>
    </center>
</asp:Content>
