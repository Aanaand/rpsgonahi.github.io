<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PrintFeeReceipt.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.PrintFeeReceipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading"><strong>FEE PAYMENTS INFORMATION</strong></div>
        <div class="panel-body">
            <div class="col-md-4">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="email">Class:</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control input-sm"></asp:DropDownList>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="email">Student:</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control input-sm"></asp:DropDownList>

                        </div>
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                    <div class="form-group">                       
                        <div class="col-sm-10">
                            <asp:Image ID="img_binary" runat="server" Height="120px" Width="100px" BorderStyle="Solid" ImageUrl="#" />
                        </div>
                    </div>

                </div>
                <div class="col-md-4"></div>
        </div>

    </div>
</asp:Content>
