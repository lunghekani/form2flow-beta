<%@ Page Title="Admin - Appeal Information" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-appeal-info.aspx.vb" Inherits="Form2Flow.admin_appeal_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form runat="server" class="needs-validation" novalidate="">
        <div class="main-content">
            <section class="section">
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="login-brand">
                                Appeal Information
                            </div>

                                <!-- appeal info  -->
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>Appeal Information </h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- learner name + ID -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="learnerName">Learner Name</label>
                                                    <input id="txtName" runat="server" type="text" class="form-control" name="userName" disabled>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label>Learner ID</label>
                                                    <input id="txtID" runat="server" type="text" class="form-control" name="userID" disabled>
                                                </div>
                                            </div>

                                            <!-- course + Module -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="learnerName">Course</label>
                                                    <input id="txtCourse" runat="server" type="text" class="form-control" name="course" disabled>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label>Module</label>
                                                    <input id="txtModule" runat="server" type="text" class="form-control" name="module" disabled>
                                                </div>
                                            </div>
                                            <!-- assessor + category -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="learnerName">Assessor</label>
                                                    <input id="txtAssessorName" runat="server" type="text" class="form-control" name="assessor" disabled>
                                                </div>    
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="learnerName">Category</label>
                                                    <input id="txtCategory" runat="server" type="text" class="form-control" name="category" disabled>
                                                </div> 
                                            </div>

                                            <!-- appeal stage + status -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="learnerName">Appeal Stage</label>
                                                    <input id="txtAppealStage" runat="server" type="text" class="form-control" name="appealStage" disabled>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label>Appeal Status</label>
                                                    <input id="txtAppealStatus" runat="server" type="text" class="form-control" name="appealStatus" disabled>
                                                </div>
                                            </div>

                                             <!-- learner + assessor appeal description -->
                                            <div class="row">
                                                <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                                    <label for="learnerName">Learner Appeal Description</label>
                                                    <input id="txtLearnerAppealDescr" runat="server" type="text" class="form-control" name="learnerAppealDescr" disabled>
                                                </div>
                                                <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                                    <label for="learnerName">Assessor Appeal Description</label>
                                                    <input id="txtAssessorAppealDescr" runat="server" type="text" class="form-control" name="assessorAppealDescr" disabled>
                                                </div>
                                            </div>
 
                                            <!-- steps taken -->
                                            <div class="row">
                                                <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                                    <label for="learnerName">Steps Taken By Assessor</label>
                                                    <input id="txtStepsTakenAssessor" runat="server" type="text" class="form-control" name="stepsTakenAssessor" disabled>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                                    <label for="learnerName">Steps Taken By Management</label>
                                                    <input id="txtStepsTakenManagement" runat="server" type="text" class="form-control" name="stepsTakenManagement" disabled>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                                    <label for="learnerName">Steps Taken By Executives</label>
                                                    <input id="stepsTakenExecutive" runat="server" type="text" class="form-control" name="stepsTakenEecutive" disabled>
                                                </div>
                                            </div>

                                            <!--return button-->
                                            <div class="footer">
                                             <div class="row">
                                                 <div class="col justify-content-aroundW" align="right">
                                                     <div class="form-group col-sm-3 col-md-3 col-lg-3">
                                                        <asp:Button ID="BtnBack" CssClass="btn btn-primary btn-lg btn-block" Text="Back" runat="server" OnClick="BtnBack_Click"></asp:Button>  
                                                     </div>
                                                 </div>                                           
                                             </div>
                                            </div>
                                        </div> 
                                    </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</asp:Content>
