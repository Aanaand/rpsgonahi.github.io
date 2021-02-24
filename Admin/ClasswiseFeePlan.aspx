<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ClasswiseFeePlan.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.ClasswiseFeePlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .gvfeeplan {
            /*font-family: Arial;*/
            margin-top: 10px;
            font-size: 14px;
        }

            .gvfeeplan th {
                background-color: #5D7B9D;
                font-weight: bold;
                color: #fff;
                padding: 1px 10px;
                border-width: 1px;
            }

            .gvfeeplan td {
                padding: 1px 10px;
                text-align: center;
                width: 3%;
                border: 1px solid black;
                /*border-collapse: collapse;*/
            }
    </style>
    <script type="text/javascript">
        //sweetalert
        var object = { status: false, element: null };
        function ConfirmDelete(evnt) {
            if (object.status) {
                return true
            };
            swal({
                title: "Are you sure?",
                text: "",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete record!",
                closeOnconfirm: true
            },
            function () {
                // swal("Deleted", "Your record has been deleted.", "success");
                object.status = true;
                object.element = evnt;
                object.element.click();
            });
            return false;
        };
    </script>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading bg-primary"><strong>CREATE FEE PLAN</strong></div>
                    <div class="panel-body">
                        <div class="form-horizontal" style="padding: 0 20px">

                            <div class="form-group">
                                <label for="">Session:</label>
                                <asp:DropDownList ID="ddlsession" runat="server" Font-Size="16px" CssClass="">
                                </asp:DropDownList>
                                <asp:TextBox ID="txtfeeplanid" runat="server" Visible="false"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="">Class Name:</label>
                                <asp:DropDownList ID="ddlclassname" runat="server" Font-Size="16px" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label for="">Fee Name:</label>
                                <asp:TextBox ID="txtfeename" runat="server" Font-Size="16px" CssClass="form-control input-sm"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label for="">Fee Amount:</label>
                                <asp:TextBox ID="txtfeeamount" runat="server" Font-Size="16px" CssClass="form-control input-sm"></asp:TextBox>
                                <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <%--<button class="btn btn-danger form-control  btn-block">Cancel</button>--%>
                                        <asp:Button ID="btnnew" runat="server" Text="New" CssClass="btn btn-primary" OnClick="btnnew_Click" />
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <%--<button id="btnSubmit" class="btn btn-primary form-control btn-block">Submit</button>--%>
                                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-success form-control" OnClick="btnsubmit_Click" OnClientClick="javascript:return validate();" />
                                        <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-success form-control" Visible="false" OnClick="btnupdate_Click" OnClientClick="javascript:return validate();" />
                                    </div>
                                </div>






                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>LIST OF STUDENTS</strong>
                    </div>
                    <div class="panel-body">
                        <div class="search">
                            <label>Search by Class:</label>
                            <asp:DropDownList ID="ddlclass" runat="server" OnSelectedIndexChanged="ddlclass_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            
                        </div>
                        <asp:GridView ID="gvfeeplan" runat="server" AutoGenerateColumns="False" DataKeyNames="feeplanid"
                            OnRowCommand="gvfeeplan_RowCommand" ShowHeaderWhenEmpty="True"
                            EmptyDataText="No Records Found" CssClass="gvfeeplan"
                            EmptyDataRowStyle-ForeColor="Red"
                            OnRowDeleting="gvfeeplan_RowDeleting"
                            AllowPaging="True"
                            OnPageIndexChanging="OnPaging" CellPadding="4" ForeColor="#333333" GridLines="None">

                            <AlternatingRowStyle BackColor="White" />

                            <Columns>
                                <asp:BoundField DataField="feeplanid" HeaderText="F-ID" Visible="false" />
                                <asp:BoundField DataField="classid" HeaderText="C-ID">
                                    <HeaderStyle Width="0px"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="classname" HeaderText="Class" />
                                <asp:BoundField DataField="sessionid" HeaderText="Session" Visible="false" />
                                <asp:BoundField DataField="feename" HeaderText="Fee Name" />
                                <asp:BoundField DataField="feeamount" HeaderText="Amount" />

                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" Text="Select" runat="server" OnClick="View" />

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("feeplanid") %>' OnClientClick="return ConfirmDelete(this);" ToolTip="Delete" CausesValidation="false" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                            <EmptyDataRowStyle ForeColor="Red"></EmptyDataRowStyle>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- --%>
    <script src="validationRequired.js"></script>
    <script type="text/javascript">
        function validate() {
            if (Required('<%=ddlclassname.ClientID%>', 'select Class.'))
                  if (Required('<%=txtfeename.ClientID%>', 'enter fee name.'))
                      if (Required('<%=txtfeeamount.ClientID%>', 'enter fee amount'))

                          return true;
              return false;
          }
    </script>

</asp:Content>
