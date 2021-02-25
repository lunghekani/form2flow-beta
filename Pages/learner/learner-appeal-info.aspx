<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-appeal-info.aspx.vb" Inherits="LearnerManagementSystem.learner_appeal_info" %>

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

                                    <!-- course + assessor -->
                                    <div class="row">
                                        <div class="form-group col-md-4 col-12">
                                            <label for="learnerName">Course</label>
                                            <input id="txtCourse" runat="server" type="text" class="form-control" name="course" disabled>
                                        </div>
                                        <div class="form-group col-md-4 col-12">
                                            <label>Assessor</label>
                                            <input id="txtAssessor" runat="server" type="text" class="form-control" name="assessor" disabled>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-4 col-12">
                                            <label for="learnerName">Category</label>
                                            <input id="txtCategory" runat="server" type="text" class="form-control" name="category" disabled>
                                        </div>
                                    </div>

                                    <!-- appeal stage + status -->
                                    <div class="row">
                                        <div class="form-group col-md-3 col-12">
                                            <label for="learnerName">Appeal Stage</label>
                                            <input id="txtStage" runat="server" type="text" class="form-control" name="appealStage" disabled>
                                        </div>
                                        <div class="form-group col-md-3 col-12">
                                            <label>Appeal Status</label>
                                            <input id="txtStatus" runat="server" type="text" class="form-control" name="appealStatus" disabled>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-5 col-12">
                                            <label for="learnerName">Supporting Documents</label>
                                            <input id="txtSupportingDoc" runat="server" type="text" class="form-control" placeholder="No Document Attached" name="appealStatus" disabled>
                                        </div>
                                        <div class="col-sm-1 col-md-1 col-1">
                                            <label style="color: white;">Category</label>
                                            <button runat="server" type="button" class="btn btn-icon btn-primary" onserverclick="DownloadDoc_ServerClick"><i class="fas fa-download"></i></button>
                                            <div class="invalid-feedback">
                                                Please select document category
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Learner Appeal Description and Assessor Appeal Description -->                                    
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>Learner Appeal Description</label>
                                            <textarea id="txtLearnerAppealDescr" runat="server"
                                                class="form-control" placeholder="Short description up to 500 characters" maxlength="500" disabled></textarea>
                                            <div class="invalid-feedback">
                                                Short description up to 500 characters
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>Assessor Appeal Description</label>
                                            <textarea id="txtAssessorAppealDescr" runat="server"
                                                class="form-control" placeholder="Short description up to 500 characters" maxlength="500" disabled></textarea>
                                            <div class="invalid-feedback">
                                                Short description up to 500 characters
                                            </div>
                                        </div>
                                    </div>

                                    <!-- steps taken -->
                                    <!-- Description -->
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>Steps Taken by Assessor</label>
                                            <textarea id="txtStepsTakenAssessor" runat="server"
                                                class="form-control" placeholder="Short description up to 500 characters" maxlength="500" disabled></textarea>
                                            <div class="invalid-feedback">
                                                Short description up to 500 characters
                                            </div>
                                        </div>
                                    </div>

                                   <div class="row">
                                        <div class="form-group col-12">
                                            <label>Steps Taken by Management</label>
                                            <textarea id="txtStepsTakenManagement" runat="server"
                                                class="form-control" placeholder="Short description up to 500 characters" maxlength="500" disabled></textarea>
                                            <div class="invalid-feedback">
                                                Short description up to 500 characters
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>Steps Taken by Executives</label>
                                            <textarea id="txtStepsTakenExecutive" runat="server"
                                                class="form-control" placeholder="Short description up to 500 characters" maxlength="500" disabled></textarea>
                                            <div class="invalid-feedback">
                                                Short description up to 500 characters
                                            </div>
                                        </div>
                                    </div>

                                    <!--return button-->
                                    <%--<div class="footer">
                                        <div class="row">
                                            <div class="col justify-content-aroundW" align="right">
                                                <div class="form-group col-sm-3 col-md-3 col-lg-3">
                                                    <asp:Button ID="BtnReturn" CssClass="btn btn-primary btn-lg btn-block" Text="Return" runat="server" OnClick="BtnReturn_Click"></asp:Button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>

</asp:Content>
