<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DisplayFeedback.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.DisplayFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <style>
        .footable td { /* this applies to the Gridviews Data fileds */
            padding: 1px;
            text-align: center;
            width: 3%;
            border: 1px solid black;
            border-collapse: collapse;
        }

        .footable th /* this applies to the Gridviews Headers */ {
            padding: 4px;
            border-width: 1px;
            text-align: center;
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
    <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                     <div class="panel">
                <div class="panel-heading bg-primary"><strong>LIST OF FEEDBACK MESSAGES</strong></div>
                <div class="panel-body">
                    <asp:GridView ID="GridView1" ShowHeaderWhenEmpty="True" HeaderStyle-CssClass="bg-info text-white text-center" runat="server"
                        AutoGenerateColumns="False" CssClass="footable" Font-Bold="False" ForeColor="#333333" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
                        <EmptyDataTemplate>
                            <div class="text-center">No Data Found <strong>Add new data</strong></div>
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="feedbackid" Visible="false" />
                            <asp:BoundField HeaderText="Full Name" DataField="fullname" />
                            <asp:BoundField HeaderText="Email" DataField="email" />
                            <asp:BoundField HeaderText="Mobile" DataField="mobileno" />
                            <asp:BoundField HeaderText="Message" DataField="message" />
                              <asp:BoundField HeaderText="Date Created" DataField="createdate" />

                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:ImageButton ID="lnk_Delete" runat="server" ImageUrl="../Appmedia/buttons/delete50.png" Width="30" Height="30" CommandName="Delete" CommandArgument='<%# Eval("feedbackid") %>' OnClientClick="return ConfirmDelete(this);" ToolTip="Delete" CausesValidation="false" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle CssClass="bg-info text-white"></HeaderStyle>
                    </asp:GridView>
                </div>
            </div>
         </div>
    </div>
</asp:Content>
