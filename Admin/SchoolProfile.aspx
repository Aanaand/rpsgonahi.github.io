<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SchoolProfile.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.SchoolProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        .well {
            padding: 20px 20px;
        }

        #container {
            max-width: 80%;
        }

        label {
            font-weight: bold;
            color: #ff6a00;
        }
        .form-control{
            font-weight:600;
        }

        .panel{
            border: 1px solid #99d3f8;            
            background:#ffffff
        }
    </style>
    <div class="container" id="container">
        <div class="panel panel-primary">
            <div class="panel-heading bg-info">
                <b>Please update the following details</b><br />
                <b>Note: User name and Password will be your login details</b><br />
                <asp:Label ID="Label1" runat="server" Text="" CssClass="text-danger"></asp:Label>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4 form-group">
                                <label>Admin User Name</label>
                                <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" />
                            </div>
                            <div class="col-sm-4 form-group">
                                <label>Admin Password</label>
                                <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password" />
                            </div>
                            <div class="col-sm-4 form-group">
                                <label>Retype Password</label>
                                <asp:TextBox ID="txtconfirmpassword" runat="server" CssClass="form-control" TextMode="Password" />
                            </div>
                        </div>
                             <div class="row">
                            <div class="col-sm-4 form-group">
                                <label>Title</label>
                                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" />
                            </div>
                            <div class="col-sm-4 form-group">
                                <label>Company</label>
                                <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" />
                            </div>
                            <div class="col-sm-4 form-group">
                                <label>Phone Number</label>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" />
                        </div>
                      <!--  <div class="row">
                            <div class="col-sm-4 form-group">
                                <label>City</label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" />
                            </div>
                            <div class="col-sm-4 form-group">
                                <label>State</label>
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" />
                            </div>
                            <div class="col-sm-4 form-group">
                                <label>Zip</label>
                                <asp:TextBox ID="txtZipcode" runat="server" CssClass="form-control" />
                            </div>
                        </div> -->
                   

                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Valid Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Valid Email Password</label>
                                <asp:TextBox ID="txtEmailPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            </div>
                            <p style="text-align: center; font-size:12px;">Note: This email and password will be used for sending and receiving messages.</p>
                        </div>                        
                        <asp:Button ID="btnSubmit" runat="server" Width="100px" CssClass="btn btn-success center-block" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="javascript:return Validation();" Font-Bold="True" Font-Size="Medium" />

                    </div>

                </div>
            </div>
        </div>

    </div>



</asp:Content>
