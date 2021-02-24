<%@ Page Title="" Language="C#" MasterPageFile="~/Students/studentMaster.Master" AutoEventWireup="true" CodeBehind="CommentBox.aspx.cs" Inherits="RPSWebsiteCSharp.Students.CommentBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .panel{
            width:60%;
            margin: auto;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container no-padding" style="background: #fff">
        <div class="container">
            <div class="row margin-vert-30">
                <div class="panel panel-primary">
                    <div class="panel-heading bg-info">
                        <strong>COMMENT BOX</strong>
                    </div>
                    <div class="panel-body">
                            <div class="form-horizontal">
                                    <!-- Name input-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">To :</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="txtto" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                      <!-- Name input-->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="name">Subject :</label>
                                        <div class="col-md-9">
                                            <asp:TextBox ID="txtsubject" runat="server" CssClass="form-control"></asp:TextBox>
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
                                            <asp:Button ID="Button1" runat="server" Text="Reset" CssClass="btn btn-primary pull-right" />
                                        </div>
                                    </div>
                                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
         <script type="text/javascript">
            function validate() {
                if (Required('<%=txtto.ClientID%>', 'enter name to whom you are sending message.'))
                if (Required('<%=txtsubject.ClientID%>', 'enter subject of the message'))
                    if (Required('<%=txtmessage.ClientID%>', 'enter your complaint.'))
               

                                    return true;
            return false;
        }
    </script>
</asp:Content>
