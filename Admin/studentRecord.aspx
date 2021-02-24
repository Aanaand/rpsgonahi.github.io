<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="studentRecord.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.studentRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .gv {
            /*font-family: Arial;*/
            margin-top: 10px;
            font-size: 14px;
        }

            .gv th {
                background-color: #5D7B9D;
                font-weight: bold;
                color: #fff;
                padding: 1px 10px;
                border-width: 1px;
            }

            .gv td {
                padding: 1px 10px;
                text-align: center;
                width: 3%;
                border: 1px solid black;
                border-collapse: collapse;
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

        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>LIST OF STUDENTS</strong>
                <div class="pull-right">
                    <label>Search Students by name:</label>
                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID="btnsearch" CssClass="btn-danger" runat="server" Text="Search" OnClick="Search" />
                </div>

            </div>
            <div class="panel-body">

                <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="False" DataKeyNames="studentid"
                    OnRowCommand="gvStudents_RowCommand" ShowHeaderWhenEmpty="True"
                    EmptyDataText="No Records Found" GridLines="both" CssClass="gv"
                    EmptyDataRowStyle-ForeColor="Red" OnRowDataBound="OnRowDataBound" OnRowDeleting="gvStudents_RowDeleting"
                    AllowPaging="true" OnPageIndexChanging="OnPaging" PageSize="20">
                    <Columns>

                        <asp:BoundField DataField="studentid" HeaderText="ID" ItemStyle-Width="30" Visible="false" />
                        <asp:BoundField DataField="regdid" HeaderText="RegdID" />
                        <asp:BoundField DataField="studentname" HeaderText="Student Name" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="img_binary" Width="50px" Height="55px" ImageUrl="#" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="fathername" HeaderText="Father Name" />
                        <asp:BoundField DataField="mothername" HeaderText="Mother Name" Visible="false" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" />
                        <asp:BoundField DataField="category" HeaderText="category" />
                        <asp:BoundField DataField="religion" HeaderText="religion" Visible="false" />
                        <asp:BoundField DataField="admissiondate" HeaderText="Adm Date" Visible="false" />
                        <asp:BoundField DataField="address" HeaderText="address" Visible="false" />
                        <asp:BoundField DataField="mobileno" HeaderText="mobileno" />
                        <asp:BoundField DataField="studenttype" HeaderText="type" />

                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <a href='<%#"EditStudent.aspx?studentId="+DataBinder.Eval(Container.DataItem,"studentId") %>'>Edit</a>
                                <asp:LinkButton ID="lnkdelete" Text="Delete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("studentId") %>' OnClientClick="return ConfirmDelete(this);" ToolTip="Delete" CausesValidation="false"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

        </div>

    </div>

</asp:Content>
