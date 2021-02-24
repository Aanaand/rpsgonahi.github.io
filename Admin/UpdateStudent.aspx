<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.UpdateStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="panel panel-default">
            <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Item Details
                </h3>
            </div>
            <div class="panel-body">
                <asp:Repeater ID="rptItemDetails" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-hover">
                            <tr>
                                <th>Id
                                </th>
                                <th>Item Name
                                </th>
                                <th>Category Name
                                </th>
                                <th>Description
                                </th>
                                <th>Price
                                </th>
                                <td>*
                                </td>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#Eval("studentId") %>
                            </td>
                            <td>
                                <%#Eval("studentName") %>
                            </td>
                            <td>
                                <%#Eval("regdid") %>
                            </td>
                            <td>
                                <%#Eval("fathername") %>
                            </td>
                            <td>
                                <%#Eval("mothername") %>
                            </td>
                            <td>
                                <asp:LinkButton ID="lnkBtn_Update" CssClass="btn btn-default" runat="server" data-toggle="modal"
                                    aria-expanded="false" aria-controls="navbar" data-target="#addPage" CommandArgument='<%#Eval("studentId") %>'>Update Item</asp:LinkButton>
                            </td>
                            <td>
                                <asp:Button ID="btnEdit" CommandArgument='<%#Eval("studentId") %>' Text="Edit" OnClick="GetModelData"
                                    CssClass="btn btn-info" runat="server" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
        <%-- Edit Item Model --%>
        <!-- Modals -->
        <!-- Add Page -->
        <div class="modal fade" id="addPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" style="text-align: center;" id="myModalLabel">Add Item Details</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>
                                Add Category</label>
                            <input type="text" id="txt_AddCategory" runat="server" class="form-control" placeholder="Add Category"
                                validationgroup="vg_btn_AddCategoy" />
                        </div>
                        <div class="modal-footer">
                            <button type="button" id="btn_AddCategory" runat="server" class="btn btn-primary"
                                validationgroup="vg_btn_AddCategoy">
                                Add Category</button>
                        </div>
                        <h4 style="text-align: center;">Add Item</h4>
                        <div class="form-group">
                            <label>
                                Category</label>
                            <asp:DropDownList ID="ddl_Category" CssClass="form-control" runat="server" ValidationGroup="vg_btn_AddItem">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>
                                Item Name</label>
                            <input type="text" id="txtItemName" runat="server" class="form-control" placeholder="Add Item Name..."
                                validationgroup="vg_btn_AddItem" />
                        </div>
                        <div class="form-group">
                            <label>
                                Description</label>
                            <input type="text" id="txt_Description" runat="server" class="form-control" placeholder="Add Description..."
                                validationgroup="vg_btn_AddItem" />
                        </div>
                        <div class="form-group">
                            <label>
                                Price</label>
                            <input type="text" id="txt_Price" runat="server" class="form-control" placeholder="Add Price..."
                                validationgroup="vg_btn_AddItem" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Close</button>
                        <button type="button" id="btn_AddItem" runat="server" class="btn btn-primary" validationgroup="vg_btn_AddItem">
                            Add Item</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />--%>
        <script type='text/javascript'>
            function openModal() {
                $('#addPage').modal('show');
            }
        </script>
    </div>
</asp:Content>
