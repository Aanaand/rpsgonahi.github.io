<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditFeePayment.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.EditFeePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .txtfield {
            font-size: 16px;
            color: #000;
        }

        .input-field {
            font-size: 16px;
            color: #000;
        }
    </style>

    <div class="panel panel-default">
        <div class="panel-heading"><strong>LIST OF FEE PAYMENTS</strong></div>
        <div class="panel-body">
            <div class="row">

                <div class="col-md-4">
                    <div class="form-horizontal">

                        <div class="form-group">
                            <label class="control-label col-sm-3" for="email">ID:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtstudentid" runat="server" ReadOnly="true" Width="60px" BackColor="#99ccff" CssClass="txtfield form-control input-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="email">Class:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtclass" runat="server" ReadOnly="true" BackColor="#99ccff" CssClass="txtfield form-control input-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="email">Student:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtname" runat="server" ReadOnly="true" BackColor="#99ccff" CssClass="txtfield form-control input-sm"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <%--<label class="control-label col-sm-2" for="email">Email:</label>--%>
                        <div class="col-sm-10">
                            <asp:Image ID="img_binary" runat="server" Height="120px" Width="100px" ImageUrl="#" />
                        </div>
                    </div>

                </div>
                <div class="col-md-4"></div>



            </div>
        </div>

        <div class="row">
            <div class="card" style="border: 1px solid gray; width: 90%; margin: auto; padding: 10px 20px">
                <div class="card-body">
                    <%--<h6 class="card-title text-center">Card title</h6>--%>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Installment-1:</label>
                                <asp:TextBox ID="inst1" runat="server" CssClass="input-field form-control input-sm" onkeypress="return ValidNumeric()" OnTextChanged="inst1_TextChanged" AutoPostBack="true"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label for="">Installment-2:</label>
                                <asp:TextBox ID="inst2" runat="server" CssClass="input-field form-control input-sm" onkeypress="return ValidNumeric()" OnTextChanged="txtSecondinstallment_TextChanged" AutoPostBack="true"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label for="">Installment-3:</label>
                                <asp:TextBox ID="inst3" runat="server" CssClass="input-field form-control input-sm" onkeypress="return ValidNumeric()" OnTextChanged="txtThirdinstallment_TextChanged" AutoPostBack="true"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label for="">Installment-4:</label>
                                <asp:TextBox ID="inst4" runat="server" CssClass="input-field form-control input-sm" onkeypress="return ValidNumeric()" OnTextChanged="txtFourthinstallment_TextChanged" AutoPostBack="true"></asp:TextBox>

                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">First Date :</label>
                                <asp:TextBox ID="txtdate1" runat="server" CssClass="date1 input-field form-control input-sm"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Second Date :</label>
                                <asp:TextBox ID="txtdate2" runat="server" CssClass="date2 input-field form-control input-sm"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Third Date :</label>
                                <asp:TextBox ID="txtdate3" runat="server" CssClass="date3 input-field form-control input-sm"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Fourth Date :</label>
                                <asp:TextBox ID="txtdate4" runat="server" CssClass="date4 input-field form-control input-sm"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="" class="label-right">Course Fee:</label>
                                <asp:TextBox ID="txtcoursefee" runat="server" CssClass="input-field form-control input-sm" ReadOnly="true"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="label-right">Bus Fee:</label>
                                <asp:TextBox ID="txtbusroutefee" runat="server" CssClass="input-field form-control input-sm" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="label-right">Discount Fee:</label>
                                <asp:TextBox ID="txtdiscountfee" runat="server" CssClass="input-field form-control input-sm" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Total Fee:</label>
                                <asp:TextBox ID="txttotalfee" runat="server" CssClass="input-field form-control input-sm" AutoPostBack="true" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Fee Received:</label>
                                <asp:TextBox ID="txtReceivedfee" runat="server" CssClass="input-field form-control input-sm" AutoPostBack="true" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Fee Balance:</label>
                                <asp:TextBox ID="txtbalancefee" runat="server" CssClass="input-field form-control input-sm" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="">Fee Status:</label>
                                <%--<asp:TextBox ID="txtfeeStatus" runat="server" CssClass="input-field form-control input-sm" ReadOnly="true"></asp:TextBox>--%>
                                <asp:Label ID="lblfeestatus" runat="server" CssClass="input-field form-control input-sm" Text=""></asp:Label>
                            </div>
                        </div>

                    </div>

                    <div class="row text-center">
                        <div class="relative">
                            <asp:Button ID="btnClear" runat="server" CssClass="navitem btn btn-info" Text="Clear" />
                            <asp:Button ID="btnUpdate" runat="server" CssClass="navitem btn btn-success" Text="Update" OnClientClick="javascript:return validate();" OnClick="btnUpdate_Click" />
                            <asp:Button ID="Button3" runat="server" CssClass="navitem btn btn-primary" Text="Print" />
                            <asp:Button ID="btncancel" runat="server" CssClass="navitem btn btn-danger" Text="Cancel" OnClick="btncancel_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </div>





    </div>
    <script type="text/javascript">
        window.onload = function () {
            var date1 = document.getElementsByClassName("date1");
            date1.nepaliDatePicker();
            var date2 = document.getElementsByClassName("date2");
            date2.nepaliDatePicker();
            var date3 = document.getElementsByClassName("date3");
            date3.nepaliDatePicker();
            var date4 = document.getElementsByClassName("date4");
            date4.nepaliDatePicker();
        };



        function ValidNumeric() {
            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode >= 48 && charCode <= 57)
            { return true; }
            else
            {
                alert("Please Enter Numbers Only");
                return false;
            }
        }

    </script>


</asp:Content>
