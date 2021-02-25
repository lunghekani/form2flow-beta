<%@ Page Title="Admin - Dashboard" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-dashboard.aspx.vb" Inherits="LearnerManagementSystem.admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main Content -->
    <!-- Main Content -->
            <div class="main-content">
                <section class="section">
                    <!-- Row 1 -->
                    <div class="row ">
                        <!-- User - Add User -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="../admin/admin-user-list.aspx">Users</a></h3>
                                                    <%--<h2 class="mb-3 font-16">28</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="../admin/admin-user-add.aspx">Add User</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-user-plus" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Courses - Add Course -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="admin-course-list.aspx">Courses</a></h3>
                                                    <%--<h2 class="mb-3 font-18">1,287</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="admin-course-add.aspx">Add Course</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-book" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Category - Add Category -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="admin-category-list.aspx">Categories</a></h3>
                                                    <%--<h2 class="mb-3 font-18">128</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="admin-category-add.aspx">Add Category</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-bars" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Row 2 -->
                    <div class="row">
                        <!-- Branch - Add Branch -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="admin-branch-list.aspx">Branches</a></h3>
                                                    <%--<h2 class="mb-3 font-18">$48,697</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="admin-branch-add.aspx">Add Branch</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-code-branch" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Groups - Add Group -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="admin-group-list.aspx">Groups</a></h3>
                                                    <%--<h2 class="mb-3 font-18">$48,697</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="admin-branch-add.aspx">Add Group</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-user-friends" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Progress-->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="admin-progress-info.aspx">Progress</a></h3>
                                                    <%--<h2 class="mb-3 font-18">1,287</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="admin-progress-info.aspx">View Progress</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-tasks" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>

                    <div class="row">

                        <!-- Appeals -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="admin-appeal-list.aspx">Appeals</a></h3>
                                                    <%--<h2 class="mb-3 font-18">$48,697</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="admin-appeal-list.aspx">Review Appeals</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-frown" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Accounts & Settings -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="../auth/register-user.aspx"> Settings</a></h3>
                                                    <%--<h2 class="mb-3 font-18">$48,697</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="#"> Certifications</a></p>
                                                    <p class="mb-0"><span class="col-green"></span><a href="#"> Gamification</a></p>

                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-cogs" style="color: #DDDDDD;"></i>
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

</asp:Content>
