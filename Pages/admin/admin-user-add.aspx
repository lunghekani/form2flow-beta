<%@ Page Title="Admin - Add User" Language="vb" EnableEventValidation="false" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-user-add.aspx.vb" Inherits="Form2Flow.admin_user_add" %>
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
                                    User Registration
                                </div>
                                <%-- MULTIVIEW LINK BUTTONS --%>
                                <div class="row nav nav-pills" align="center">

                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToAccDetails" runat="server" class="btn btn-primary btn-block cancel" style="width: 90%;" onserverclick="btnToScreen1_Click" tabindex="4">1. Account Details</button>
                                    <%--<asp:Button ID="" runat="server" Text="1. Account Details" Width="90%" CssClass="btn btn-primary btn-block" OnClick="btnBackToScreen1_Click" />--%>
                                </div>

                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToJobDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen2_Click" tabindex="4">2. Job Details</button>
                                    <%--<asp:Button ID="" runat="server" Text="2. Job Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen2_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToCommDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen3_Click" tabindex="4">3. Communication Details</button>
                                    <%--<asp:Button ID="" runat="server" Text="3. Communication Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen3_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToSysPermissionDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen4_Click" tabindex="4">4. Permission Details</button>
                                    <%--<asp:Button runat="server" Text="4. Permission Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen4_Click" />--%>
                                </div>

                            </div>
                                <br />
                                <asp:MultiView ID="mvRegisterUser" runat="server">

                                    <!-- Screeen 1 - User Account details -->
                                    <asp:View ID="viewAccountDetails" runat="server">
                                        <div class="card card-primary">
                                            <div class="card-header">
                                                <h4>1. Account Details</h4>
                                            </div>
                                            <div class="card-body">

                                                 <!-- Username and Email -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Username</label>
                                                    <input id="txtUserName" runat="server" type="text" class="form-control" name="userName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the username
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label>E-mail Address</label>
                                                    <input id="txtEmail" runat="server" type="text" class="form-control" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the e-mail
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- First Name, Maiden Name and Last Name -->
                                            <div class="row">
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">First Name</label>
                                                    <input id="txtFirstName" runat="server" type="text" class="form-control" name="firstName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the first name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Maiden Name</label>
                                                    <input id="txtMaidenName" runat="server" type="text" class="form-control" name="maidenName" tabindex="1">
                                                    <div class="invalid-feedback">
                                                        Please fill in the maiden name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label>Last Name</label>
                                                    <input id="txtLastName" runat="server" type="text" class="form-control" name="lastName" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the last name
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Phone Num and Avatar -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Phone (Mobile)</label>
                                                    <input id="txtCell" runat="server" type="text" class="form-control" name="phoneNum" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the phone number
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Avatar</label>
                                                    <asp:FileUpload ID="upAvatar" runat="server" type="file" class="form-control" />
                                                    <div class="invalid-feedback">
                                                        Please upload an avatar
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- CV -->
                                            <div class="row">
                                                <div class="form-group col-md-12 col-12">
                                                    <label for="email">Curriculum Vitae</label>
                                                    <asp:FileUpload ID="upCV" runat="server" type="file" class="form-control" required="" />
                                                    <div class="invalid-feedback">
                                                        Please upload the curriculum viate
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
                                                        <asp:Button ID="btnSubmitScreen1" CssClass="btn btn-primary btn-lg btn-block" Text="Next" runat="server" OnClick="btnSubmitScreen1_Click" TabIndex="4"></asp:Button>
                                                        <button type="button" id="btnToScreen2" runat="server" class="btn btn-primary btn-lg btn-block" onserverclick="btnToScreen2_Click" tabindex="4" visible="false">Next</button>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                    </asp:View>

                                      <!-- Screeen 2 - Job details -->
                                <asp:View ID="viewJobDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>2. Job Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <!-- Position and Department -->
                                            <asp:UpdatePanel ID="panelJobDetails" runat="server">
                                                <%--<Triggers ><asp:AsyncPostBackTrigger ControlID="btnAddPosition"/></Triggers>--%>    
                                                <ContentTemplate>
                                                        
                                            <div class="row">
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="phone">Branch</label>
                                                    <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-control select2" Width="100%" OnSelectedIndexChanged="ddlBranch_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the branch the user works in
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="phone">Department</label>
                                                    <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the department the user works in
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label for="phone">Position</label>
                                                    <asp:DropDownList ID="ddlPosition" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the position of the user
                                                    </div>
                                                </div>
                                                <div class="col-sm-1 col-md-1 col-1">
                                                                <label style="color: white;">Category</label>
                                                                <button type="button" class="btn btn-icon btn-primary" data-toggle="modal" data-target="#ModAddPosition"><i class="fas fa-plus"></i></button>
                                                                <div class="invalid-feedback">
                                                                    Please select document type
                                                                </div>
                                                            </div>
                                            </div>
                                                        </ContentTemplate>
                                                </asp:UpdatePanel>
                                            <!-- Start Date and Job Profile -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Start Date</label>
                                                    <input id="txtJobStartDate" runat="server" type="text" class="form-control datepicker" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please select the start date
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="website">Job Profile</label>
                                                    <asp:FileUpload ID="upJobProfile" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                    <div class="invalid-feedback">
                                                        Please upload the job profile
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Performance Appraisal and PDP -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Performance Appraisal</label>
                                                    <asp:FileUpload ID="upPerformanceAppraisal" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                    <div class="invalid-feedback">
                                                        Please upload the performance appraisal
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="website">PDP</label>
                                                    <asp:FileUpload ID="upPDP" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                    <div class="invalid-feedback">
                                                        Please upload the PDP
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <asp:Label ID="lblError2" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnToScreen1" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen1_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen2" CssClass="btn btn-primary btn-lg btn-block" Text="Next" runat="server" OnClick="btnSubmitScreen2_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnToScreen3" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen3_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                    <!-- Screeen 3 - Communication details -->
                                <asp:View ID="viewCommunicationDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>3. Communication Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <!-- Direct Report To and Indirect Report to -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="number">Direct Report To</label>
                                                    <asp:DropDownList ID="ddlDirectReportTo" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select your manager
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="number">Indirect Report To</label>
                                                    <asp:DropDownList ID="ddlIndirectReportTo" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select your manager
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <asp:Label ID="lblError3" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnBackToScreen2" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen2_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen3" CssClass="btn btn-primary btn-lg btn-block" Text="Next" runat="server" OnClick="btnSubmitScreen3_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnToScreen4" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen4_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                    <!-- Screeen 4 - System Permission Details -->
                                <asp:View ID="viewSystemPermissionDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>4. System Permission Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <!-- Assessor -->
                                            <div class="row">
                                                <div class="form-group col-md-2 col-6">
                                                    <div class="control-label">Profile Type </div>
                                                    <label class="custom-switch mt-4">
                                                        <input type="checkbox" id="cbAssessor" runat="server" name="custom-switch-checkbox" class="custom-switch-input">
                                                        <span class="custom-switch-indicator"></span>
                                                        <span class="custom-switch-description">Assessor</span>
                                                    </label>
                                                </div>
                                                <div class="form-group col-md-4 col-6">
                                                    <label for="email">Supporting Document</label>
                                                    <asp:FileUpload ID="upAssessorSuppDoc" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                    <div class="invalid-feedback">
                                                        Please upload your supporting document
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <label for="date">Issue Date</label>
                                                    <input id="txtAssessorIssueDate" runat="server" type="text" class="form-control datepicker" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the issue date for assessor supporting document
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <label for="date">Expiration Date</label>
                                                    <input id="txtAssessorExpirationDate" runat="server" type="text" class="form-control datepicker" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the expiration date for assessor supporting document
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Moderator -->
                                            <div class="row">
                                                <div class="form-group col-md-2 col-6">
                                                    <div class="control-label">Profile Type </div>
                                                    <label class="custom-switch mt-4">
                                                        <input type="checkbox" id="cbModerator" runat="server" name="custom-switch-checkbox" class="custom-switch-input">
                                                        <span class="custom-switch-indicator"></span>
                                                        <span class="custom-switch-description">Moderator</span>
                                                    </label>
                                                </div>
                                                <div class="form-group col-md-4 col-6">
                                                    <label for="email">Supporting Document</label>
                                                    <asp:FileUpload ID="upModeratorSuppDoc" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                    <div class="invalid-feedback">
                                                        Please upload your supporting document
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <label for="date">Issue Date</label>
                                                    <input id="txtModeratorIssueDate" runat="server" type="text" class="form-control datepicker" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the issue date for moderator supporting document
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <label for="date">Expiration Date</label>
                                                    <input id="txtModeratorExpirationDate" runat="server" type="text" class="form-control datepicker" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the expiration date for moderator supporting document
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Facilitator -->
                                            <div class="row">
                                                <div class="form-group col-md-2 col-6">
                                                    <div class="control-label">Profile Type </div>
                                                    <label class="custom-switch mt-4">
                                                        <input type="checkbox" id="cbFacilitator" runat="server" name="custom-switch-checkbox" class="custom-switch-input">
                                                        <span class="custom-switch-indicator"></span>
                                                        <span class="custom-switch-description">Facilitator</span>
                                                    </label>
                                                </div>
                                                <div class="form-group col-md-4 col-6">
                                                    <label for="email">Supporting Document</label>
                                                    <asp:FileUpload ID="upFacilitatorSuppDoc" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                    <div class="invalid-feedback">
                                                        Please upload your supporting document
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <label for="date">Issue Date</label>
                                                    <input id="txtFacilitatorIssuedDate" runat="server" type="text" class="form-control datepicker" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the issue date for facilitator supporting document
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <label for="date">Expiration Date</label>
                                                    <input id="txtFacilitatorExpirationDate" runat="server" type="text" class="form-control datepicker" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the expiration date for facilitator supporting document
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Mentor -->
                                            <div class="row">
                                                <div class="form-group col-md-2 col-6">
                                                    <div class="control-label">Profile Type </div>
                                                    <label class="custom-switch mt-4">
                                                        <input type="checkbox" id="cbMentor" runat="server" name="custom-switch-checkbox" class="custom-switch-input">
                                                        <span class="custom-switch-indicator"></span>
                                                        <span class="custom-switch-description">Mentor</span>
                                                    </label>
                                                </div>
                                                <div class="form-group col-md-4 col-6">
                                                    <label for="email">Supporting Document</label>
                                                    <asp:FileUpload ID="upMentorSuppDoc" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                    <div class="invalid-feedback">
                                                        Please upload your supporting document
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Administrator -->
                                            <div class="row">
                                                <div class="form-group col-md-2 col-12">
                                                    <div class="control-label">Profile Type </div>
                                                    <label class="custom-switch mt-4">
                                                        <input type="checkbox" id="cbAdmin" runat="server" name="custom-switch-checkbox" class="custom-switch-input">
                                                        <span class="custom-switch-indicator"></span>
                                                        <span class="custom-switch-description">Administrator</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <!-- Learner -->
                                            <%--<div class="row">
                                                <div class="form-group col-md-2 col-12">
                                                    <div class="control-label">Profile Type </div>
                                                    <label class="custom-switch mt-4">
                                                        <input type="checkbox" id="cbLearner" runat="server" name="custom-switch-checkbox" class="custom-switch-input">
                                                        <span class="custom-switch-indicator"></span>
                                                        <span class="custom-switch-description">Learner</span>
                                                    </label>
                                                </div>
                                            </div>--%>

                                            <div class="form-group">
                                                <asp:Label ID="lblError4" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnBackToScreen3" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen3_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen4" CssClass="btn btn-primary btn-lg btn-block" Text="Submit" runat="server" OnClick="btnSubmitScreen4_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnSubmit" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen2_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </asp:View>
                                    
                                   <!-- Screen 5 - Add another user  -->
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
                                                    <asp:Label ID="lblError5" runat="server" Text="" ForeColor="Red"></asp:Label>
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

     <!-- Add Position Modal -->
                <div class="modal fade" id="ModAddPosition" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalCenterTitle">Add Position</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <div class="modal-body">
                                <div class="row">
                                    <div class="form-group col-md-12 col-12">
                                        <label>Position / Job-Title Name</label>
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
                                <button type="button" id="btnAddPosition" runat="server" class="btn btn-primary" onserverclick="btnAddPosition_ServerClick">Add</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            </div>

                        </div>
                    </div>
                </div>





    


</asp:Content>
