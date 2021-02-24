<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BusRoute.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.BusRoute" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
        .gv
        {
            font-family: Arial;
            margin-top: 10px;
            font-size: 14px;
        }
        .gv th
        {
            background-color: #5D7B9D;
            font-weight: bold;
            color: #fff;
            padding: 2px 10px;
             
            border-width: 1px;
           
        }
        .gv td
        {
            padding: 2px 10px;
           
            text-align: center;
            width: 3%;
            border: 1px solid black;
            border-collapse: collapse;

        }
        input[type="submit"]
        {
            margin: 2px 10px;
            padding: 2px 20px;
            background-color: #5D7B9D;
            border-radius: 10px;
            border: solid 1px #000;
            cursor: pointer;
            color: #fff;
        }
        input[type="submit"]:hover
        {
            background-color: orange;
        }
    </style>

        <div class="row ">
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="panel">
                <div class="panel-heading bg-primary"><strong>ADD BUS ROUTE</strong></div>
                <div class="panel-body">
                    <div class="form-horizontal" style="padding: 0 20px">
                        <div class="form-group">
                             <label for="">Bus Route Name:</label>
                            <asp:TextBox ID="txtbusroute" runat="server" Font-Size="Large" CssClass="form-control input-sm"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtbusroute"></asp:RequiredFieldValidator>--%>
                            </div>
                        <div class="form-group">
                            <label for="">Bus Route Fee:</label>                             
                            <asp:TextBox ID="txtbusfee" runat="server" Font-Size="Large" CssClass="form-control input-sm"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtbusfee"></asp:RequiredFieldValidator>--%>
                        </div>                       
                        <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" OnClientClick="javascript:return validate();"/>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="false" />
                            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                        </div>
                    </div>
                </div>
                 <input type="hidden" runat="server" id="hidBusRouteID" />
            </div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <div class="panel">
                <div class="panel-heading bg-primary"><strong>LIST OF BUS ROUTES</strong></div>
                <div class="panel-body">
                    <asp:GridView ID="gvDepartments" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                        EmptyDataText="No Records Found" GridLines="both" CssClass="gv" EmptyDataRowStyle-ForeColor="Red">
                        <Columns>
                            <asp:TemplateField HeaderText="Bus Route">
                                <ItemTemplate>
                                    <asp:Label ID="lblBusroute" runat="server" Text='<%#Eval("BusRouteName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bus Fee">
                                <ItemTemplate>
                                    <asp:Label ID="lblBusFee" runat="server" Text='<%#Eval("BusRouteFee") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                       
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure? want to delete the department.');"
                                        OnClick="btnDelete_Click" />
                                    <asp:Label ID="lblBusRouteID" runat="server" Text='<%#Eval("BusRouteID") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
            <div class="row">
                <div class="col text-center">
                     <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Red" ></asp:Label>
                </div>
            </div>            
    </div>

          <script type="text/javascript">
              function validate() {
                  if (Required('<%=txtbusroute.ClientID%>', 'Enter Bus Route.'))
                  if (Required('<%=txtbusfee.ClientID%>', 'enter bus fee!!'))

                        return true;
            return false;
        }
    </script>

    
</asp:Content>
