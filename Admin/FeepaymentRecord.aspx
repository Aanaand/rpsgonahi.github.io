<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FeepaymentRecord.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.FeepaymentRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .gv {
            font-family: Arial;
            margin-top: 10px;
            font-size: 12px;
        }

            .gv th {
                background-color: #f6e02f;
                color: #000;
                font-weight: 500;
                text-align: center;
                padding: 2px 2px;
                border-width: 1px;
            }

            .gv td {
                font-size: 14px;
                padding: 2px 2px;
                text-align: center;
                border: 1px solid black;
                border-collapse: collapse;
                width: 1%;
            }

        input[type="submit"]:hover {
            background-color: orange;
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
    <div class="panel panel-default">
        <div class="panel-heading"><strong>LIST OF FEE PAYMENTS</strong></div>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="search">
                        <%--<label>By Staff name:</label>--%>
                        <asp:TextBox ID="txtnamesearch" runat="server" placeholder="By Student name" AutoPostBack="true"></asp:TextBox>
                        <asp:Button ID="btnsearchname" CssClass="btn-danger" runat="server" Text="Search" OnClick="btnsearchname_Click" />
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="pull-right">
                         <div class="search">
                        <%--<label>By Class name:</label>--%>
                        <asp:TextBox ID="txtclasssearch" runat="server" placeholder="By Class name"></asp:TextBox>
                        <asp:Button ID="btnsearchclass" CssClass="btn-danger" runat="server" Text="Search" OnClick="btnsearchclass_Click" />
                    </div>
                    </div>
                </div>
            </div>
            <asp:GridView ID="gvFeepayments" runat="server" AutoGenerateColumns="False" DataKeyNames="FPId"
                OnRowCommand="gvFeepayments_RowCommand" ShowHeaderWhenEmpty="True"
                EmptyDataText="No Records Found" GridLines="both" CssClass="gv"
                EmptyDataRowStyle-ForeColor="Red"
                OnRowDataBound="OnRowDataBound" ShowFooter="true"
                OnRowDeleting="gvFeepayments_RowDeleting"
                AllowPaging="true" OnPageIndexChanging="OnPaging" PageSize="20">
                <Columns>
                    <asp:BoundField DataField="FPId" HeaderText="ID" ItemStyle-Width="30" Visible="false" />
                    <asp:BoundField DataField="studentid" HeaderText="S-ID" />
                    <asp:BoundField DataField="studentname" HeaderText="Student Name" />
                    <asp:BoundField DataField="classname" HeaderText="Class" />
                    <asp:BoundField DataField="coursefee" HeaderText="" Visible="false" />
                    <asp:BoundField DataField="busfee" HeaderText="" Visible="false" />
                    <asp:BoundField DataField="discount" HeaderText="" Visible="false" />
                    <asp:BoundField DataField="totalfee" HeaderText="TotalFee" />
                    <asp:BoundField DataField="firstinst" HeaderText="Inst-1" />
                    <asp:BoundField DataField="date1" HeaderText="Date-1" Visible="false" />
                    <asp:BoundField DataField="secondinst" HeaderText="Inst-2" />
                    <asp:BoundField DataField="date2" HeaderText="Date-2" Visible="false" />
                    <asp:BoundField DataField="thirdinst" HeaderText="Inst-3" />
                    <asp:BoundField DataField="date3" HeaderText="Date-3" Visible="false" />
                    <asp:BoundField DataField="fourthinst" HeaderText="Inst-4" />
                    <asp:BoundField DataField="date4" HeaderText="Date-4" Visible="false" />
                    <asp:BoundField DataField="totalreceived" HeaderText="Tot-Reci" />
                    <asp:BoundField DataField="totalbalance" HeaderText="Bal-Fee" />
                    <asp:BoundField DataField="feestatus" HeaderText="Status" />

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <%--<asp:Button ID="btnSelect" runat="server" Text="Select"/>--%>
                            <%--<asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure? want to delete the department.');" />--%>
                            <a href='<%#"EditFeePayment.aspx?FPId="+DataBinder.Eval(Container.DataItem,"FPId") %>'><strong>View</strong></a>
                            <asp:LinkButton ID="lnkdelete" Text="Delete" ForeColor="Red" Font-Bold="true" runat="server" CommandName="Delete" CommandArgument='<%# Eval("FPId") %>' OnClientClick="return ConfirmDelete(this);" ToolTip="Delete" CausesValidation="false"></asp:LinkButton>

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
</asp:Content>
