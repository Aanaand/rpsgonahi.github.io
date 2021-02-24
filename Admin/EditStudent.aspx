<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.EditStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .input-field {
            font-size: 16px;
            color: #000;
        }

        .studentimg {
            margin: auto;
        }
    </style>
    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">Update students</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Redg. ID :</label>
                                    <asp:Label ID="regdid" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>School Session:</label>
                                    <asp:Label ID="Label1" runat="server" Text="Session"></asp:Label>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Student Name:</label>
                                    <asp:TextBox ID="txtstudentname" runat="server" CssClass="input-field form-control input-sm"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Father Name:</label>
                                    <asp:TextBox ID="txtfathername" runat="server" CssClass="input-field form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Mother Name:</label>
                                    <asp:TextBox ID="txtmothername" runat="server" CssClass="input-field form-control input-sm"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Date of birth:</label>
                                    <asp:TextBox ID="txtdob" runat="server" CssClass="input-field form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Gender:</label>
                                    <asp:DropDownList ID="ddlgender" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Category:</label>
                                    <asp:DropDownList ID="ddlcategory" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                        <asp:ListItem>Janajati</asp:ListItem>
                                        <asp:ListItem>Dalit</asp:ListItem>
                                        <asp:ListItem>Brahamins</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Religion:</label>
                                    <asp:DropDownList ID="ddlreligion" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                        <asp:ListItem>Hindu</asp:ListItem>
                                        <asp:ListItem>Muslim</asp:ListItem>
                                        <asp:ListItem>Christian</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Admission Date:</label>
                                    <asp:TextBox ID="txtadmdate" runat="server" CssClass="input-field form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Mobile No:</label>
                                    <asp:TextBox ID="txtmobileno" runat="server" CssClass="input-field form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Address:</label>
                                    <asp:TextBox ID="txtaddress" runat="server" CssClass="input-field form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Student Type:</label>
                                    <asp:DropDownList ID="ddlstudenttype" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                        <asp:ListItem>Regular</asp:ListItem>
                                        <asp:ListItem>New Student</asp:ListItem>
                                        <asp:ListItem>Left Over</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="pimage">Bus Route :</label>
                                    <asp:DropDownList ID="ddlbusroute" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="pimage">Class Admitted :</label>
                                    <asp:DropDownList ID="ddlclass" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="form-group text-center">
                            <label>Student Image:</label>
                            <asp:Image ID="img_binary" CssClass="studentimg form-control" Visible="false" Width="160px" Height="170px" ImageUrl="#" runat="server" />
                        </div>
                    </div>
                </div>




            </div>
            <div class="panel-footer">
              <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            </div>
        </div>
    </div>

</asp:Content>
