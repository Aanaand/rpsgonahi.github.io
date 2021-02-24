<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddImages.aspx.cs" Inherits="RPSWebsiteCSharp.Admin.AddImages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>

    <style type="text/css">
        /*body {
            background: url(../img/backgrounds/music-bg.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            background-size: cover;
        }*/

        .container {
            margin-top: 20px;
        }

        #lblResult {
            font-size: 16px;
            color: #fff;
        }

        #GridView1 td { /* this applies to the Gridviews Data fileds */
            padding: 1px;
            text-align: center;
            width: 3%;
            border: solid 1px black;
            border-collapse: collapse;
        }

        #GridView1 th /* this applies to the Gridviews Headers */ {
            padding: 0px 0px;
            border-width: 1px;
            text-align: center;
        }

        .albumart {
            width: 120px;
            height: 90px;
        }
    </style>
    <div class="row ">
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="form-horizontal" style="padding: 0 20px">
                <div class="form-group">
                    <label for="songtype">Select Image:</label>
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" onchange="CheckExt(this)" />
                </div>

                <div class="form-group">
                    <label for="songtype">Image Area:</label>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlContentArea" AutoPostBack="true" CssClass="form-control" runat="server">
                                <asp:ListItem>Slider Images</asp:ListItem>
                                <asp:ListItem>Image Gallery</asp:ListItem>
                                <asp:ListItem>About</asp:ListItem>
                                <asp:ListItem>Sample 3</asp:ListItem>
                            </asp:DropDownList>

                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddlContentArea" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>

                <div class="form-group">
                    <label for="songtype">Description:</label>
                    <asp:TextBox ID="txtdescription" runat="server" CssClass="form-control col-lg-12" placeholder="Enter description of the image" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </div>

                <div class="form-group">
                    <asp:Button ID="btnUpload" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="BtnSubmit_Click" OnClientClick="return validate();" />
                </div>

                <asp:Label ID="Labelmsg" runat="server" Text=""></asp:Label>

            </div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">         
               
               <div class="panel panel-default">
                    <div class="panel-heading">List of All Images</div>
                    <asp:GridView ID="GridView1" runat="server" CssClass="footable" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:TemplateField HeaderText="SI.No">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Img Name" DataField="Name" />
                            <asp:BoundField HeaderText="Description" DataField="Description" />
                            <asp:BoundField HeaderText="Image Area" DataField="ContentArea" />
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="Img1" runat="server" ImageUrl='<%#Eval("imgpath")%>' Width="120px" Height="80px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <%--<asp:LinkButton runat="server" ID="lnk_Delete" Text="Delete" CausesValidation="false" CommandName="Delete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('Are you sure?')" />--%>
                                    <asp:ImageButton ID="lnk_Delete" runat="server" Text="" ImageUrl="../appmedia/buttons/delete.png" Width="30" Height="30" CommandName="Delete" CommandArgument='<%# Eval("imageid") %>' OnClientClick="return confirm('Are you sure you want to delete selected image ?')" ToolTip="Delete" CausesValidation="false" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="Black" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </div>
            </div>
       
    </div>


      <script type="text/javascript">
        $(function () {
            $('[id*=GridView1]').footable();
        });


        var validFiles = ["png", "jpg", "gif"];
        function CheckExt(obj) {
            var source = obj.value;
            var ext = source.substring(source.lastIndexOf(".") + 1, source.length).toLowerCase();
            for (var i = 0; i < validFiles.length; i++) {
                if (validFiles[i] == ext)
                    break;
            }
            if (i >= validFiles.length) {
                alert("THAT IS NOT A VALID IMAGE\nPlease load an image with the image format of one of the following:\n\n" + validFiles.join(",       "));
                document.getElementById('FileUpload1').value = '';
                return false;
            }

            //check image file size
            var uploadControl = document.getElementById('<%= FileUpload1.ClientID %>');
            if (uploadControl.files[0].size > 1048576) {
                document.getElementById('dvMsg').style.display = "block";
                return false;
            }
            else {
                document.getElementById('dvMsg').style.display = "none";
                return true;
            }

        }

        function validate() {
            var desc = document.getElementById('<%=txtdescription.ClientID %>').value;
            if (desc == "") {
                alert("Image Description cannot be blank!");
                return false;
            }
        }


    </script>
</asp:Content>
