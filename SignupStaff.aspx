<%@ Page Title="" Language="C#" MasterPageFile="~/RPSMaster.Master" AutoEventWireup="true" CodeBehind="SignupStaff.aspx.cs" Inherits="RPSWebsiteCSharp.SignupStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="primary-container-group">
        <!-- Background -->
        <div class="primary-container-background">
            <div class="primary-container"></div>
            <div class="clearfix"></div>
        </div>
         <div class="container">

            <asp:Panel ID="Panel1" runat="server" Visible="true">
            <div class="row margin-vert-30">
                <div class="row">
                    <div class="col-md-3">
                     
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <strong>Staff's Registration Form</strong>
                            </div>
                            <div class="panel-body">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-3" for="fname">Name:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="ddlstaff" runat="server" Height="25px" AutoPostBack="true" OnSelectedIndexChanged="ddlstaff_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:Label Text="*" runat="server" ForeColor="Red" />
                                            <asp:HiddenField ID="hddregdid" runat="server" />
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
                                                <asp:TextBox ID="txtloginname" runat="server" CssClass="txtfield"></asp:TextBox>
                                                <asp:Label Text="*" runat="server" ForeColor="Red" />
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
            </asp:Panel>
        </div>


    </div>

</asp:Content>
