<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StaffAdvance.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.StaffAdvance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .panel {
            width: 80%;
            margin: auto;
        }

        .input-field {
            font-size: 16px;
            color: #000;
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
            .relative {
            /*padding: 10px;*/
            position: relative;
            /*background-color: #fff;*/
            /*margin: 5px;*/
        }

        .navitem {
            display: inline-block;
            width: 100px;
            height: 30px;
            text-align: center;
            border: gray;
            /*background-color: #E8562A;
            color: #fff;*/
            cursor: pointer;
            font-weight: 500;
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
            <div class="panel-heading"><strong>STAFF REGISTRATION FORM</strong></div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="">Staff's Name:</label>
                        <div class="col-sm-4">
                            <asp:DropDownList ID="ddlstaffname" runat="server" Font-Size="16px" CssClass="input-field form-control input-sm">
                            </asp:DropDownList>
                            <asp:TextBox ID="txtadvanceid" runat="server" Visible="false"></asp:TextBox>
                            <asp:TextBox ID="txtstaffid" runat="server" Visible="false"></asp:TextBox>
                            
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="">Date:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtdate" runat="server" CssClass="advdate input-field form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="">Amount:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtamount" runat="server" CssClass="input-field form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Particulars:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtparticulars" runat="server" BackColor="" CssClass="input-field form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row text-center">
                            <div class="relative">
                                <asp:Button ID="btnsubmit" runat="server" CssClass="navitem btn-success center-block" Text="Submit" OnClick="btnsubmit_Click" OnClientClick="javascript:return validate();"/>
                                <asp:Button ID="btnUpdate" runat="server" CssClass="navitem btn-success center-block" Text="Update" OnClick="btnUpdate_Click" Visible="false" />
                                <asp:Button ID="btnClear" runat="server" CssClass="navitem btn-primary center-block" Text="Clear" OnClick="btnClear_Click" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col text-center">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                        <input type="hidden" runat="server" id="hidadvanceid" />
                    </div>
                </div>
                <hr />

                <div class="search">
                    <label>Search by Staff name:</label>
                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID="btnsearch" CssClass="btn-danger" runat="server" Text="Search" OnClick="btnsearch_Click" />
                </div>
                <asp:GridView ID="gvadvance" runat="server" 
                    AutoGenerateColumns="False" 
                    DataKeyNames="advanceid"
                    OnRowCommand="gvadvance_RowCommand" 
                    ShowHeaderWhenEmpty="True"
                    EmptyDataText="No Records Found" 
                    CssClass="gv"
                    EmptyDataRowStyle-ForeColor="Red"
                    OnRowDeleting="gvadvance_RowDeleting"
                    AllowPaging="True"
                    OnPageIndexChanging="OnPaging" 
                    CellPadding="4" 
                    ForeColor="#333333" 
                    GridLines="None"
                    ShowFooter="True">

                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="advanceid" HeaderText="AID" ShowHeader="False" />
                        <asp:BoundField DataField="staffid" HeaderText="S-ID"/>                            
                        <asp:BoundField DataField="staffname" HeaderText="Staff Name" />
                        <asp:BoundField DataField="advancedate" HeaderText="Date" />
                        <asp:BoundField DataField="amount" HeaderText="Amount" />
                        <asp:BoundField DataField="Particulars" HeaderText="Particulars" />

                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:Button ID="Button1" Text="Select" runat="server" OnClick="View" />

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("advanceid") %>' OnClientClick="return ConfirmDelete(this);" ToolTip="Delete" CausesValidation="false" />
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

    <script type="text/javascript">
        window.onload = function () {
            var date = document.getElementsByClassName("advdate");
            date.nepaliDatePicker();
        };

        function validate() {
            if (Required('<%=ddlstaffname.ClientID%>', 'select staff name.'))
                if (Required('<%=txtdate.ClientID%>', 'enter date.'))
                    if (Required('<%=txtamount.ClientID%>', 'enter Amount.'))
                        if (Required('<%=txtparticulars.ClientID%>', 'enter details of the advance.'))
                    return true;
            return false;
        }
    </script>
</asp:Content>
