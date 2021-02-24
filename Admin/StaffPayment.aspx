<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StaffPayment.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.StaffPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
     .txtfield{
         width:250px;
     }
    </style>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="panel panel-danger">
                    <div class="panel-heading">User Registraion</div>
                    <div class="panel-body">
                   <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3" for="fname">Full Name:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtclass" runat="server"  CssClass="txtfield"></asp:TextBox>
                                <asp:Label Text="*" runat="server" ForeColor="Red" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3" for="">Address:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="TextBox1" runat="server"  CssClass="txtfield"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3" for="">Mobile No:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="TextBox2" runat="server"  CssClass="txtfield"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3" for="">Address:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="TextBox3" runat="server"  CssClass="txtfield"></asp:TextBox>
                            </div>
                        </div>

                   </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>

        </div>
    </div>
</asp:Content>
