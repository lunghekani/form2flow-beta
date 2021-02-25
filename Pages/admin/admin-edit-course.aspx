<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-edit-course.aspx.vb" Inherits="LearnerManagementSystem.admin_edit_course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="main-content">
            <section class="section">
                <div class="section-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Add Skills Course</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Course Name</label>
                                        <div class="col-sm-12 col-md-7">
                                            <input id="txtCourseName" runat="server" type="text" class="form-control">
                                        </div>
                                    </div>
                                     <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Category</label>
                                        <div class="col-sm-12 col-md-7">
                                            <asp:DropDownList CssClass="form-control selectric" ID="ddlCategory" runat="server">
                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="South Africa" Value="ZAF"></asp:ListItem>
                                                <asp:ListItem Text="Namibia" Value="NAM"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                        <div class="col-sm-12 col-md-7">
                                            Welcome to RED LMS! Using new software can be more frustrating than starting a show in the middle of the season. Watch this 15-minute video course to get familiar with RED LMS and get the most out of your shiny new account.
                                        </div>
                                    </div>
                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Status</label>
                                        <div class="col-sm-12 col-md-7">
                                            <asp:RadioButton CssClass="custom-control custom-checkbox" ID="rdbStatus" Text=" Hidden" runat="server" />
                                        </div>
                                    </div>

                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Duration (hours)</label>
                                        <div class="col-sm-12 col-md-7">
                                            <input id="txtDuration" runat="server" type="number" class="form-control">
                                            <br />
                                             <asp:CheckBox TextAlign="Right" ID="chkRetainAccess" runat="server" Text="Retain Access For Users Who Have Completed The Course" />
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Description</label>
                                        <div class="col-sm-12 col-md-7">
                                            <input id="txtDescr" runat="server" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Cerification</label>
                                        <div class="col-sm-12 col-md-7">
                                            <asp:DropDownList CssClass="form-control selectric" ID="ddlCertficate" runat="server">
                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="South Africa" Value="ZAF"></asp:ListItem>
                                                <asp:ListItem Text="Namibia" Value="NAM"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                     <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NQF Level</label>
                                        <div class="col-sm-12 col-md-7">
                                            <asp:DropDownList CssClass="form-control selectric" ID="ddlNQFLevel" runat="server">
                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="South Africa" Value="ZAF"></asp:ListItem>
                                                <asp:ListItem Text="Namibia" Value="NAM"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                        <div class="col-sm-12 col-md-7">

                                            <div class="form-group">
                                                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <asp:Button class="btn btn-primary btn-lg" ID="btnUpdateCourse" OnClick="btnUpdateCourse_Click" runat="server" Text="Update Course" />

                                            <button class="btn btn-secondary">Cancel</button>
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
