<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #container {
            max-width: 80%;
        }

        .panel {
            padding: 0px 0px;
            border: 1px solid;
            /*background: #e6e6e6;*/
        }

        label {
            /*font-weight: bold;*/
            /*color: #ff6a00;*/
            color: #1b1b1b;
        }

        .input-field {
            font-weight: 500;
            font-size: 18px;
            color: #000;
        }

        .form-control {
        }
    </style>
    <script type="text/javascript">
        function showpreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgpreview').css('visibility', 'visible');
                    $('#imgpreview').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

    <div class="container" id="container">
        <div class="panel panel-primary">
            <div class="panel-heading bg-info">
                <strong>STUDENT REGISTRATION FORM</strong><br />
                <b style="color: #fff; font-size: 14px;">All fields are required !!!</b>
            </div>
            <div class="panel-body">
                <div class="row">
                    <%-- <form class="form-inline">--%>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label for="">Session:</label>                                                                  
                                    <asp:DropDownList ID="ddlsession" runat="server" Font-Size="16px" CssClass="">
                                    </asp:DropDownList>                                    
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label for="">Registraion ID:</label>                                   
                                   <asp:Label ID="lblstudentid" runat="server" Text="" Visible="false"></asp:Label>
                                    <asp:Label ID="lblregdid" runat="server" Text="" Font-Size="Medium"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label>Student's Name</label>
                            <asp:TextBox ID="txtstudentname" runat="server" CssClass="input-field form-control input-sm" />
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label>Father's Name</label>
                                    <asp:TextBox ID="txtfather" runat="server" CssClass="input-field form-control input-sm" />
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label>Mother's Name</label>
                                    <asp:TextBox ID="txtmother" runat="server" CssClass="input-field form-control input-sm" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label>Date of Birth (yyyy-mm-dd)</label>
                                    <asp:TextBox ID="txtdob" runat="server" CssClass="dateofbirth input-field form-control input-sm" />
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label for="pimage">Gender :</label>
                                    <asp:DropDownList ID="ddlgender" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                        <asp:ListItem Value="0">---Select gender---</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <!-- Second row -->

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label for="pimage">Category :</label>
                                    <asp:DropDownList ID="ddlcategory" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                        <asp:ListItem>Janajati</asp:ListItem>
                                        <asp:ListItem>Dalit</asp:ListItem>
                                        <asp:ListItem>Brahamins</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label for="pimage">Religion :</label>
                                    <asp:DropDownList ID="ddlreligion" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                        <asp:ListItem>Hindu</asp:ListItem>
                                        <asp:ListItem>Muslim</asp:ListItem>
                                        <asp:ListItem>Christian</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label for="pimage">Admission Date (yyyy-mm-dd)</label>
                                    <asp:TextBox ID="txtadmdate" runat="server" CssClass="admissiondate input-field form-control input-sm" />
                                </div>

                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label for="pimage">Class Admitted :</label>
                                    <asp:DropDownList ID="ddlclass" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Permanent Address :</label>
                            <asp:TextBox ID="txtaddress" runat="server" CssClass="input-field form-control input-sm" />
                        </div>
                        <div class="form-group">
                            <label>Father's Mobile No</label>
                            <asp:TextBox ID="txtmobileno" runat="server" CssClass="input-field form-control input-sm" />
                        </div>


                    </div>

                    <%--</form>--%>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="form-group">
                            <img id="imgpreview" class="img-responsive" src="#" style="width: 140px; height: 160px; visibility: hidden; margin-left: 30px" />
                            <label>Student's Photo</label>
                            <asp:FileUpload ID="fuphoto" runat="server" CssClass="form-control" onchange="showpreview(this);" />
                        </div>
                        <hr />
                        <div class="form-group">
                            <label for="pimage">Student Type :</label>
                            <asp:DropDownList ID="studenttype" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                                <asp:ListItem>Regular</asp:ListItem>
                                <asp:ListItem>New Student</asp:ListItem>
                                <asp:ListItem>Left Over</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="pimage">Bus Route :</label>
                            <asp:DropDownList ID="ddlbusroute" runat="server" Font-Size="16px" CssClass="form-control input-sm">
                            </asp:DropDownList>
                        </div>
                        

                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" runat="server" Width="100px" CssClass="btn btn-success center-block" Text="Submit" OnClientClick="javascript:return validate();" OnClick="btnSubmit_Click" Font-Bold="True" Font-Size="Medium" />
                            </div>
                        </div>
                    </div>

                </div>



            </div>
        </div>
    </div>


<script type="text/javascript">
        window.onload = function () {
            var mainInputFrom = document.getElementsByClassName("dateofbirth");
            mainInputFrom.nepaliDatePicker();
            var mainInputto = document.getElementsByClassName("admissiondate");
            mainInputto.nepaliDatePicker();
        };
        function validate() {
            if (Required('<%=txtstudentname.ClientID%>', 'enter student fullname name...'))
                if (Required('<%=txtfather.ClientID%>', 'enter father name of the student'))
                    if (Required('<%=txtdob.ClientID%>', 'enter or select date of birth'))
                        if (Required('<%=txtadmdate.ClientID%>', 'enter or select date of admission'))
                            if (Required('<%=ddlclass.ClientID%>', 'select the class to be admitted.'))
                            if (Required('<%=ddlgender.ClientID%>', 'Select gender of the student'))
                                if (Required('<%=txtaddress.ClientID%>', 'enter address'))
                                    if (Required('<%=txtmobileno.ClientID%>', 'enter guardian/parents mobile number.'))

                                        if (Required('<%=fuphoto.ClientID%>', 'select photo of the student.'))
                                            if (Required('<%=ddlbusroute.ClientID%>', 'Select Bus Route of the student'))
                                                    return true;
                return false;


            }
    </script>

</asp:Content>
