<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-discussion-info.aspx.vb" Inherits="LearnerManagementSystem.learner_discussion_info" %>

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
                                Discussion Info
                            </div>

                            <!-- disccusion -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h4 id="lblHeader" runat="server">Discussion Title</h4>
                                </div>
                                <div class="card-body">

                                    <!-- discussion title, course, module -->
                                    <div class="row">
                                        <div class="form-group col-md-6 col-12">
                                            <label for="discussionTitle">Discussion Title</label>
                                            <input id="txtTitle" runat="server" type="text" class="form-control" name="discussionTitle" disabled>
                                        </div>
                                        <div class="form-group col-md-6 col-12">
                                            <label>Original Author</label>
                                            <input id="txtAuthor" runat="server" type="text" class="form-control" name="originalAuthor" disabled>
                                        </div>
                                        <div class="form-group col-md-6 col-12">
                                            <label for="learnerName">Course</label>
                                            <input id="txtDiscCourse" runat="server" type="text" class="form-control" name="discussionCourse" disabled>
                                        </div>
                                        <div class="form-group col-md-6 col-12">
                                            <label>Module</label>
                                            <input id="txtDiscModule" runat="server" type="text" class="form-control" name="discussionModule" disabled>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                            <label>Discussion</label>
                                            <input id="txtDiscussion" runat="server" type="text" class="form-control" name="discussionDiscussion" disabled>
                                        </div>
                                    </div>

                                    <div class="card-body">
                                        <div class="row">
                                            <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                                <label></label>
                                                <div class="col-sm-12 col-md-12">
                                                    <textarea class="summernote-simple width-per-100"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-3 offset-md-6 col-6">
                                            <button type="button" id="btnCancel" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnCancel_ServerClick" tabindex="4">Cancel</button>
                                        </div>
                                        <div class="form-group col-md-3 col-6">
                                            <asp:Button ID="btnUpdate" CssClass="btn btn-primary btn-lg btn-block" Text="Update" runat="server" OnClick="btnUpdate_Click" TabIndex="4"></asp:Button>
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
