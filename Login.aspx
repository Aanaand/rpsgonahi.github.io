<%@ Page Title="" Language="C#" MasterPageFile="~/RPSMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RPSWebsiteCSharp.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .input-container {
  display: -ms-flexbox;
  display: flex;
  width: 100%;
  margin-bottom: 5px;
}
  .icon {
  padding: 5px;
  background: #003cff;
  color: white;
  min-width: 40px;
  text-align: center;
 
}

  .input-field {
  width: 100%;
  padding: 0px 5px;
  outline: none;
}
  .input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: #141313;
  color: white;
  cursor: pointer;
  
 
}

.btn:hover {
  opacity: 1;
}

    </style>
    <div class="primary-container-group">
        <!-- Background -->
        <div class="primary-container-background">
            <div class="primary-container"></div>
            <div class="clearfix"></div>
        </div>

        <!-- === END HEADER === -->
        <!-- === BEGIN CONTENT === -->
        <div class="container">
            <div class="row margin-vert-30">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <strong>Login with the form below</strong>
                            </div>
                            <div class="panel-body">
                                                 

                                <div class="form-horizontal" style="padding: 0px 30px;">                                 
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="fa fa-user icon"></i>
                                            <asp:TextBox ID="txtuserloginName" runat="server" class="input-field" placeholder="Login Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="fa fa-key icon"></i>
                                            <asp:TextBox ID="txtuserloginpass" runat="server" TextMode="Password" class="input-field" placeholder="Password"></asp:TextBox>
                                          
                                        </div>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me next time?"></asp:Label>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button ID="btnCancel" runat="server" CssClass="btn" Text="Cancel" OnClick="btnCancel_Click" />
                                        <asp:Button ID="btnsignin" CssClass="btn pull-right" runat="server" Text="LOGIN" OnClick="btnsignin_Click" />
                                        
                                       
                                    </div>
                                    <div class="form-group">
                                      
                                        <asp:Label ID="Label2" runat="server" Text="Label">Forgot Your Password ?</asp:Label>
                                        <asp:LinkButton ID="lbForgotPass" runat="server" PostBackUrl="~/ForgotPassword.aspx"><strong style="color:#0c0e62">Click here.</strong></asp:LinkButton>

                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>

            </div>
        </div>
    </div>


</asp:Content>
