<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/main.Master" CodeBehind="main-company-add.aspx.vb" Inherits="Form2Flow.main_company_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
            <form runat="server" class="needs-validation" novalidate="">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <section class="section">
                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="login-brand">
                                    Company Registrations
                                </div>
                                <%-- MULTIVIEW LINK BUTTONS --%>
                                <div class="row nav nav-pills" align="center" id="dvNavPills" runat="server">

                                    <div class="col-md-3" style="padding: 5px;">
                                        <button type="button" id="btnGoToAddressDetails" runat="server" class="btn btn-primary btn-block cancel" style="width: 90%;" onserverclick="btnBackToScreen1_Click" tabindex="4">1. Address Details</button>
                                        <%--<asp:Button ID="" runat="server" Text="1. Account Details" Width="90%" CssClass="btn btn-primary btn-block" OnClick="btnBackToScreen1_Click" />--%>
                                    </div>

                                    <div class="col-md-3" style="padding: 5px;">
                                        <button type="button" id="btnGoToContactDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen2_Click" tabindex="4">2. Contact Details</button>
                                   <%--<asp:Button ID="" runat="server" Text="2. Job Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen2_Click" />--%>
                                    </div>
                                    <div class="col-md-3" style="padding: 5px;">
                                        <button type="button" id="btnGoToCompDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen3_Click" tabindex="4">3. Company Details</button>
                                        <%--<asp:Button ID="" runat="server" Text="3. Communication Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen3_Click" />--%>
                                    </div>
                                    <div class="col-md-3" style="padding: 5px;">
                                        <button type="button" id="btnGoToCompContDetails" runat="server" class="btn btn-link btn-block cancel" style="width: 90%;" onserverclick="btnToScreen4_Click" tabindex="4">4. Company Details Cont.</button>
                                        <%--<asp:Button runat="server" Text="4. Permission Details" Width="90%" CssClass="btn btn-secondary btn-block" OnClick="btnToScreen4_Click" />--%>
                                    </div>

                                </div>
                                <br />
                                <asp:MultiView ID="mvRegisterCompany" runat="server">

                                    <!-- Screeen 1 - Company Name and Address details -->
                                    <asp:View ID="viewAddressDetails" runat="server">
                                        <div class="card card-primary">
                                            <div class="card-header">
                                                <h4>1. Company Name and Address Details</h4>
                                            </div>
                                            <div class="card-body">

                                                <!-- Company Name, Reg Num, VAT Num and GPS -->
                                                <div class="row">
                                                    <div class="form-group col-md-4 col-12">
                                                        <label for="email">Company Name</label>
                                                        <input id="txtCompName" runat="server" type="text" class="form-control" name="companyName" tabindex="1" maxlength="50" required autofocus>
                                                        <div class="invalid-feedback">
                                                            Please fill in your company name
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-4 col-12">
                                                        <label for="number">Company Reg No.</label>
                                                        <input id="txtCompRegNum" runat="server" type="text" class="form-control" name="companyRegNum" tabindex="1" maxlength="20" required autofocus>
                                                        <div class="invalid-feedback">
                                                            Please fill in your company registration number
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-4 col-12">
                                                        <label for="phone">VAT Reg No.</label>
                                                        <input id="txtCompVATNum" runat="server" type="text" class="form-control" name="vatNum" tabindex="1" maxlength="20" required>
                                                        <div class="invalid-feedback">
                                                            Please fill in your company VAT registration number
                                                        </div>
                                                    </div>

                                                </div>

                                                <!-- Address -->
                                                <div class="row">
                                                    <div class="form-group col-6">
                                                        <label for="address">Address</label>
                                                        <input id="txtAddress" runat="server" type="text" class="form-control" name="address" tabindex="1" maxlength="255" required>
                                                        <div class="invalid-feedback">
                                                            Please fill in your address
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-sm-4 col-md-5 col-10">
                                                        <label>GPS Co-ordinates</label>
                                                        <input id="txtGPS" runat="server" type="text" class="form-control" name="gps" tabindex="1" required>
                                                        <div class="invalid-feedback">
                                                            Please fill in your GPS Co-ordinates
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-1 col-md-1 col-1">
                                                        <label style="color: white;">Category</label>
                                                        <button type="button" class="btn btn-icon btn-primary" id="getGPS" onclick="getLocation()"><i class="fas fa-map-marker-alt"></i></button>
                                                        <div class="invalid-feedback">
                                                            Please select document type
                                                        </div>
                                                    </div>
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
                                                    <asp:Label ID="lblError1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-3 offset-md-6 col-6">
                                                        <button type="button" id="btnCancel" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnCancel_ServerClick" tabindex="4">Cancel</button>
                                                    </div>
                                                    <div class="form-group col-md-3 col-6">
                                                        <asp:Button ID="btnSubmitScreen1" CssClass="btn btn-primary btn-lg btn-block" Text="Next" runat="server" OnClick="btnSubmitScreen1_Click" TabIndex="4"></asp:Button>
                                                        <button type="button" id="btnToScreen2" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen2_Click" tabindex="4" visible="false">Next</button>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                    </asp:View>

                                    <!-- Screen 2 - Company Contact details -->
                                    <asp:View ID="viewContactDetails" runat="server">
                                        <div class="card card-primary">
                                            <div class="card-header">
                                                <h4>2. Company Contact Details</h4>
                                            </div>
                                            <div class="card-body">
                                                <!-- Phone Details -->
                                                <div class="row">
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="phone">Phone</label>
                                                        <input id="txtTel" runat="server" type="text" class="form-control" name="phone(landline)" tabindex="1" maxlength="15" required autofocus>
                                                        <div class="invalid-feedback">
                                                            Please fill in your company phone number
                                                        </div>
                                                    </div>
                                                    <%-- <div class="form-group col-md-4 col-12">
                                                    <label for="phone">Phone (Mobile)</label>
                                                    <input id="txtCell" runat="server" type="text" class="form-control" name="phone(mobile)" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in your company mobile number
                                                    </div>
                                                </div>--%>
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="phone">Fax</label>
                                                        <input id="txtFax" runat="server" type="text" class="form-control" name="phone(fax)" maxlength="15" tabindex="1">
                                                        <div class="invalid-feedback">
                                                            Please fill in your company fax number
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Email and Website -->
                                                <div class="row">
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="email">E-Mail</label>
                                                        <input id="txtEmail" runat="server" type="text" class="form-control" name="email" tabindex="1" maxlength="60" required>
                                                        <div class="invalid-feedback">
                                                            Please fill in your company e-mail
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="website">Website URL</label>
                                                        <input id="txtWebsite" runat="server" type="text" class="form-control" name="website" maxlength="100" tabindex="1">
                                                        <div class="invalid-feedback">
                                                            Please fill in your company website URL
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Virtual Reality Upload -->
                                                <div class="row">
                                                    <div class="form-group col-md-12 col-12">
                                                        <label for="email">Company Tour</label>
                                                        <asp:FileUpload ID="upCompanyTour" runat="server" type="file" class="form-control" AllowMultiple="true" required="" />
                                                        <div class="invalid-feedback">
                                                            Please upload your company tour documents
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="lblError2" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-3 offset-md-6 col-6">
                                                        <button type="button" id="btnBackToScreen1" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnBackToScreen1_Click" tabindex="4">Previous</button>
                                                    </div>
                                                    <div class="form-group col-md-3 col-6">
                                                        <asp:Button ID="btnSubmitScreen2" CssClass="btn btn-primary btn-lg btn-block" Text="Next" runat="server" OnClick="btnSubmitScreen2_Click" TabIndex="4"></asp:Button>
                                                        <button type="button" id="btnToScreen3" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnToScreen3_Click" tabindex="4" visible="false">Next</button>
                                                        
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </asp:View>

                                    <!-- Screeen 3 - Other Company details -->
                                    <asp:View ID="viewOtherDetails" runat="server">
                                        <div class="card card-primary">
                                            <div class="card-header">
                                                <h4>3. Other Company Details</h4>
                                            </div>
                                            <div class="card-body">

                                                <!-- Certificates / Reports -->
                                                <!-- Tax Clearance Cert. -->
                                                <div class="row">
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="email">Tax Clearance Cert.</label>
                                                        <asp:FileUpload ID="upTaxClearCert" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                        <div class="invalid-feedback">
                                                            Please upload your company tax clearance certificate
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="date">Expiry Date</label>
                                                        <input id="txtTaxCertExpiryDate" runat="server" type="text" class="form-control datepicker" name="expirydate" tabindex="1" required>
                                                        <div class="invalid-feedback">
                                                            Please fill in the expiry date for tax clearance certificate
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- BEE Cert. and Health and Safety Cert. -->
                                                <div class="row">
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="email">BEE Cert.</label>
                                                        <asp:FileUpload ID="upBEECert" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                        <div class="invalid-feedback">
                                                            Please upload your company Black Economic Empowerment (BEE) certificate
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="date">Health and Safety Cert.</label>
                                                        <asp:FileUpload ID="upHealthCert" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                        <div class="invalid-feedback">
                                                            Please upload your company health and safety certificate
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Audited Financials and CSD Report. -->
                                                <div class="row">
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="email">Audited Financials</label>
                                                        <asp:FileUpload ID="upAuditedFinancials" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                        <div class="invalid-feedback">
                                                            Please upload your company's audited financials
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6 col-12">
                                                        <label for="date">CSD Report</label>
                                                        <asp:FileUpload ID="upCSDReport" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                        <div class="invalid-feedback">
                                                            Please upload your company's CSD report
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

                                    <!-- Screen 4 - Other Company details Continued -->
                                    <asp:View ID="viewOtherDetailsCont" runat="server">
                                        <div class="card card-primary">
                                            <div class="card-header">
                                                <h4>4. Other Company Details Continued</h4>
                                            </div>
                                            <div class="card-body">
                                                <!-- Regional Office Description -->
                                                <div class="row">
                                                    <div class="form-group col-12">
                                                        <label>Office Description</label>
                                                        <textarea id="txtRegionalOfficeDescription" runat="server"
                                                            class="form-control" placeholder="Short description up to 500 characters" maxlength="500" required></textarea>
                                                        <div class="invalid-feedback">
                                                            Please describe your office
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Departments -->
                                                <asp:UpdatePanel ID="panelDepartment" runat="server">
                                                    <ContentTemplate>
                                                        <div class="row">
                                                            <div class="form-group col-sm-4 col-md-11 col-10">
                                                                <label>Departments</label>
                                                                <asp:ListBox ID="ddlDepartments" runat="server" CssClass="form-control select2" SelectionMode="Multiple" Width="95%" AutoPostBack="false" required="">
                                                                    <%--<asp:ListItem>Executive</asp:ListItem>
                                                                <asp:ListItem>Finance</asp:ListItem>
                                                                <asp:ListItem>ICT</asp:ListItem>
                                                                <asp:ListItem>Human Resources</asp:ListItem>
                                                                <asp:ListItem>Marketing and Sales</asp:ListItem>--%>
                                                                </asp:ListBox>
                                                                <div class="invalid-feedback">
                                                                    Please select at least one department
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-1 col-md-1 col-1">
                                                                <label style="color: white;">Category</label>
                                                                <button type="button" class="btn btn-icon btn-primary" data-toggle="modal" data-target="#ModAddDepartment"><i class="fas fa-plus"></i></button>
                                                                <div class="invalid-feedback">
                                                                    Please select document type
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <!-- Company Logo -->
                                                <div class="row">
                                                    <div class="form-group col-md-12 col-12">
                                                        <label for="email">Company Logo</label>
                                                        <asp:FileUpload ID="upCompanyLogo" runat="server" type="file" class="form-control" required="" autofocus="" />
                                                        <div class="invalid-feedback">
                                                            Please upload your company logo
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="lblError4" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-3 offset-md-6 col-6">
                                                        <button type="button" id="btnBackToScreen3" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnToScreen3_Click" tabindex="4">Previous</button>
                                                    </div>
                                                    <div class="form-group col-md-3 col-6">
                                                        <asp:Button ID="btnSubmitScreen4" CssClass="btn btn-primary btn-lg btn-block" Text="Submit" runat="server" OnClick="btnSubmitScreen4_Click" TabIndex="4"></asp:Button>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </asp:View>

                                    <!-- Screen 5 - Does the Head Office have Regional Offices  -->
                                    <asp:View ID="viewAddBranch" runat="server">
                                        <div class="card card-primary">
                                            <div class="card-header">
                                                <h4>Add Branch / Add User</h4>
                                            </div>
                                            <div class="card-body">

                                                <!-- Regional Office -->
                                                <div class="row" align="center">
                                                    <div class="form-group col-md-12 col-12">
                                                        <h5>Institution added successfully.</h5>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="lblError5" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-3 offset-md-6 col-6">
                                                        <button type="button" id="btnAddUser" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnAddUser_ServerClick" tabindex="4">Add User</button>
                                                    </div>
                                                    <div class="form-group col-md-3 col-6">
                                                        <button type="button" id="btnAddBranch" runat="server" class="btn btn-primary cancel btn-lg btn-block" onserverclick="btnAddBranch_ServerClick" tabindex="4">Add Branch</button>
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
                                <button type="button" id="btnAddDepartment" runat="server" class="btn btn-primary" onserverclick="btnAddDepartment_ServerClick">Add</button>
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
        
        <script> 
        ///<summary>
        ///  This will fire on initial page load, 
        ///  and all subsequent partial page updates made 
        ///  by any update panel on the page
        ///</summary>
        function pageLoad() { // Initialize select2
            $("#ddlCountry").select2();
            $("#ddlRegion").select2();
            $("#ddlArea").select2();
            $("#ddlDepartments").select2();
        }  
    </script>
    <!-- Page Specific JS File -->
    <script src="../assets/js/page/posts.js"></script>
    <script src="../assets/js/page/sweetalert.js"></script>
    <!-- Template JS File -->
    <script src="../assets/js/scripts.js"></script>

</asp:Content>
