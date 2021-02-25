<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register-user-tabs.aspx.vb" Inherits="Form2Flow.register_user_tabs" %>

<!DOCTYPE html>
<html lang="en">


<!-- auth-register.html  21 Nov 2019 04:05:01 GMT -->
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>User Registration</title>
     <!-- General CSS Files -->
  <link rel="stylesheet" href="../assets/css/app.min.css">
  <link rel="stylesheet" href="../assets/bundles/jquery-selectric/selectric.css">
  <link rel="stylesheet" href="../assets/bundles/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="../assets/bundles/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <link rel="stylesheet" href="../assets/bundles/select2/dist/css/select2.min.css">
  <link rel="stylesheet" href="../assets/bundles/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
  <link rel="stylesheet" href="../assets/bundles/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">
  <link rel="stylesheet" href="../assets/bundles/summernote/summernote-bs4.css">
    <link rel="stylesheet" href="../assets/bundles/dropzonejs/dropzone.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="stylesheet" href="../assets/css/components.css">
  <!-- Custom style CSS -->
  <!-- <link rel="stylesheet" href="../assets/css/custom.css"> -->
  <link rel='shortcut icon' type='image/x-icon' href='../assets/img/red.ico' />
</head>

<body>
    <div class="loader"></div>
    <div id="app">
        <form runat="server" class="needs-validation" novalidate="">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                </asp:ScriptManager>
            <section class="section">
                <div class="container mt-5">

                        
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="login-brand">
                                User Registration
                            </div>
                                <div class="card">
                                    <div class="card-header">
                                        
                                    </div>
                                    <div class="card-body">
                                        <!-- Tab Buttons -->
                                        <ul class="nav nav-pills" id="myTab3" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="home-tab3" data-toggle="tab" href="#accoundDetails" role="tab"
                                                   aria-controls="home" aria-selected="true">1. Account Details</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="profile-tab3" data-toggle="tab" href="#jobDetails" role="tab"
                                                   aria-controls="profile" aria-selected="false">2. Job Details</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="contact-tab3" data-toggle="tab" href="#communicationDetails" role="tab"
                                                   aria-controls="contact" aria-selected="false">3. Communication Details</a>
                                            </li>
                                             <li class="nav-item">
                                                <a class="nav-link" id="permission-tab3" data-toggle="tab" href="#permissionDetails" role="tab"
                                                   aria-controls="permission" aria-selected="false">4. Permission Details</a>
                                            </li>
                                             <li class="nav-item">
                                                <a class="nav-link" id="addUser-tab3" data-toggle="tab" href="#addUser" role="tab"
                                                   aria-controls="addUser" aria-selected="false">5. Add Another user</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content" id="myTabContent2">
                                            <!-- Screeen 1 - User Account details -->
                                            <div class="tab-pane fade show active" id="accoundDetails" role="tabpanel" aria-labelledby="home-tab3">
                                                
                                                <div class="card card-primary">
                                                    <%--<div class="card-header">
                                            <h4>1. Account Details</h4>
                                        </div>--%>
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

                                                        <!-- First Name and Last Name -->
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-12">
                                                                <label for="email">First Name</label>
                                                                <input id="txtFirstName" runat="server" type="text" class="form-control" name="firstName" tabindex="1" required autofocus>
                                                                <div class="invalid-feedback">
                                                                    Please fill in the firstname
                                                                </div>
                                                            </div>
                                                            <div class="form-group col-md-6 col-12">
                                                                <label>Last Name</label>
                                                                <input id="txtLastName" runat="server" type="text" class="form-control" name="lastName" tabindex="1" required>
                                                                <div class="invalid-feedback">
                                                                    Please fill in the lastname
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <!-- Phone Num and CV -->
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-12">
                                                                <label for="email">Phone (Mobile)</label>
                                                                <input id="txtCell" runat="server" type="text" class="form-control" name="phoneNum" tabindex="1" required autofocus>
                                                                <div class="invalid-feedback">
                                                                    Please fill in the phone number
                                                                </div>
                                                            </div>
                                                            <div class="form-group col-md-6 col-12">
                                                                <label for="email">Curriculum Vitae</label>
                                                                <asp:FileUpload ID="FileUpload1" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                                <div class="invalid-feedback">
                                                                    Please upload the curriculum viate
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <asp:Label ID="lblError1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-6">
                                                                <button type="button" id="btnBackToLogin" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnBackToLogin_Click" tabindex="4">Back to Login</button>
                                                            </div>
                                                            <div class="form-group col-md-6 col-6">
                                                                <asp:Button ID="btnToScreen2" CssClass="btn btn-primary btn-lg btn-block" Text="Next" runat="server" OnClick="btnToScreen2_Click" TabIndex="4"></asp:Button>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                            </div>
                                            <!-- Screeen 2 - Job details -->
                                            <div class="tab-pane fade" id="jobDetails" role="tabpanel" aria-labelledby="profile-tab3">
                                                
                                                <div class="card card-primary">
                                                    <%-- <div class="card-header">
                                            <h4>2. Job Details</h4>
                                        </div>--%>
                                                    <div class="card-body">
                                                        <!-- Position and Department -->
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-12">
                                                                <label for="phone">Position</label>
                                                                <asp:DropDownList ID="ddlPosition" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                                <div class="invalid-feedback">
                                                                    Please select the position
                                                                </div>
                                                            </div>
                                                            <div class="form-group col-md-6 col-12">
                                                                <label for="phone">Department</label>
                                                                <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                                <div class="invalid-feedback">
                                                                    Please select the department you work in
                                                                </div>
                                                            </div>
                                                        </div>
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
                                                            <div class="form-group col-md-6 col-6">
                                                                <button type="button" id="btnBackToScreen1" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnBackToScreen1_Click" tabindex="4">Previous</button>
                                                            </div>
                                                            <div class="form-group col-md-6 col-6">
                                                                <asp:Button ID="btnToScreen3" CssClass="btn btn-primary btn-lg btn-block" Text="Next" runat="server" OnClick="btnToScreen3_Click" TabIndex="4"></asp:Button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Screeen 3 - Communication details -->
                                            <div class="tab-pane fade" id="communicationDetails" role="tabpanel" aria-labelledby="contact-tab3">
                                                
                                                <div class="card card-primary">
                                                    <%--<div class="card-header">
                                            <h4>3. Communication Details</h4>
                                        </div>--%>
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
                                                            <div class="form-group col-md-6 col-6">
                                                                <button type="button" id="btnBackToScreen2" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen2_Click" tabindex="4">Previous</button>
                                                            </div>
                                                            <div class="form-group col-md-6 col-6">
                                                                <asp:Button ID="btnToScreen4" CssClass="btn btn-primary btn-lg btn-block" Text="Next" runat="server" OnClick="btnToScreen4_Click" TabIndex="4"></asp:Button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Screeen 4 - System Permission details-->
                                            <div class="tab-pane fade" id="permissionDetails" role="tabpanel" aria-labelledby="permission-tab3">
                                                <div class="card card-primary">
                                                    <%--<div class="card-header">
                                                        <h4>4. System Permission Details</h4>
                                                    </div>--%>
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
                                                        <div class="row">
                                                            <div class="form-group col-md-2 col-12">
                                                                <div class="control-label">Profile Type </div>
                                                                <label class="custom-switch mt-4">
                                                                    <input type="checkbox" id="cbLearner" runat="server" name="custom-switch-checkbox" class="custom-switch-input">
                                                                    <span class="custom-switch-indicator"></span>
                                                                    <span class="custom-switch-description">Learner</span>
                                                                </label>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <asp:Label ID="lblError4" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-6">
                                                                <button type="button" id="btnBackToScreen3" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen3_Click" tabindex="4">Previous</button>
                                                            </div>
                                                            <div class="form-group col-md-6 col-6">
                                                                <asp:Button ID="btnRegisterUser" CssClass="btn btn-primary btn-lg btn-block" Text="Submit" runat="server" OnClick="btnRegisterUser_Click" TabIndex="4"></asp:Button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                             <!-- Screeen 5 - Add Another user  -->
                                            <div class="tab-pane fade" id="addUser" role="tabpanel" aria-labelledby="addUser-tab3">
                                                <div class="card card-primary">
                                                    <%-- <div class="card-header">
                                                        <h4>5. Add Another User</h4>
                                                    </div>--%>
                                                    <div class="card-body">

                                                        <!-- Regional Office -->
                                                        <div class="row" align="center">
                                                            <div class="form-group col-md-12 col-12">
                                                                <h4>Do you want to add another user?</h4>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <asp:Label ID="lblError5" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-6">
                                                                <button type="button" id="btnNoUser" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnNoUser_ServerClick" tabindex="4">No</button>
                                                            </div>
                                                            <div class="form-group col-md-6 col-6">
                                                                <asp:Button ID="btnYesUser" CssClass="btn btn-primary btn-lg btn-block" Text="Yes" runat="server" OnClick="btnYesUser_Click" TabIndex="4"></asp:Button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>


                    <%--<div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="login-brand">
                                User Registration
                            </div>
                            <asp:MultiView ID="mvRegisterUser" runat="server">

                                


                                <!-- Screeen 1 - User Account details -->
                                <asp:View ID="viewAccountDetails" runat="server">
                                    
                                </asp:View>

                                
                                <asp:View ID="viewJobDetails" runat="server">
                                    
                                </asp:View>

                                <!-- Screeen 3 - Communication details -->
                                <asp:View ID="viewCommunicationDetails" runat="server">
                                    
                                </asp:View>

                                <!-- Screeen 4 - System Permission details-->
                                <asp:View ID="viewSystemPermissionDetails" runat="server">
                                    
                                </asp:View>

                                 <!-- Screeen 5 - Add Another user  -->
                                <asp:View ID="viewIsThereRegionalOffices" runat="server">
                                    
                                </asp:View>

                            </asp:MultiView>


                        </div>
                    </div>--%>
                </div>
                    
            </section>

            <!-- Add Department Modal -->
            <div class="modal fade" id="ModAddDepartment" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Add Department</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group col-md-12 col-12">
                                    <label>Department</label>
                                    <input id="txtAddDepartment" runat="server" type="text" class="form-control">
                                    <div class="invalid-feedback">
                                        Please fill in the department name
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="form-group col-md-12 col-12">
                                    <asp:Label ID="lblErrorDepartment" runat="server" Text="" Visible="false"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer bg-whitesmoke br">
                            <button type="button" id="btnAddDepartment" runat="server" class="btn btn-primary" >Add</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        </div>

                    </div>
                </div>
            </div>


        </form>
    </div>


    <script type="text/javascript">  
        var x = document.getElementById("getGPS");
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition, showError);
            }
            else { x.innerHTML = "Geolocation is not supported by this browser."; }
        }
        function showPosition(position) {
            var latlondata = position.coords.latitude + "," + position.coords.longitude;
            //var latlon = string(latlondata);
            //var latlon = position.coords.latitude + "," +  position.coords.longitude;
            //alert(latlon);
            document.getElementById("txtGPS").value = latlondata;
            //var img_url = "http://maps.googleapis.com/maps/api/staticmap?center="
            //    + latlondata + "&zoom=14&size=400x300&sensor=false";
            //document.getElementById("mapholder").innerHTML = "< img src = '" + img_url + "' />";  
        }
        function showError(error) {
            if (error.code == 1) {
                x.innerHTML = "User denied the request for Geolocation."
            }
            else if (err.code == 2) {
                x.innerHTML = "Location information is unavailable."
            }
            else if (err.code == 3) {
                x.innerHTML = "The request to get user location timed out."
            }
            else {
                x.innerHTML = "An unknown error occurred."
            }
        }
    </script>  

    


    <!-- General JS Scripts -->
  <script src="../assets/js/app.min.js"></script>
  <!-- JS Libraies -->
  <script src="../assets/bundles/jquery-selectric/jquery.selectric.min.js"></script>
  <script src="../assets/bundles/jquery-pwstrength/jquery.pwstrength.min.js"></script>
  <script src="../assets/bundles/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script src="../assets/bundles/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
  <script src="../assets/bundles/select2/dist/js/select2.full.min.js"></script>
    <script src="../assets/bundles/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
  <script src="../assets/bundles/summernote/summernote-bs4.js"></script>
  <script src="../assets/bundles/sweetalert/sweetalert.min.js"></script>
    <script src="../assets/bundles/dropzonejs/min/dropzone.min.js"></script>
    <script src="../assets/js/page/multiple-upload.js"></script>
  <!-- Page Specific JS File -->
  <script src="../assets/js/page/posts.js"></script>
  <script src="../assets/js/page/sweetalert.js"></script>
  <!-- Template JS File -->
  <script src="../assets/js/scripts.js"></script>

     <script>
         $(document).ready(function () {

             // Initialize select2
             $("#ddlCountry").select2();
             $("#ddlRegion").select2();
             $("#ddlArea").select2();
             $("#ddlDepartments").select2();


         });
     </script>
   
    
</body>


</html>
