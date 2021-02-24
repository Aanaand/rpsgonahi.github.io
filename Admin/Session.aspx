<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.Session" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <style>
        /*#GridView1 th{
            padding: 4px;
            border-width: 1px;
            text-align: center;
        }
           #GridView1 td{
                  padding: 1px;
            text-align: center;
            width: 3%;
            border: 1px solid black;
            border-collapse: collapse;
        }*/
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
        .panel{
            border: 1px solid;
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
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="panel">
                <div class="panel-heading bg-primary"><strong>SCHOOL SESSION</strong></div>
                <div class="panel-body">
                    <div class="form-horizontal" style="padding: 0 20px">
                        <div class="form-group">
                            <label for="">Session:</label>
                            <asp:Label ID="lblsessionid" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtsession" CssClass="form-control" runat="server"/>
                             
                        </div>
                        <div class="form-group">
                            <label for="">Start Date:</label>
                            <%--<input type="text"  id="nepali-datepicker1" class="form-control" placeholder="Select Nepali Date" value=""/>--%>
                            <asp:TextBox ID="txtdatefrom" CssClass="datepicfrom form-control" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label for="">End Date:</label>
                            <%--<input type="text"  id="nepali-datepicker2" class="form-control" placeholder="Select Nepali Date" value=""/>--%>
                            <asp:TextBox ID="txtdateto" CssClass="datepicto form-control bg-primary" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label for="">Active Status:</label>
                            <table border="0" cellpadding="2" cellspacing="2">
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" Text="Active" runat="server" CssClass="form-control" GroupName="Status" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>.</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton2" Text="Inactive" runat="server" CssClass="form-control" GroupName="Status" />
                                    </td>
                                </tr>
                            </table>

                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                        </div>
                        <asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <div class="panel">
                <div class="panel-heading bg-primary"><strong>LIST OF SCHOOL SESSIONS</strong></div>
                <div class="panel-body">
                    <asp:GridView ID="GridView1" ShowHeaderWhenEmpty="True" HeaderStyle-CssClass="bg-info text-white text-center" runat="server"
                        AutoGenerateColumns="False" CssClass="footable" Font-Bold="False" ForeColor="#333333" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
                        <EmptyDataTemplate>
                            <div class="text-center">No Data Found <strong>Add new data</strong></div>
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="SessionID" />
                            <asp:BoundField HeaderText="Session" DataField="Session" />
                            <asp:BoundField HeaderText="Start Date" DataField="StartDate" />
                            <asp:BoundField HeaderText="End Date" DataField="EndDate" />
                            <asp:BoundField HeaderText="Status" DataField="Status" />
                            <asp:BoundField HeaderText="Create Date" DataField="CreatedDate" />

                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:ImageButton ID="lnk_Delete" runat="server" ImageUrl="~/Appmedia/buttons/delete50.png" Width="30" Height="30" CommandName="Delete" CommandArgument='<%# Eval("SessionID") %>' OnClientClick="return ConfirmDelete(this);" ToolTip="Delete" CausesValidation="false" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle CssClass="bg-info text-white"></HeaderStyle>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

    <!-- Nepali Datepicker Script -->

   

    <script type="text/javascript">
        window.onload = function () {
            //var mainInput1 = document.getElementById("nepali-datepicker1");
            //mainInput1.nepaliDatePicker();
            //var mainInput2 = document.getElementById("nepali-datepicker2");
            //mainInput2.nepaliDatePicker();

            var mainInputFrom = document.getElementsByClassName("datepicfrom");
            mainInputFrom.nepaliDatePicker();
            var mainInputto = document.getElementsByClassName("datepicto");
            mainInputto.nepaliDatePicker();
        };
    </script>

    <script src="validationRequired.js"></script>
      <script type="text/javascript">
          function Validation() {
              if (Required('<%=txtsession.ClientID%>', 'Please Enter School Session.'))
                if (Required('<%=txtdatefrom.ClientID%>', 'Please enter Start Date'))
                    if (Required('<%=txtdateto.ClientID%>', 'Please enter end date'))



                            //if (Required('<%=RadioButton1.ClientID%>', 'enter Your mobile No or WhatsApp No. required'))
                                return true;
                return false;
            }
    </script>
</asp:Content>
