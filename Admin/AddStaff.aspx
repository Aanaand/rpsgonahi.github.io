<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.AddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .input-field {
            font-weight: 500;
            font-size: 16px;
            color: #302e2e;
        }

        .gv {
            /*font-family: Arial;*/
            margin-top: 10px;
            font-size: 14px;
        }

        
            .gv th {  /*applies to tabel header*/
                background-color: #9d6e19;
                font-weight: 500;
                text-align:center;
                color: #fff;
                padding: 1px 1px;
                border-width: 1px;
            }

            .gv td {
                padding: 1px 1px;
                text-align: center;
                width: 1%;
                border: 1px solid black;
                border-collapse: collapse;
            }
    </style>

    <div class="container-fluid" id="container">
        <div class="panel panel-default">
            <div class="panel-heading bg-info">
                <strong>STAFF REGISTRATION FORM</strong><br />
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label>Staff's Name</label>
                            <asp:TextBox ID="txtstaff" runat="server" CssClass="input-field form-control input-sm" />
                             <asp:HiddenField ID="hddautostaffid" runat="server" />
                            <asp:HiddenField ID="hddstaffregdid" runat="server" />
                            <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
                            <%--<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox ID="txtaddress" runat="server" CssClass="input-field form-control input-sm" />
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label>Mobile No</label>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="input-field form-control input-sm" />
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label for="pimage">Gender :</label>
                            <asp:DropDownList ID="ddlgender" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                <asp:ListItem Value="0">---Select gender---</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label>Joining Date</label>
                            <asp:TextBox ID="txtjoindate" runat="server" CssClass="input-field form-control input-sm" />
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label for="pimage">Status :</label>
                            <asp:DropDownList ID="ddlstatus" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                <asp:ListItem Value="0">---Select Status---</asp:ListItem>
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>Inactive</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label>Qualification</label>
                            <asp:TextBox ID="txtquli" runat="server" CssClass="input-field form-control input-sm" />
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label>Basic Salary</label>
                            <asp:TextBox ID="txtbasicsalary" runat="server" CssClass="input-field form-control input-sm" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success center-block" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="javascript:return validate();" />
                            <asp:Button ID="btnupdate" runat="server" Text="Update" Visible="false" CssClass="btn btn-success center-block" OnClick="btnupdate_Click" />
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <asp:Label ID="lblmessage" CssClass="text-center" runat="server" EnableViewState="false" ForeColor="Green" Font-Size="18px" BackColor="LightYellow"></asp:Label>
                    </div>
                </div>
                <input type="hidden" runat="server" id="hidstaffid" />
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading bg-info">
                <strong>STAFF REGISTRATION LIST</strong><br />
            </div>
            <div class="panel-body">
                <asp:GridView ID="gvStaff" runat="server" AutoGenerateColumns="False"
                    ShowHeaderWhenEmpty="True"
                    EmptyDataText="No Records Found"
                    GridLines="both" CssClass="gv"
                    EmptyDataRowStyle-ForeColor="Red"
                    OnRowCommand="gvStaff_RowCommand"
                    OnRowDeleting="gvStaff_RowDeleting"
                 
                    
                    AllowPaging="true"
                    OnPageIndexChanging="OnPaging" PageSize="20">
                    <Columns>
                        <asp:TemplateField HeaderText="Staff Name">
                            <ItemTemplate>
                                <asp:Label ID="lblstaffname" runat="server" Text='<%#Eval("staffname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile">
                            <ItemTemplate>
                                <asp:Label ID="lblmobile" runat="server" Text='<%#Eval("mobileno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblgender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Join Date">
                            <ItemTemplate>
                                <asp:Label ID="lbljoindate" runat="server" Text='<%#Eval("joindate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label ID="lblstatus" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Quali" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblqualification" runat="server" Text='<%#Eval("qualification") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Salary">
                            <ItemTemplate>
                                <asp:Label ID="lblsalary" runat="server" Text='<%#Eval("salary") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary btn-sm" Text="Edit" OnClick="btnEdit_Click" />
                                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger btn-sm" Text="Delete" 
                                    CommandName="Delete" CommandArgument='<%# Eval("staffid") %>' 
                                    OnClientClick="return confirm('Are you sure? want to delete the Staff info.');"/>
                                <asp:Label ID="lblstaffid" runat="server"  Text='<%#Eval("staffid") %>' Visible="false"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function validate() {
            if (Required('<%=txtstaff.ClientID%>', 'enter staff name.'))
                if (Required('<%=txtaddress.ClientID%>', 'enter address of the staff.'))
                    if (Required('<%=txtmobile.ClientID%>', 'enter Valid mobile number.'))
                        if (Required('<%=txtjoindate.ClientID%>', 'enter address of the staff.'))
                            if (Required('<%=txtbasicsalary.ClientID%>', 'enter Basic Salary.'))
                                if (Required('<%=ddlstatus.ClientID%>', 'select Status.'))

                          return true;
                  return false;
              }
    </script>
</asp:Content>
