<%@ Page Title="" Language="C#" MasterPageFile="~/Students/studentMaster.Master" AutoEventWireup="true" CodeBehind="studentHome.aspx.cs" Inherits="RPSWebsiteCSharp.Students.studentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .header {
            padding: 0px 30px;
        }
        .auto-style1 {
            width: 120px;
        }
    </style>

    <div class="container no-padding" style="background: #fff">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="panel panel-default" style="margin-top: 30px">
                    <div class="panel-heading">
                        <strong style="color: red; font-size:16px">MY PROFILE</strong>
                    </div>
                    <div class="panel-body">
                        <asp:HiddenField ID="hddloginname" runat="server" />
                        <table class="nav-justified">
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label1" runat="server" Text="ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblstudentid" runat="server" Font-Bold="true" Text="Student ID"></asp:Label>
                                </td>
                                <td rowspan="5">                                    
                                     <asp:Image ID="img_binary" CssClass="studentimg" Visible="false" Width="100px" Height="110px" ImageUrl="#" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label3" runat="server" Text="Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblstudentname" runat="server" Font-Bold="true" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label5" runat="server" Text="Father's Name:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblfathername" runat="server" Font-Bold="true" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label7" runat="server" Text="Mother's Name:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblmother" runat="server" Font-Bold="true" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label9" runat="server" Text="Gender :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblgender" runat="server" Font-Bold="true" Text=""></asp:Label>
                                </td>
                            </tr>
                              <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label2" runat="server" Text="DOB :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbldob" runat="server" Font-Bold="true" Text=""></asp:Label>
                                </td>
                            </tr>
                              <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label6" runat="server" Text="Adm Date :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbladmdate" runat="server" Font-Bold="true" Text=""></asp:Label>
                                </td>
                            </tr>
                                <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label4" runat="server" Text="Address :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbladdress" runat="server" Font-Bold="true" Text=""></asp:Label>
                                </td>
                            </tr>
                                <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label10" runat="server" Text="Mobile No :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblmobileno" runat="server" Font-Bold="true" Text=""></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>

        </div>
    </div>

</asp:Content>
