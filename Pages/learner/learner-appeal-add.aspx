<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-appeal-add.aspx.vb" Inherits="LearnerManagementSystem.learner_appeal_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- main-->
    <form runat="server" class="needs-validation" novalidate="">
        <div class="main-content">
            <section class="section">
                <div class="container mt-5">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h4>Log Appeal</h4>
                        </div>
                        <div class="card-body">
                            <!-- category + course -->
                            <div class="row">
                                <div class="form-group col-md-3 col-12">
                                    <label for="email">Category</label>
                                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control select2" Width="100%">
                                        <asp:ListItem>Assignment results</asp:ListItem>
                                        <asp:ListItem>Exam results</asp:ListItem>
                                        <asp:ListItem>Dispute with module or assessor</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="invalid-feedback">
                                        Please select the category of appeal
                                    </div>
                                </div>
                                <div class="form-group col-md-3 col-12">
                                    <label for="email">Course</label>
                                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control select2" Width="100%" OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem>Fitter and Trainer</asp:ListItem>
                                        <asp:ListItem>Home Affairs</asp:ListItem>
                                        <asp:ListItem>Simulator Training</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="invalid-feedback">
                                        Please select the course related to your appeal
                                    </div>
                                </div>
                                <div class="form-group col-md-3 col-12">
                                    <label for="email">Module</label>
                                    <asp:DropDownList ID="ddlModule" runat="server" CssClass="form-control select2" Width="100%">
                                        <asp:ListItem>Markets</asp:ListItem>
                                        <asp:ListItem>Statistics</asp:ListItem>
                                        <asp:ListItem>Welding</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="invalid-feedback">
                                        Please select the module related to your appeal
                                    </div>
                                </div>
                                <div class="form-group col-md-3 col-12">
                                    <label for="email">Instructor</label>
                                    <asp:ListBox ID="ddlInstructor" runat="server" CssClass="form-control select2" Width="100%">
                                        <asp:ListItem>James Lee</asp:ListItem>
                                        <asp:ListItem>Benjamin Mashele</asp:ListItem>
                                        <asp:ListItem>Nkosinathi Mahlalela</asp:ListItem>
                                    </asp:ListBox>
                                    <div class="invalid-feedback">
                                        Please select the instructor related to your appeal
                                    </div>
                                </div>
                            </div>


                            <!-- supporting documents -->
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-12 col-12">
                                    <label>Supporting Documents</label>
                                    <asp:FileUpload ID="upSupportingDocument" runat="server" type="file" class="form-control" AllowMultiple="true" required="" />
                                </div>
                            </div>

                            <!-- Description -->
                            <div class="row">
                                <div class="form-group col-12">
                                    <label>Appeal Description</label>
                                    <textarea id="txtDescription" runat="server"
                                        class="form-control" placeholder="Short description up to 500 characters" maxlength="500" required></textarea>
                                    <div class="invalid-feedback">
                                        Short description up to 500 characters
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
                                    <asp:Button ID="btnSubmitAppeal" CssClass="btn btn-primary btn-lg btn-block" Text="Submit" runat="server" OnClick="btnSubmitAppeal_Click" TabIndex="4"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        </div>
    </form>
</asp:Content>
