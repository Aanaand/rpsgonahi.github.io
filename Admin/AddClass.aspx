<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.AddClass" %>
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
        <div class="row ">
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="panel">
                <div class="panel-heading bg-primary"><strong>ADD CLASS NAME</strong></div>
                <div class="panel-body">
                    <div class="form-horizontal" style="padding: 0 20px">
                        <div class="form-group">
                             <label for="">Class ID:</label>
                            <asp:Label ID="lblClassID" runat="server" CssClass="form-control" Text="Label"></asp:Label>
                            </div>
                        <div class="form-group">
                            <label for="">Class Name:</label>                             
                            <asp:TextBox ID="txtClassName" runat="server" Font-Size="Large" CssClass="form-control input-sm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtClassName"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <div class="panel">
                <div class="panel-heading bg-primary"><strong>LIST OF CLASS NAMES</strong></div>
                <div class="panel-body">
                    <asp:GridView ID="GridView1" ShowHeaderWhenEmpty="True" HeaderStyle-CssClass="bg-info text-white text-center" runat="server"
                        AutoGenerateColumns="False" CssClass="footable" Font-Bold="False" ForeColor="#333333" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
                        <EmptyDataTemplate>
                            <div class="text-center">No Data Found <strong>Add new data</strong></div>
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="ClassId" />
                            <asp:BoundField HeaderText="Class Name" DataField="ClassName" />
                            <asp:BoundField HeaderText="Date Created" DataField="datecreated" />

                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:ImageButton ID="lnk_Delete" runat="server" ImageUrl="~/Appmedia/buttons/delete50.png" Width="30" Height="30" CommandName="Delete" CommandArgument='<%# Eval("ClassID") %>' OnClientClick="return ConfirmDelete(this);" ToolTip="Delete" CausesValidation="false" />
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
