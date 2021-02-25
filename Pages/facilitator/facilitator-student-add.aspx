<%@ Page Title="Facilitator - Add Learner" Language="vb" AutoEventWireup="false" MasterPageFile="~/Facilitator.Master" CodeBehind="facilitator-student-add.aspx.vb" Inherits="Form2Flow.facilitator_student_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="needs-validation" novalidate="">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div class="main-content">
            <section class="section">
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="login-brand">
                                Learner Registration
                            </div>
                            <asp:MultiView ID="mvRegisterLearner" runat="server">

                                <!-- Screeen 1 - Learner Account details -->
                                <asp:View ID="viewAccountDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>Account Details</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- Username, Email and Phone Num -->
                                            <div class="row">
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Username</label>
                                                    <input id="txtUserName" runat="server" type="text" class="form-control" name="userName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the username
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label>E-mail Address</label>
                                                    <input id="txtEmail" runat="server" type="text" class="form-control" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the e-mail
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Phone (Mobile)</label>
                                                    <input id="txtCell" runat="server" type="text" class="form-control" name="phoneNum" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the phone number
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Title, First Name, Maiden Name and Last Name -->
                                            <div class="row">
                                                <div class="form-group col-md-2 col-12">
                                                    <label for="email">Title</label>
                                                    <asp:DropDownList ID="ddlTitle" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the title of the learner
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">First Name</label>
                                                    <input id="txtFirstName" runat="server" type="text" class="form-control" name="firstName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the first name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label for="email">Maiden Name</label>
                                                    <input id="txtMaidenName" runat="server" type="text" class="form-control" name="maidenName" tabindex="1">
                                                    <div class="invalid-feedback">
                                                        Please fill in the maiden name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label>Last Name</label>
                                                    <input id="txtLastName" runat="server" type="text" class="form-control" name="lastName" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the last name
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Gender, Marital Status, Race and Disability -->
                                            <div class="row">
                                                <div class="form-group col-md-3 col-12">
                                                    <label for="email">Gender</label>
                                                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the gender of the learner
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label for="email">Race</label>
                                                    <asp:DropDownList ID="ddlRace" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the marital status of the learner
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label for="email">Marital Status</label>
                                                    <asp:DropDownList ID="ddlMaritalStatus" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the marital status of the learner
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label for="email">Disability</label>
                                                    <asp:ListBox ID="ddlDisability" runat="server" CssClass="form-control select2" Width="100%"></asp:ListBox>
                                                    <div class="invalid-feedback">
                                                        Please select the disability status of the learner
                                                    </div>
                                                </div>
                                                <%--<div class="col-sm-1 col-md-1 col-1">
                                                    <label style="color: white;">Category</label>
                                                    <button type="button" class="btn btn-icon btn-primary" data-toggle="modal" data-target="#ModAddDisability"><i class="fas fa-plus"></i></button>
                                                    <div class="invalid-feedback">
                                                        Please select document type
                                                    </div>
                                                </div>--%>
                                            </div>

                                            <!-- Identification Type, Identification Value and Employment Status -->
                                            <div class="row">
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Identification Type</label>
                                                    <asp:DropDownList ID="ddlIdentificationType" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the identification type of the learner
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label>Identification Number</label>
                                                    <input id="txtIdentificationValue" runat="server" type="text" class="form-control" name="idVal" tabindex="1">
                                                    <div class="invalid-feedback">
                                                        Please fill in the Identification Number
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label>Employment Status</label>
                                                    <asp:DropDownList ID="ddlEmploymentStatus" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the employment status of the learner
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="form-group col-md-12 col-12">
                                                    <label for="email">Avatar</label>
                                                    <asp:FileUpload ID="upAvatar" runat="server" type="file" class="form-control" />
                                                    <div class="invalid-feedback">
                                                        Please upload the learner's avatar
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <asp:Label ID="lblError1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnCancel" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnCancel_ServerClick" tabindex="4">Cancel</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen1" CssClass="btn btn-primary btn-lg btn-block" Text="Submit" runat="server" OnClick="btnSubmitScreen1_Click" TabIndex="4"></asp:Button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </asp:View>
                                                              

                                 <!-- Screen 2 - Add Another Learner? -->
                                 <asp:View ID="viewAddAnotherUser" runat="server">
                                        <div class="card card-primary">
                                            <div class="card-header">
                                                <h4>Add User</h4>
                                            </div>
                                            <div class="card-body">

                                               <div class="row" align="center">
                                                    <div class="form-group col-md-12 col-12">
                                                        <h5>Do you want to add another user?</h5>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="lblError2" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-3 offset-md-6 col-6">
                                                        <button type="button" id="btnNoUser" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnNoUser_ServerClick1" tabindex="4">No</button>
                                                    </div>
                                                    <div class="form-group col-md-3 col-6">
                                                        <asp:Button ID="btnYesUser" CssClass="btn btn-primary btn-lg btn-block" Text="Yes" runat="server" OnClick="btnYesUser_Click1" TabIndex="4"></asp:Button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:View>

                            </asp:MultiView>


                        </div>
                    </div>
                </div>
            </section>
        </div>


        <%--<script type="text/javascript" src='<%= ResolveUrl("~/script/jquery-1.11.1.min.js")%>' ></script>--%>
    </form>

    <!-- Add Disability Modal -->
    <%--<div class="modal fade" id="ModAddDisability" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Add Disability</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="form-group col-md-12 col-12">
                            <label>Disability</label>
                            <input id="txtPosition" runat="server" type="text" class="form-control" required>
                            <div class="invalid-feedback">
                                Please fill in the job-title
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12 col-12">
                            <label>Position / Job-Title Description </label>
                            <input id="txtPositionDescription" runat="server" type="text" class="form-control">
                            <div class="invalid-feedback">
                                Please fill in the job-title
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="form-group col-md-12 col-12">
                            <asp:Label ID="lblErrorModal" runat="server" Text="" Visible="false"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-whitesmoke br">
                    <button type="button" id="btnAddDisability" runat="server" class="btn btn-primary" onserverclick="btnAddDisability_ServerClick">Add</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                </div>

            </div>
        </div>
    </div>--%>
</asp:Content>
