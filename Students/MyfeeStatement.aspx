<%@ Page Title="" Language="C#" MasterPageFile="~/Students/studentMaster.Master" AutoEventWireup="true" CodeBehind="MyfeeStatement.aspx.cs" Inherits="RPSWebsiteCSharp.Students.MyfeeStatement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background: #fff;
        }

        .panel {
            width: 80%;
            margin: auto;
            border: 1px solid;
        }
        .auto-style1{
            padding: 3px;
        }
            .auto-style2{
            padding: 3px 5px;
        }
    </style>


    <div class="container no-padding" style="background: #fff">

        <div class="container">
            <div class="row margin-vert-30">
                <div class="panel panel-primary">
                    <div class="panel-heading bg-info">
                        <strong>MY FEE STATEMENTS</strong>
                    </div>
                    <div class="panel-body">
                        <asp:HiddenField ID="hddloginname" runat="server" />
                        <div class="info">
                            <p style="color: #000; font-size: 14px;">
                                <strong>Dear Parents/Guardians/Students</strong><br />
                                RPS has planned to accept annual fee on the basis of Installments each
                                in the interval of 3 months at a time. The Total given below is the yearly
                                course fee including other fees except miscellenous fee like donation fee etc.
                                Please check payable fee throughly and if any query contact account section of
                                the school in time.

                            </p>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                    <div class="form-horizontal">
                                        <div class="form-group" style="font-size: 18px;">
                                            <asp:Label ID="Label29" runat="server" Font-Bold="true" Text="Name :"></asp:Label>
                                            <asp:Label ID="lblname" runat="server" Font-Bold="true"></asp:Label>
                                        </div>
                                           <div class="form-group" style="font-size: 18px;">
                                            <asp:Label ID="Label31" runat="server" Font-Bold="true" Text="Class :"></asp:Label>
                                            <asp:Label ID="lblclass" runat="server" Font-Bold="true"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <table class="nav-justified padd" border="1">
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label3" runat="server" Text="Installment-1:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblfirstinst" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label2" runat="server" Text="Installment-2:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblsecondinst" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label4" runat="server" Text="Installment-3:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblthirdinst" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label6" runat="server" Text="Installment-4:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblfourthinst" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <table class="nav-justified" border="1">
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label1" runat="server" Text="Date-1:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbldate1" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label7" runat="server" Text="Date-2:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbldate2" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="lbl" runat="server" Text="Date-3:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbldate3" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label11" runat="server" Text="Date-4:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbldate4" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>


                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <table class="nav-justified" border="1">
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label13" runat="server" Text="Course Fee:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblcoursefee" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label15" runat="server" Text="Bus Fee:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblbusfee" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label17" runat="server" Text="Discount Fee:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbldiscount" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label19" runat="server" Text="Total Fee:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbltotalfee" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <table class="nav-justified" border="1">
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label21" runat="server" Text="Total Paid:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbltotalreceived" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label23" runat="server" Text="Net Balance:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lbltotalbalance" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label25" runat="server" Text="Status:"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="lblfeestatus" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label27" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label28" runat="server" Font-Bold="true" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="footer-section">
                            <p style="color: #ff0000; font-size: 14px;">
                                Note:
                                All fees should be paid within the due date for each installment otherwise
                                students are not allowed to sit in the examination and your child is not
                                permitted to take part in extra activities.<br />
                                Thank You!!!
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</asp:Content>
