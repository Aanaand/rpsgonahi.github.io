<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FeePayment.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.FeePayment" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .input-field {
            color: #0c0b0b;
            font-size: 16px;
            width: 140px;
        }

        .lbl-field {
            font-size: 15px;
            color: #ff0000;
        }

        .label-right {
            text-align: right;
            color: #ff6a00;
        }

        .relative {
            padding: 10px;
            position: relative;
            /*background-color: #fff;*/
            margin: 5px;
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

    <div class="container-fluid">
        <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <strong>STUDENT'S FEE PAYMENT</strong>
                    ---Select Class and Student name---
                    <div class="pull-right">
                        <label for="">Session:</label>
                        <asp:DropDownList ID="ddlsession" runat="server" Font-Size="16px" ForeColor="Black" CssClass="">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="panel-body">
                    <input type="hidden" runat="server" id="hidfeepayid" />
                    <div class="row" style="background-color: #fff">

                        <div class="col-sm-3">

                            <div class="form-group">
                                <label for="">Class Name:</label>
                                <asp:DropDownList ID="ddlclassname" runat="server" Font-Size="16px" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlclassname_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="">Student Name:</label>
                                 <asp:DropDownList ID="ddlstudentname" runat="server" Font-Size="16px" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlstudentname_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList> 
                                
                            </div>
                        </div>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-3">
                            <br />
                            <label for="">Gender:</label>
                            <asp:Label ID="lblgender" runat="server" Style="margin-left: 0px;" CssClass="lbl-field" Text=""></asp:Label><br />

                            <label for="">Father Name:</label>
                            <asp:Label ID="lblfathername" runat="server" Style="margin-left: 0px;" CssClass="lbl-field" Text=""></asp:Label><br />


                            <label for="">Category:</label>
                            <asp:Label ID="lblcategory" runat="server" Style="margin-left: 0px;" CssClass="lbl-field" Text=""></asp:Label><br />


                            <label for="">Admission Date:</label>
                            <asp:Label ID="lbladmdate" runat="server" Style="margin-left: 0px;" CssClass="lbl-field" Text=""></asp:Label><br />
                        </div>
                        <div class="col-sm-3">
                            <br />
                            <label for="">Address:</label>
                            <asp:Label ID="lbladdress" runat="server" Style="margin-left: 0px;" CssClass="lbl-field" Text=""></asp:Label><br />


                            <label for="">Mobile No.:</label>
                            <asp:Label ID="lblmobile" runat="server" Style="margin-left: 0px;" CssClass="lbl-field" Text=""></asp:Label><br />


                            <label for="">Student Type:</label>
                            <asp:Label ID="lbltype" runat="server" Style="margin-left: 0px;" CssClass="lbl-field" Text=""></asp:Label><br />

                            <asp:HiddenField ID="hddnbusrouteid" runat="server" />
                            <label for="">Student Route:</label>
                            <asp:Label ID="lblroute" runat="server" Style="margin-left: 0px;" CssClass="lbl-field" Text=""></asp:Label><br />


                        </div>
                        <div class="col-sm-2">
                            <asp:Image ID="img_binary" CssClass="studentimg form-control" Visible="false" Width="130px" Height="140px" ImageUrl="#" runat="server" />
                        </div>
                    </div>

                    <div class="card" style="border: 1px solid gray; width: 90%; margin: auto; padding: 10px 20px">
                        <div class="card-body">
                            <%--<h6 class="card-title text-center">Card title</h6>--%>
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label for="">Installment-1:</label>

                                        <div class="input-group">

                                            <asp:TextBox ID="txtFirstinstallment" runat="server" CssClass="input-field form-control input-sm" onkeypress="return ValidNumeric()" OnTextChanged="txtFirstinstallment_TextChanged" AutoPostBack="true"></asp:TextBox>


                                            <span class="input-group-btn">
                                                <asp:Button ID="btnaddfee1" runat="server" CssClass="btn btn-danger input-sm" Text="Go" OnClick="btnaddfee1_Click" OnClientClick="javascript:return validate();" />
                                            </span>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label for="">Installment-2:</label>

                                        <asp:TextBox ID="txtSecondinstallment" runat="server" CssClass="input-field form-control input-sm" onkeypress="return ValidNumeric()" OnTextChanged="txtSecondinstallment_TextChanged1" AutoPostBack="true"></asp:TextBox>


                                    </div>
                                    <div class="form-group">
                                        <label for="">Installment-3:</label>

                                        <asp:TextBox ID="txtThirdinstallment" runat="server" CssClass="input-field form-control input-sm" onkeypress="return ValidNumeric()" OnTextChanged="txtThirdinstallment_TextChanged" AutoPostBack="true"></asp:TextBox>


                                    </div>
                                    <div class="form-group">
                                        <label for="">Installment-4:</label>

                                        <asp:TextBox ID="txtFourthinstallment" runat="server" CssClass="input-field form-control input-sm" onkeypress="return ValidNumeric()" OnTextChanged="txtFourthinstallment_TextChanged" AutoPostBack="true"></asp:TextBox>


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
                                        <asp:TextBox ID="txtTotalfee" runat="server" CssClass="input-field form-control input-sm" AutoPostBack="true" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label for="">Fee Received:</label>
                                        <asp:TextBox ID="txtReceivedfee" runat="server" CssClass="input-field form-control input-sm" AutoPostBack="true" ReadOnly="true"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Fee Balance:</label>
                                        <asp:TextBox ID="txtBalancefee" runat="server" CssClass="input-field form-control input-sm" ReadOnly="true"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Fee Status:</label>
                                        <asp:TextBox ID="txtfeestatus" runat="server" CssClass="input-field form-control input-sm" ReadOnly="true"></asp:TextBox>
                                        <%--<asp:Label ID="lblfeestatus" runat="server" CssClass="input-field form-control input-sm" Text=""></asp:Label>--%>
                                    </div>
                                </div>

                            </div>

                            <div class="row text-center">
                                <div class="relative">
                                    <asp:Button ID="btnClear" runat="server" CssClass="navitem btn btn-info" Text="Clear" OnClick="btnClear_Click" />
                                    <asp:Button ID="btnSave" runat="server" CssClass="navitem btn btn-success" Enabled="false" Text="Submit" OnClick="btnSave_Click" OnClientClick="javascript:return validate();" />
                                    <asp:Button ID="btnprint" runat="server" CssClass="navitem btn btn-primary" Enabled="false" Text="Preview" OnClick="btnprint_Click" OnClientClick="return userValid();" />




                                </div>
                            </div>

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

        function validate() {
            if (Required('<%=ddlclassname.ClientID%>', 'Select Class name first.'))
                if (Required('<%=ddlstudentname.ClientID%>', 'select Student name.'))
                    return true;
            return false;
        }

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


        function userValid() {
            var firstinst = document.getElementById("<%= txtFirstinstallment.ClientID %>");
            if (firstinst.value == 0) {
                alert("Blank Fee Payment cannot be printed.");
                firstinst.focus();
                return false;
            }
            return true;

            // document.forms[0].target = "_blank";
        }









    </script>
</asp:Content>
