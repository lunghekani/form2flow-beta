<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Facilitator.Master" CodeBehind="facilitator-student-info.aspx.vb" Inherits="Form2Flow.facilitator_student_info" %>
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
                                Learner Info
                            </div>
                            <%-- MULTIVIEW LINK BUTTONS --%>
                            <div class="row nav nav-pills" align="center">

                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToAccDetails" runat="server" class="btn btn-primary btn-block cancel" style="width: 90%;" onserverclick="btnToScreen1_Click" tabindex="4">1. Account Details</button>
                                    <%--<asp:Button ID="" runat="server" Text="1. Account Details" Width="90%" CssClass="btn btn-primary btn-block" OnClick="btnBackToScreen1_Click" />--%>
                                </div>

                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToAddressDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen2_Click" tabindex="4">2. Address Details</button>
                                    <%--<asp:Button ID="" runat="server" Text="2. Job Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen2_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToNOKDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen3_Click" tabindex="4">3. Next of Kin Details</button>
                                    <%--<asp:Button ID="" runat="server" Text="3. Communication Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen3_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToEmploymentDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen4_Click" tabindex="4">4. Employment Details</button>
                                    <%--<asp:Button runat="server" Text="4. Permission Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen4_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToSecondaryEducationDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen5_Click" tabindex="4">5. Secondary Education Details</button>
                                    <%--<asp:Button runat="server" Text="4. Permission Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen4_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToTertiaryEducationDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen6_Click" tabindex="4">6. Tertiary Education Details</button>
                                    <%--<asp:Button runat="server" Text="4. Permission Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen4_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToWorkExperienceDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen7_Click" tabindex="4">7. Work Experince Details</button>
                                    <%--<asp:Button runat="server" Text="4. Permission Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen4_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToComputerLiteracyDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen8_Click" tabindex="4">8. Computer Literacy Details</button>
                                    <%--<asp:Button runat="server" Text="4. Permission Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen4_Click" />--%>
                                </div>
                                <div class="col-md-3" style="padding: 5px;">
                                    <button type="button" id="btnGoToLanguageProficiencyDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen9_Click" tabindex="4">9. Language Proficiency Details</button>
                                    <%--<asp:Button runat="server" Text="4. Permission Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen4_Click" />--%>
                                </div>
                            </div>
                            <br />
                            <asp:MultiView ID="mvRegisterLearner" runat="server">

                                <!-- Screeen 1 - Learner Account details -->
                                <asp:View ID="viewAccountDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>1. Account Details</h4>
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
                                                    <input id="txtIdentificationValue" runat="server" type="text" class="form-control" name="idVal" tabindex="1" required>
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
                                                    <asp:Button ID="btnSubmitScreen1" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen1_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnToScreen2" runat="server" class="btn btn-primary btn-lg btn-block" onserverclick="btnToScreen2_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </asp:View>

                                <!-- Screeen 2 - Address details -->
                                <asp:View ID="viewAddressDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>2. Address Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <!-- Address -->
                                            <div class="row">
                                                <div class="form-group col-sm-9 col-md-9 col-12">
                                                    <label for="address">Address</label>
                                                    <input id="txtAddress" runat="server" type="text" class="form-control" name="address" tabindex="1" maxlength="255" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in your address
                                                    </div>
                                                </div>
                                                <div class="form-group col-sm-3 col-md-3 col-12">
                                                    <label>Postal Code</label>
                                                    <input id="txtPostalCode" runat="server" type="text" class="form-control" name="postalCode" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in your postal code
                                                    </div>
                                                </div>
                                                <%--<div class="col-sm-1 col-md-1 col-1">
                                                        <label style="color: white;">Category</label>
                                                        <button type="button" class="btn btn-icon btn-primary" runat="server" id="getGPS" onclick="getLocation()"><i class="fas fa-map-marker-alt"></i></button>
                                                        <div class="invalid-feedback">
                                                            Please select document type
                                                        </div>
                                                    </div>--%>
                                            </div>

                                            <!-- Country, Region and Area -->
                                            <asp:UpdatePanel ID="panelAddress" runat="server">
                                                <ContentTemplate>
                                                    <div class="row">


                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Country</label>
                                                            <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control select2" Width="100%" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" AutoPostBack="true">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="South Africa" Value="ZAF"></asp:ListItem>
                                                                <asp:ListItem Text="Namibia" Value="NAM"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <div class="invalid-feedback">
                                                                Please select a country
                                                            </div>
                                                        </div>

                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Region</label>
                                                            <asp:DropDownList ID="ddlRegion" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlRegion_SelectedIndexChanged" Width="100%" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Please select a region
                                                        </div>

                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Area</label>
                                                            <asp:DropDownList ID="ddlArea" runat="server" CssClass="form-control select2" Width="100%">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Please select a city
                                                        </div>


                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                            <div class="form-group">
                                                <asp:Label ID="lblError2" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnToScreen1" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen1_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen2" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen2_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnToScreen3" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen3_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                <!-- Screeen 3 - Next of Kin details -->
                                <asp:View ID="viewNOKDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>3. Next of Kin Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <!-- Title, First Name, Maiden Name and Last Name -->
                                            <div class="row">
                                                <div class="form-group col-md-2 col-12">
                                                    <label for="email">Title</label>
                                                    <asp:DropDownList ID="ddlNOKTitle" runat="server" CssClass="form-control select2" Width="100%"></asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select the title
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">First Name</label>
                                                    <input id="txtNOKFirstName" runat="server" type="text" class="form-control" name="firstName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the first name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label for="email">Maiden Name</label>
                                                    <input id="txtNOKMaidenName" runat="server" type="text" class="form-control" name="maidenName" tabindex="1">
                                                    <div class="invalid-feedback">
                                                        Please fill in the maiden name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label>Last Name</label>
                                                    <input id="txtNOKLastName" runat="server" type="text" class="form-control" name="lastName" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the last name
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- relationship, Email and Phone Num -->
                                            <div class="row">
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Relationship</label>
                                                    <input id="txtNOKRelation" runat="server" type="text" class="form-control" name="relationship" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the relation type
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label>E-mail Address</label>
                                                    <input id="txtNOKEmail" runat="server" type="text" class="form-control" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the e-mail
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Phone (Mobile)</label>
                                                    <input id="txtNOKPhone" runat="server" type="text" class="form-control" name="phoneNum" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the phone number
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Address -->
                                            <div class="row">
                                                <div class="form-group col-sm-9 col-md-9 col-12">
                                                    <label for="address">Address</label>
                                                    <input id="txtNOKAddress" runat="server" type="text" class="form-control" name="address" tabindex="1" maxlength="255" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the next of kin's address
                                                    </div>
                                                </div>
                                                <div class="form-group col-sm-3 col-md-3 col-12">
                                                    <label>Postal Code</label>
                                                    <input id="Text2" runat="server" type="text" class="form-control" name="postalCode" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the next of kin's postal code
                                                    </div>
                                                </div>
                                                <%--<div class="col-sm-1 col-md-1 col-1">
                                                        <label style="color: white;">Category</label>
                                                        <button type="button" class="btn btn-icon btn-primary" runat="server" id="getGPS" onclick="getLocation()"><i class="fas fa-map-marker-alt"></i></button>
                                                        <div class="invalid-feedback">
                                                            Please select document type
                                                        </div>
                                                    </div>--%>
                                            </div>

                                            <!-- Country, Region and Area -->
                                            <asp:UpdatePanel ID="panelNOKAddress" runat="server">
                                                <ContentTemplate>
                                                    <div class="row">


                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Country</label>
                                                            <asp:DropDownList ID="ddlNOKCountry" runat="server" CssClass="form-control select2" Width="100%" OnSelectedIndexChanged="ddlNOKCountry_SelectedIndexChanged" AutoPostBack="true">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="South Africa" Value="ZAF"></asp:ListItem>
                                                                <asp:ListItem Text="Namibia" Value="NAM"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <div class="invalid-feedback">
                                                                Please select a country
                                                            </div>
                                                        </div>

                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Region</label>
                                                            <asp:DropDownList ID="ddlNOKRegion" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlNOKRegion_SelectedIndexChanged" Width="100%" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Please select a region
                                                        </div>

                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Area</label>
                                                            <asp:DropDownList ID="ddlNOKArea" runat="server" CssClass="form-control select2" Width="100%">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Please select a city
                                                        </div>


                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>


                                            <div class="form-group">
                                                <asp:Label ID="lblError3" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnBackToScreen2" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen2_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen3" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen3_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnToScreen4" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen4_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                <!-- Screeen 4 - Employment Details -->
                                <asp:View ID="viewSystemPermissionDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>4. Employment Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <!-- relationship, Email and Phone Num -->
                                            <div class="row">
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Company Name</label>
                                                    <input id="txtEmpCompanyName" runat="server" type="text" class="form-control" name="empCompName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the company name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label>E-mail Address</label>
                                                    <input id="txtEmpEmail" runat="server" type="text" class="form-control" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the e-mail
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Phone (Mobile)</label>
                                                    <input id="txtEmpPhone" runat="server" type="text" class="form-control" name="phoneNum" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the phone number
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Address -->
                                            <div class="row">
                                                <div class="form-group col-sm-9 col-md-9 col-12">
                                                    <label for="address">Address</label>
                                                    <input id="txtEmpAddress" runat="server" type="text" class="form-control" name="address" tabindex="1" maxlength="255" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the address
                                                    </div>
                                                </div>
                                                <div class="form-group col-sm-3 col-md-3 col-12">
                                                    <label>Postal Code</label>
                                                    <input id="txtEmpPostalCode" runat="server" type="text" class="form-control" name="postalCode" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the postal code
                                                    </div>
                                                </div>
                                                <%--<div class="col-sm-1 col-md-1 col-1">
                                                        <label style="color: white;">Category</label>
                                                        <button type="button" class="btn btn-icon btn-primary" runat="server" id="getGPS" onclick="getLocation()"><i class="fas fa-map-marker-alt"></i></button>
                                                        <div class="invalid-feedback">
                                                            Please select document type
                                                        </div>
                                                    </div>--%>
                                            </div>

                                            <!-- Country, Region and Area -->
                                            <asp:UpdatePanel ID="panelEmpAddress" runat="server">
                                                <ContentTemplate>
                                                    <div class="row">


                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Country</label>
                                                            <asp:DropDownList ID="ddlEmpCountry" runat="server" CssClass="form-control select2" Width="100%" OnSelectedIndexChanged="ddlEmpCountry_SelectedIndexChanged" AutoPostBack="true">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="South Africa" Value="ZAF"></asp:ListItem>
                                                                <asp:ListItem Text="Namibia" Value="NAM"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <div class="invalid-feedback">
                                                                Please select a country
                                                            </div>
                                                        </div>

                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Region</label>
                                                            <asp:DropDownList ID="ddlEmpRegion" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlEmpRegion_SelectedIndexChanged" Width="100%" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Please select a region
                                                        </div>

                                                        <div class="form-group col-sm-4 col-md-4 col-12">
                                                            <label>Area</label>
                                                            <asp:DropDownList ID="ddlEmpArea" runat="server" CssClass="form-control select2" Width="100%">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Please select a city
                                                        </div>


                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>


                                            <div class="form-group">
                                                <asp:Label ID="lblError4" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnBackToScreen3" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen3_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen4" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen4_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnSubmit" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen2_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </asp:View>

                                <!-- Screen 5 - Secondary Education Information  -->
                                <asp:View ID="viewSecondaryEducationDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>5. Secondary Education Details</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- NSC Year, Matric Certificate, School -->
                                            <div class="row">
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">School</label>
                                                    <input id="txtSchoolName" runat="server" type="text" class="form-control" name="empCompName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the school name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label>End Year</label>
                                                    <asp:DropDownList ID="ddlSchoolEndYear" runat="server" CssClass="form-control select2" Width="100%" OnSelectedIndexChanged="ddlEmpCountry_SelectedIndexChanged" AutoPostBack="true">
                                                        <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select a year
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-5 col-12">
                                                    <label for="email">NSC Certificate</label>
                                                    <asp:FileUpload ID="upNSCCert" runat="server" type="file" class="form-control" />
                                                    <div class="invalid-feedback">
                                                        Please upload the national senior certificate
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Subjects and Marks -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Subject</label>
                                                    <input id="txtSubjectName" runat="server" type="text" class="form-control" name="relationship" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the subject name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label>Mark</label>
                                                    <input id="txtMark" runat="server" type="text" class="form-control" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the mark
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label></label>
                                                    <asp:Button ID="btnAddSubject" CssClass="btn btn-primary btn-lg btn-block" Text="Add Subject" runat="server" OnClick="btnAddSubject_Click" TabIndex="1"></asp:Button>
                                                </div>
                                            </div>

                                            <!-- Gridview, list of subjects -->
                                            <div class="row">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="gvSubjects" runat="server"
                                                        CssClass="table table-striped"
                                                        AlternatingRowStyle-CssClass="bottomBorder"
                                                        RowStyle-CssClass="bottomBorder"
                                                        EmptyDataText="No Subjects Available."
                                                        Width="100%"
                                                        AutoGenerateColumns="false"
                                                        Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                                                        OnPageIndexChanging="gvSubjects_PageIndexChanging"
                                                        OnRowCommand="gvSubjects_RowCommand"
                                                        OnRowDataBound="gvSubjects_RowDataBound"
                                                        AlternatingRowStyle-BorderWidth="0px"
                                                        align-content="center" PageSize="10">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:Button CommandName="Remove" runat="server" Text="Remove" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                                            <asp:BoundField DataField="Mark" HeaderText="Mark" />
                                                        </Columns>
                                                        <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="lblError5" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnBackToScreen4" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen4_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen5" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen5_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnToScreen6" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen5_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                <!-- Screen 6 - Tertiary Education Information  -->
                                <asp:View ID="viewTertiaryEducationDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>6. Tertiary Education Details</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- Institution, Year and Certificates-->
                                            <div class="row">
                                                <div class="form-group col-md-4 col-12">
                                                    <label for="email">Institution</label>
                                                    <input id="txtInstitutionName" runat="server" type="text" class="form-control" name="empCompName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the institution name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-2 col-12">
                                                    <label>End Year</label>
                                                    <asp:DropDownList ID="ddlInstitutionEndYear" runat="server" CssClass="form-control select2" Width="100%">
                                                        <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select a year
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label for="email">Supporting Document</label>
                                                    <asp:FileUpload ID="upInstitutionCertificate" runat="server" type="file" class="form-control" />
                                                    <div class="invalid-feedback">
                                                        Please upload the supporting document
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label></label>
                                                    <asp:Button ID="btnAddQualification" CssClass="btn btn-primary btn-lg btn-block" Text="Add Qualification" runat="server" OnClick="btnAddQualification_Click" TabIndex="1"></asp:Button>
                                                </div>
                                            </div>
                                                                                       
                                            <!-- Gridview, list of subjects -->
                                            <div class="row">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="gvQualifications" runat="server"
                                                        CssClass="table table-striped"
                                                        AlternatingRowStyle-CssClass="bottomBorder"
                                                        RowStyle-CssClass="bottomBorder"
                                                        EmptyDataText="No Qualifications Available."
                                                        Width="100%"
                                                        AutoGenerateColumns="false"
                                                        Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                                                        OnPageIndexChanging="gvQualifications_PageIndexChanging"
                                                        OnRowCommand="gvQualifications_RowCommand"
                                                        OnRowDataBound="gvQualifications_RowDataBound"
                                                        AlternatingRowStyle-BorderWidth="0px"
                                                        align-content="center" PageSize="10">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:Button CommandName="Remove" runat="server" Text="Remove" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Institution" HeaderText="Institution" />
                                                            <asp:BoundField DataField="EndDate" HeaderText="End Date" />
                                                            <asp:BoundField DataField="Certificate" HeaderText="Supporting Document" />
                                                        </Columns>
                                                        <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="Button2" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen4_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen6" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen5_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="Button4" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen5_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                <!-- Screen 7 - Work Experience Details -->
                                <asp:View ID="viewWorkExperienceDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>7. Work Experience Details</h4>
                                        </div>
                                        <div class="card-body">
                                            <asp:UpdatePanel ID="panelCriminalConviction" runat="server">
                                                <ContentTemplate>
                                                    <!--Employment Dismissal -->
                                                    <div class="row">
                                                        <div class="form-group col-md-4 col-12">
                                                            <label for="email">Have you ever been dismissed from employment?</label>

                                                            <asp:DropDownList ID="ddlEmploymentDismissal" runat="server" CssClass="form-control select2" Width="100%" OnSelectedIndexChanged="ddlEmploymentDismissal_SelectedIndexChanged" AutoPostBack="true">
                                                                <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <div class="invalid-feedback">
                                                                Please select yes or no
                                                            </div>
                                                        </div>
                                                        <div class="form-group col-md-8 col-12">
                                                            <label>Reason for Dismissal</label>
                                                            <input id="txtDismissalReason" runat="server" type="text" class="form-control" name="empCompName" tabindex="1" required>
                                                            <div class="invalid-feedback">
                                                                Please fill in the reason for dismissal
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!--Criminal Conviction-->
                                                    <div class="row">
                                                        <div class="form-group col-md-4 col-12">
                                                            <label for="email">Have you ever been convicted for a crime?</label>

                                                            <asp:DropDownList ID="ddlCriminalConviction" runat="server" CssClass="form-control select2" Width="100%" OnSelectedIndexChanged="ddlCriminalConviction_SelectedIndexChanged" AutoPostBack="true">
                                                                <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <div class="invalid-feedback">
                                                                Please select yes or no
                                                            </div>
                                                        </div>
                                                        <div class="form-group col-md-8 col-12">
                                                            <label>Reason for Criminal Conviction</label>
                                                            <input id="txtCriminalConviction" runat="server" type="text" class="form-control" name="empCompName" tabindex="1" required>
                                                            <div class="invalid-feedback">
                                                                Please fill in the reason for criminal conviction
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                            <!-- Company Name, Start Date and End Date -->
                                            <div class="row">
                                                <div class="form-group col-md-5 col-12">
                                                    <label for="email">Institution Name</label>
                                                    <input id="txtCompanyName" runat="server" type="text" class="form-control" name="relationship" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the company name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-2 col-12">
                                                    <label>Start Date</label>
                                                    <input id="txtWorkStartDate" runat="server" type="text" class="form-control datepicker" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the start date
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-2 col-12">
                                                    <label>End Date</label>
                                                    <input id="txtWorkEndDate" runat="server" type="text" class="form-control datepicker" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the end date
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label></label>
                                                    <asp:Button ID="btnAddWorkExperience" CssClass="btn btn-primary btn-lg btn-block" Text="Add Work Experience" runat="server" OnClick="btnAddWorkExperience_Click" TabIndex="1"></asp:Button>
                                                </div>
                                            </div>

                                            <!-- Gridview, list of subjects -->
                                            <div class="row">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="gvWorkExperience" runat="server"
                                                        CssClass="table table-striped"
                                                        AlternatingRowStyle-CssClass="bottomBorder"
                                                        RowStyle-CssClass="bottomBorder"
                                                        EmptyDataText="No Work Experience Available."
                                                        Width="100%"
                                                        AutoGenerateColumns="false"
                                                        Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                                                        OnPageIndexChanging="gvWorkExperience_PageIndexChanging"
                                                        OnRowCommand="gvWorkExperience_RowCommand"
                                                        OnRowDataBound="gvWorkExperience_RowDataBound"
                                                        AlternatingRowStyle-BorderWidth="0px"
                                                        align-content="center" PageSize="10">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:Button CommandName="Remove" runat="server" Text="Remove" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Institution" HeaderText="Institution" />
                                                            <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
                                                            <asp:BoundField DataField="EndDate" HeaderText="End Date" />
                                                        </Columns>
                                                        <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="lblError7" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnBackToScreen6" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen6_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen7" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen7_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnToScreen8" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen8_Click" tabindex="4" visible="false">Update</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>

                                 <!-- Screen 8 - Computer Literacy Information  -->
                                <asp:View ID="viewComputerLiteracyDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>8. Computer Literacy Details</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- Institution, Year and Certificates-->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Skill Name</label>
                                                    <input id="txtCompSkillName" runat="server" type="text" class="form-control" name="empCompName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the skill name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label>Skill Rating</label>
                                                    <asp:DropDownList ID="ddlSkillRating" runat="server" CssClass="form-control select2" Width="100%">
                                                        <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="Good" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="Fair" Value="2"></asp:ListItem>
                                                        <asp:ListItem Text="Poor" Value="3"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select a rating
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group col-md-3 col-12">
                                                    <label></label>
                                                    <asp:Button ID="btnAddSkill" CssClass="btn btn-primary btn-lg btn-block" Text="Add Skill" runat="server" OnClick="btnAddSkill_Click" TabIndex="1"></asp:Button>
                                                </div>
                                            </div>
                                                                                       
                                            <!-- Gridview, list of subjects -->
                                            <div class="row">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="gvSkills" runat="server"
                                                        CssClass="table table-striped"
                                                        AlternatingRowStyle-CssClass="bottomBorder"
                                                        RowStyle-CssClass="bottomBorder"
                                                        EmptyDataText="No Skills Available."
                                                        Width="100%"
                                                        AutoGenerateColumns="false"
                                                        Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                                                        OnPageIndexChanging="gvSkills_PageIndexChanging"
                                                        OnRowCommand="gvSkills_RowCommand"
                                                        OnRowDataBound="gvSkills_RowDataBound"
                                                        AlternatingRowStyle-BorderWidth="0px"
                                                        align-content="center" PageSize="10">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:Button CommandName="Remove" runat="server" Text="Remove" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Skill" HeaderText="Skill" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" />
                                                        </Columns>
                                                        <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="LblError8" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnToScreen7" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen7_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen8" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen8_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="btnToScreen9" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen9_Click" tabindex="4" visible="false">Next</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:View>


                                 <!-- Screen 9 - Language Proficiency Information  -->
                                <asp:View ID="viewLanguageProficiencyDetails" runat="server">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>9. Language Proficiency Details</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- Language and Rating -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Language</label>
                                                    <input id="txtLanguage" runat="server" type="text" class="form-control" name="empCompName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the language name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-3 col-12">
                                                    <label>Rating</label>
                                                    <asp:DropDownList ID="ddlLanguageRating" runat="server" CssClass="form-control select2" Width="100%">
                                                        <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="Good" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="Fair" Value="2"></asp:ListItem>
                                                        <asp:ListItem Text="Poor" Value="3"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <div class="invalid-feedback">
                                                        Please select a rating
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group col-md-3 col-12">
                                                    <label></label>
                                                    <asp:Button ID="btnAddLanguage" CssClass="btn btn-primary btn-lg btn-block" Text="Add Language" runat="server" OnClick="btnAddLanguage_Click" TabIndex="1"></asp:Button>
                                                </div>
                                            </div>
                                                                                       
                                            <!-- Gridview, list of subjects -->
                                            <div class="row">
                                                <div class="table-responsive">
                                                    <asp:GridView ID="gvLanguages" runat="server"
                                                        CssClass="table table-striped"
                                                        AlternatingRowStyle-CssClass="bottomBorder"
                                                        RowStyle-CssClass="bottomBorder"
                                                        EmptyDataText="No Languages Available."
                                                        Width="100%"
                                                        AutoGenerateColumns="false"
                                                        Style="text-align: center; word-wrap: break-word; table-layout: fixed;" AllowPaging="true"
                                                        OnPageIndexChanging="gvLanguages_PageIndexChanging"
                                                        OnRowCommand="gvLanguages_RowCommand"
                                                        OnRowDataBound="gvLanguages_RowDataBound"
                                                        AlternatingRowStyle-BorderWidth="0px"
                                                        align-content="center" PageSize="10">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:Button CommandName="Remove" runat="server" Text="Remove" CssClass="btn btn-warning btn-block valid" UseSubmitBehavior="false" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Language" HeaderText="Language" />
                                                            <asp:BoundField DataField="Rating" HeaderText="Rating" />
                                                        </Columns>
                                                        <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="lblError9" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnBackToscreen8" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen8_Click" tabindex="4">Previous</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnSubmitScreen9" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnSubmitScreen9_Click" TabIndex="4"></asp:Button>
                                                    <button type="button" id="Button7" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen9_Click" tabindex="4" visible="false">Next</button>
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
