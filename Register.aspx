<%@ Page Title="" Language="C#" MasterPageFile="~/RPSMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RPSWebsiteCSharp.Register" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .signup-section {
            background: rgba(0, 0, 0, 0.10);
            padding: 20px 20px;
        }

        .panel {
            /*padding: 0px 20px;*/
            border: 1px solid #C0BEBE;
            border-radius: 3px;
        }

        .captchaimg {
            margin: auto auto;
        }

        .ctext {
            width: 150px;
            margin: 0 auto;
        }
    </style>





    <div class="primary-container-group">
        <!-- Background -->
        <div class="primary-container-background">
            <div class="primary-container"></div>
            <div class="clearfix"></div>
        </div>
        <div class="container">
            <div class="row margin-vert-30">
                <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
                    <div class="panel">
                        <div class="panel-heading bg-info"><strong>Register New Account</strong></div>
                        <div class="panel-body">
                            <asp:Label ID="lblMessage" runat="server" Font-Size="Medium"></asp:Label>
                            <div class="form-group">
                                <label>User Name</label>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control input-sm" Font-Size="Large" />
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>Password</label>
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control input-sm" Font-Size="Medium" />
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Re-type Password</label>
                                        <asp:TextBox ID="confirmPassword" runat="server" TextMode="Password" CssClass="form-control input-sm" Font-Size="Medium" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>Email</label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control input-sm" Font-Size="Medium" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                            ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                            Display="Dynamic" ErrorMessage="Invalid email address" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" ErrorMessage="Required" />
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Phone No</label>
                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control input-sm" Font-Size="Medium" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhone"
                                            ForeColor="Red" ValidationExpression="[0-9]{10}"
                                            Display="Dynamic" ErrorMessage="Allow 10 digits numbers only." />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" ForeColor="Red" Display="Dynamic" ErrorMessage="Required" />

                                    </div>
                                </div>
                            </div>                           

                            <div class="form-group">
                                <asp:Button ID="btnSubmit" runat="server" Text="REGISTER" CssClass="btn btn-success btn-block" OnClientClick="javascript:return validate();" OnClick="btnSubmit_Click" Font-Bold="True" />
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
    </div>
    <script src="assets/js/validation.js"></script>
    <script type="text/javascript">
        function validate() {
            if (Required('<%=txtUserName.ClientID%>', 'enter your user name...'))
                  if (Required('<%=txtPassword.ClientID%>', 'enter Password, its cannot be blank'))
                      if (Required('<%=txtEmail.ClientID%>', 'enter valid email address'))

                          if (Required('<%=txtPhone.ClientID%>', 'enter Your mobile No or WhatsApp No. required'))
                             
                            return true;
            return false;
        }
    </script>
</asp:Content>
