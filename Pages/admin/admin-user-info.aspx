<%@ Page Title="Admin - User Information" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-user-info.aspx.vb" Inherits="Form2Flow.admin_user_info" %>
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
                                Update User Information
                            </div>
                            <%-- MULTIVIEW LINK BUTTONS --%>
                            <div class="row nav nav-pills" align="center">

                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToAccDetails" runat="server" class="btn btn-primary btn-block cancel" style="width: 90%;" onserverclick="btnBackToScreen1_Click" tabindex="4">1. Account Details</button>
                                    <%--<asp:Button ID="" runat="server" Text="1. Account Details" Width="90%" CssClass="btn btn-primary btn-block" OnClick="btnBackToScreen1_Click" />--%>
                                </div>

                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToJobDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen2_Click" tabindex="4">2. Job Details</button>
                                    <%--<asp:Button ID="" runat="server" Text="2. Job Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen2_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToCommDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen3_Click" tabindex="4">3. Organizational Structure</button>
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
                                                    <asp:Button ID="btnToScreen2" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnToScreen2_Click" TabIndex="4"></asp:Button>
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
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="phone">Position</label>
                                                    <asp:DropDownList ID="ddlPosition" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the position of the user
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
                                                    <button type="button" id="btnBackToScreen1" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnCancel_ServerClick" tabindex="4">Cancel</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnToScreen3" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnToScreen3_Click" TabIndex="4"></asp:Button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                <!-- Screeen 3 - CHain of Command details -->
                                <asp:View ID="viewCommunicationDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>3. Organizational Structure</h4>
                                        </div>
                                        <div class="card-body">
                                            <!-- Direct Report To and Indirect Report to -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="number">Directly Reports To</label>
                                                    <asp:DropDownList ID="ddlDirectReportTo" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select your manager
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="number">Indirectly Reports To</label>
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
                                                    <button type="button" id="btnBackToScreen2" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnCancel_ServerClick" tabindex="4">Cancel</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnToScreen4" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnToScreen4_Click" TabIndex="4"></asp:Button>
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
                                                    <button type="button" id="btnBackToScreen3" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnCancel_ServerClick" tabindex="4">Cancel</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnRegisterHeadOffice" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnRegisterHeadOffice_Click" TabIndex="4"></asp:Button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </asp:View>

                                <!-- Screen 5 - Add Another user  -->
                                <asp:View ID="viewIsThereRegionalOffices" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>5. Add Another User</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- Add another user -->
                                            <div class="row" align="center">
                                                <div class="form-group col-md-12 col-12">
                                                    <h4>Do you want to add another user?</h4>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <asp:Label ID="lblError5" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnNoUser" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnNoUser_ServerClick" tabindex="4">No</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnYesUser" CssClass="btn btn-primary btn-lg btn-block" Text="Yes" runat="server" OnClick="btnYesUser_Click" TabIndex="4"></asp:Button>
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
                        <button type="button" id="btnAddDepartment" runat="server" class="btn btn-primary">Add</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    </div>

                </div>
            </div>
        </div>


    </form>



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

</asp:Content>
