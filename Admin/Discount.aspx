<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Discount.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.Discount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .gv {
            margin: 0 20px;
        }

            .gv th {
                background-color: #f6e02f;
                font-weight: 500;
                color: #000;
                text-align: center;
                padding: 2px 2px;
                border-width: 1px;
            }

            .gv td {
                padding: 2px 2px;
                text-align: center;
                width: 1%;
                border: 1px solid black;
                border-collapse: collapse;
            }
    </style>



    <div class="container-fluid">
        <div class="panel panel-danger">
            <div class="panel-heading"><strong>Student wise Discount Entry</strong></div>
            <div class="panel-body">
                <div class="row">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="">Class Name:</label>
                            <div class="col-sm-4">
                                <asp:DropDownList ID="ddlclass" runat="server" Font-Size="16px" CssClass="input-field form-control input-sm" AutoPostBack="true" OnSelectedIndexChanged="ddlclass_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <asp:GridView ID="gvPhoneBook" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="discountid"
                        ShowHeaderWhenEmpty="true" CssClass="gv"
                        OnRowCommand="gvPhoneBook_RowCommand"
                        OnRowEditing="gvPhoneBook_RowEditing"
                        OnRowCancelingEdit="gvPhoneBook_RowCancelingEdit"
                        OnRowUpdating="gvPhoneBook_RowUpdating"
                        BackColor="White" BorderColor="#CCCCCC"
                        BorderStyle="None" BorderWidth="1px" CellPadding="2">
                        <%-- Theme Properties --%>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />

                        <Columns>
                            <asp:TemplateField HeaderText="DID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("discountid") %>' runat="server" Visible="false" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtFirstName" Text='<%# Eval("discountid") %>' runat="server" Visible="false" ReadOnly="true" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtFirstNameFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Class">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("classname") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtclass" Text='<%# Eval("classname") %>' Font-Bold="true" Width="80px" runat="server" ReadOnly="true" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtclassFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("studentname") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtname" Text='<%# Eval("studentname") %>' runat="server" Font-Bold="true" ReadOnly="true" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtnameFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Father Name">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtfathername" Text='<%# Eval("fathername") %>' runat="server" Font-Bold="true" ReadOnly="true" />
                                </ItemTemplate>
                            </asp:TemplateField>



                            <asp:TemplateField HeaderText="Amount">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("totaldiscount") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtamount" Text='<%# Eval("totaldiscount") %>' runat="server" Width="80px" Font-Bold="true" ForeColor="red" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtamountFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Particulars">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("particulars") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtparticulars" Text='<%# Eval("particulars") %>' runat="server" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="particularsFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:ImageButton ImageUrl="~/Appmedia/buttons/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                                    <%--<asp:ImageButton ImageUrl="~/Appmedia/buttons/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />--%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:ImageButton ImageUrl="~/Appmedia/buttons/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                                    <asp:ImageButton ImageUrl="~/Appmedia/buttons/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:ImageButton ImageUrl="~/Appmedia/buttons/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px" />
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <div class="form-group text-center">
                        <br />
                        <asp:Label ID="lblSuccessMessage" CssClass="label" Text="" runat="server" ForeColor="Green" />
                        <br />
                        <asp:Label ID="lblErrorMessage" Text="" CssClass="label" runat="server" ForeColor="Red" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
