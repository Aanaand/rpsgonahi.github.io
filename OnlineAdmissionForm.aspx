<%@ Page Title="" Language="C#" MasterPageFile="~/RPSMaster.Master" AutoEventWireup="true" CodeBehind="OnlineAdmissionForm.aspx.cs" Inherits="RPSWebsiteCSharp.OnlineAdmissionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
    <style>
        .panel {
            width: 90%;
            margin: auto;
        }

        img {
            width: 100%;
        }

        .form-control {
            font-size: 14px;
            color: #000;
        }
        .error {
            background-color: #070d71;
            font-weight: 400;           
            font-size: 12px;
            padding: 5px 6px 5px 6px;
            color: #fff;
            text-align: center;
            white-space: nowrap;
        }
   
    </style>

 <script type="text/javascript">
     //Validate image size before upload
     function validateTypeAndSize(uploadCtrl) {
         // Get uploaded file extension
         var extension = $(uploadCtrl).val().split('.').pop().toLowerCase();
         // Create array with the files extensions that we wish to upload
         var validFileExtensions = ['jpeg', 'jpg', 'png', 'bmp'];
         //Check file extension in the array.if -1 that means the file extension is not in the list.
         if ($.inArray(extension, validFileExtensions) == -1) {
             $('#spnMessage1').text("Sorry!! Upload only jpg, jpeg, png, bmp image").show();
             // Clear fileuload control selected file
             $(uploadCtrl).replaceWith($(uploadCtrl).val('').clone(true));
             //Disable Submit Button
             $('#btnSubmit').prop('disabled', true);
             //Clear Image preview
             $('#imgPreview1').prop('src', '');
         }
         else {
             // Check and restrict the file size to 32 KB=32768
             if ($(uploadCtrl).get(0).files[0].size > (102400)) {
                 $('#spnMessage1').text("Sorry!! Max allowed image size is 100 KB").show();
                 // Clear fileuload control selected file
                 $(uploadCtrl).replaceWith($(uploadCtrl).val('').clone(true));
                 //Disable Submit Button
                 $('#btnSubmit').prop('disabled', true);
                 //Clear Image preview
                 $('#imgPreview1').prop('src', '');
             }
             else {
                 //Clear and Hide message span
                 $('#spnMessage1').text('').hide();
                 //Enable Submit Button
                 $('#btnSubmit').prop('disabled', false);
                 //Preview Image if valid
                 previewImage(uploadCtrl);

                 $('#imgPreview1').css('visibility', 'visible');
             }
         }
     }
     //Preview image before upload
     function previewImage(input) {
         if (input.files && input.files[0]) {
             var reader = new FileReader();
             reader.onload = function (e) {
                 $('#imgPreview1')
                 .attr('src', e.target.result)
                 .width(120)
                 .height(140);
             };
             reader.readAsDataURL(input.files[0]);
         }
     }
    </script>

      <script type="text/javascript">
          //Validate image size before upload
          function validateAndPreview(uploadCtrl) {
              // Get uploaded file extension
              var extension = $(uploadCtrl).val().split('.').pop().toLowerCase();
              // Create array with the files extensions that we wish to upload
              var validFileExtensions = ['jpeg', 'jpg', 'png', 'bmp'];
              //Check file extension in the array.if -1 that means the file extension is not in the list.
              if ($.inArray(extension, validFileExtensions) == -1) {
                  $('#spnMessage2').text("Sorry!! Upload only jpg, jpeg, png, bmp image").show();
                  // Clear fileuload control selected file
                  $(uploadCtrl).replaceWith($(uploadCtrl).val('').clone(true));
               
                  //Clear Image preview
                  $('#imgPreview2').prop('src', '');
              }
              else {
                  // Check and restrict the file size to 32 KB=32768
                  if ($(uploadCtrl).get(0).files[0].size > (102400)) {
                      $('#spnMessage2').text("Sorry!! Max allowed image size is 100 KB").show();
                      // Clear fileuload control selected file
                      $(uploadCtrl).replaceWith($(uploadCtrl).val('').clone(true));
                    
                      //Clear Image preview
                      $('#imgPreview2').prop('src', '');
                  }
                  else {
                      //Clear and Hide message span
                      $('#spnMessage2').text('').hide();
                 
                      //Preview Image if valid
                      previewImage2(uploadCtrl);

                      $('#imgPreview2').css('visibility', 'visible');
                  }
              }
          }
          //Preview image before upload
          function previewImage2(input) {
              if (input.files && input.files[0]) {
                  var reader = new FileReader();
                  reader.onload = function (e) {
                      $('#imgPreview2')
                      .attr('src', e.target.result)
                      .width(250)
                      .height(250);
                  };
                  reader.readAsDataURL(input.files[0]);
              }
          }
    </script>
    <div class="primary-container-group">
        <!-- Background -->
        <div class="primary-container-background">
            <div class="primary-container"></div>
            <div class="clearfix"></div>
        </div>
        <div class="container">
            <div class="row margin-vert-30">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">ADMISSION FORM</div>
                            <div class="panel-body">
                                <div class="heading" style="font-size: 12px; font-weight: bold; color: red;">
                                    All fields are mandatory
                                </div>
                               
                                <div class="col-md-12 bg-primary"></div>                                
                                  <br />
                                                         
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Full Name:</label>
                                            <asp:TextBox ID="txtstudentname" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>DOB (B.S.)</label>
                                            <asp:TextBox ID="txtdob" runat="server" CssClass="dateofbirth form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="pimage">Gender :</label>
                                            <asp:DropDownList ID="ddlgender" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Value="0">---Select gender---</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label for="pimage">Enrollment Type :</label>
                                            <asp:DropDownList ID="ddlenrolltype" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Value="0">---Select One---</asp:ListItem>
                                                <asp:ListItem>Day Scholar</asp:ListItem>
                                                <asp:ListItem>Hosteler</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label for="pimage">Category :</label>
                                            <asp:DropDownList ID="ddlcategory" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Value="0">---Select One---</asp:ListItem>
                                                <asp:ListItem>Janajati</asp:ListItem>
                                                <asp:ListItem>Dalit</asp:ListItem>
                                                <asp:ListItem>Brahamins</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label for="pimage">Religion :</label>
                                            <asp:DropDownList ID="ddlreligion" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Value="0">---Select One---</asp:ListItem>
                                                <asp:ListItem>Hindu</asp:ListItem>
                                                <asp:ListItem>Muslim</asp:ListItem>
                                                <asp:ListItem>Christian</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                              <div class="form-group">
                                            <label for="pimage">Nationality :</label>
                                            <asp:DropDownList ID="ddlnationality" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem>Nepali</asp:ListItem>
                                                <asp:ListItem>Indian</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                    </div>
                                    <div class="col-md-4">                                  
                                        <div class="form-group">
                                            <label>Previous School:</label>
                                            <asp:TextBox ID="txtpreviousschool" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Previous Class</label>
                                            <asp:TextBox ID="txtpreviousclass" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label>Class to be admitted:</label>
                                            <asp:TextBox ID="txtclassadmitted" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Father's Name:</label>
                                            <asp:TextBox ID="txtfather" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Mother's Name:</label>
                                            <asp:TextBox ID="txtmother" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Permanent Address:</label>
                                            <asp:TextBox ID="txtaddress" runat="server"  CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Contact No:</label>
                                            <asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                       
                                    </div>
                                    <div class="col-md-4">
                                         <div class="form-group">
                                            <label>Upload student photo:</label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" onchange="validateTypeAndSize(this)"/>
                                            <p><span id="spnMessage1" class="error" style="display: none;"></span></p> 
                                        </div>
                                        <div class="form-group text-center">
                                            <img id="imgPreview1" class="img-responsive" src="#" style="width: 120px; height: 140px; visibility: hidden;" />
                                           
                                        </div>
                                        <div class="form-group">
                                            <label>Upload Birth certificate:</label>
                                            <asp:FileUpload ID="FileUpload2" runat="server" onchange="validateAndPreview(this)" />
                                             <span id="spnMessage2" class="error" style="display: none;"></span>
                                        </div>
                                        <div class="form-group text-center">
                                            <img id="imgPreview2" class="img-responsive" src="#" style="width: 250px; height: 250px; visibility: hidden;" />
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group text-center">
                                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success" OnClientClick="javascript:return validate();" Text="Apply" Width="100" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnReset" runat="server" CssClass="btn btn-danger" Text="Reset" Width="100" OnClick="btnReset_Click" />
                                </div>

                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>
    <script src="Admin/validationRequired.js"></script>
    <script type="text/javascript">
        window.onload = function () {
            var mainInputFrom = document.getElementsByClassName("dateofbirth");
            mainInputFrom.nepaliDatePicker();           
        };
        function validate() {






            if (Required('<%=txtstudentname.ClientID%>', 'enter student fullname ...'))
                if (Required('<%=txtdob.ClientID%>', 'enter date of birth of the student.'))
                    if (Required('<%=ddlgender.ClientID%>', 'Select gender of the student'))
                    if (Required('<%=ddlenrolltype.ClientID%>', 'select enrollment type.'))
                        if (Required('<%=ddlcategory.ClientID%>', 'select category'))
                            if (Required('<%=ddlreligion.ClientID%>', 'select religion.'))                              
                                if (Required('<%=ddlnationality.ClientID%>', 'select nationality.'))
                                    if (Required('<%=txtpreviousschool.ClientID%>', 'enter previous school name.'))
                                        if (Required('<%=txtpreviousclass.ClientID%>', 'enter previous class that you have studied.'))
                                            if (Required('<%=txtclassadmitted.ClientID%>', 'enter class you want to admitted.'))
                                                if (Required('<%=txtfather.ClientID%>', 'enter father name.'))
                                                    if (Required('<%=txtmother.ClientID%>', 'enter mother name.'))
                                                        if (Required('<%=txtaddress.ClientID%>', 'enter permanent address.'))
                                                            if (Required('<%=txtmobileno.ClientID%>', 'enter one or two mobile number.'))
                                                                if (Required('<%=FileUpload1.ClientID%>', 'upload photo of the student.'))
                                                                    if (Required('<%=FileUpload2.ClientID%>', 'upload birth certificate.'))                                            
                                                return true;
        return false;
        }  
    </script>
</asp:Content>
