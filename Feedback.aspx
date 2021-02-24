<%@ Page Title="" Language="C#" MasterPageFile="~/RPSMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="RPSWebsiteCSharp.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="primary-container-group">
        <!-- Background -->
        <div class="primary-container-background">
            <div class="primary-container"></div>
            <div class="clearfix"></div>
        </div>
        <div class="container">
            <div class="row margin-vert-30">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <strong>YOUR FEEDBACK PLEASE</strong>
                            </div>
                            <div class="panel-body">
                                <div class="container">
                                    <div class="text-center" style="color: red;">
                                    <asp:Label ID="Label1" runat="server" Text="All fields are mandatory"></asp:Label>
                                  </div>
                                <div class="form-horizontal">
                                    <!-- Name input-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">Full Name :</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="txtfullname" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                      <!-- Name input-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">Email :</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                      <!-- Name input-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">Contact No:</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                      <!-- Name input-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">Your Message :</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="txtmessage" TextMode="MultiLine" runat="server" Height="100px" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-md-3 control-label" for="name"></label>
                                        <div class="col-md-9">
                                            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Text="" Visible="false"></asp:Label>
                                            <asp:Button ID="btnsend" runat="server" CssClass="btn btn-primary" Text="Send Message" OnClientClick="javascript:return validate();" OnClick="btnsend_Click" />
                                            <asp:Button ID="Button1" runat="server" Text="Reset" CssClass="btn btn-primary pull-right" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
                </div>
            </div>
        </div>
    </div>

    <script src="Admin/validationRequired.js"></script>
              <script type="text/javascript">
              function validate() {
                  if (Required('<%=txtfullname.ClientID%>', 'Enter Your Full Name.'))
                  if (Required('<%=txtemail.ClientID%>', 'enter Email address.'))
                      if (Required('<%=txtmobile.ClientID%>', 'enter mobile number'))
                          if (Required('<%=txtmessage.ClientID%>', 'enter Your valuable message.'))
                        return true;
            return false;
        }
    </script>
</asp:Content>
