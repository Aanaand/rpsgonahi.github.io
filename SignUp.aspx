<%@ Page Title="" Language="C#" MasterPageFile="~/RPSMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="RPSWebsiteCSharp.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .txtfield {
            /*width: 250px;*/
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
                <div class="row">
                    <div class="col-md-3">
                        <h3>Steps for Register:</h3>
                        <p style="font-size: 12px;">
                            1. Select Class<br />
                            2. Select your name.<br />
                            3. Enter the phone number that is recorded
                            in school register at the time of
                            admission.<br />
                            4. Enter the password that you can remember.<br />
                            5. Enter the login details.<br />
                            6. Finally press enter. All done.<br />
                            Your account is created now. Now you can access all the 
                            features of your account and updates.
                            Do not share password to any one


                        </p>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <strong>Students OR Parents Registration Form</strong>
                            </div>
                            <div class="panel-student panel-body">

                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-3" for="fname">Class:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="ddlclass" runat="server" Height="25px" OnSelectedIndexChanged="ddlclass_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                            <asp:Label Text="*" runat="server" ForeColor="Red" />

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3" for="fname">Name:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="ddlstudentname" CssClass="" Width="200px" Height="25px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlstudentname_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:Label Text="*" runat="server" ForeColor="Red" />
                                            <%--<asp:HiddenField ID="hddregdid" runat="server" />--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3" for="">Mobile No:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtmobileno" runat="server" CssClass="txtfield" placeholder="Enter registered mobile no"></asp:TextBox>
                                            <asp:Label Text="*" runat="server" ForeColor="Red" /><br />
                                            <asp:Label ID="checkmobileno" runat="server" Visible="false" Font-Bold="true"></asp:Label>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="form-group">
                                        <label class="col-sm-3" for="">Login Name:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtloginname" runat="server" CssClass="txtfield" ReadOnly="true"></asp:TextBox>
                                            <%--<asp:Label Text="*" runat="server" ForeColor="Red" />--%>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3" for="">Password:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtloginpassword" TextMode="Password" runat="server" CssClass="txtfield"></asp:TextBox>
                                            <asp:Label Text="*" runat="server" ForeColor="Red" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3" for=""></label>
                                        <div class="col-sm-9">
                                            <asp:Label ID="lblMessage" runat="server" />
                                            <asp:LinkButton ID="lnklogin" runat="server" ForeColor="Blue" Font-Bold="true" Visible="false" OnClick="lnklogin_Click">Click Login</asp:LinkButton>
                                        </div>
                                    </div>

                                    <div class="form-group text-center">
                                        <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" OnClientClick="javascript:return validate();" />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>

        </div>
    </div>
    <script src="Admin/validationRequired.js"></script>
    <script type="text/javascript">
        function validate() {
            if (Required('<%=ddlclass.ClientID%>', 'select class name'))
                if (Required('<%=ddlstudentname.ClientID%>', 'select student name'))
                    if (Required('<%=txtmobileno.ClientID%>', 'enter mobile number'))
                              if (Required('<%=txtloginpassword.ClientID%>', 'enter strong password'))
                                  return true;
                  return false;
              }
    </script>

</asp:Content>
