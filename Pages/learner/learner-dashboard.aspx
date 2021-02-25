<%@ Page Title="Learner - Dashboard" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-dashboard.aspx.vb" Inherits="Form2Flow.learner_dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <section class="section">
                     <!-- Row 1 -->
                    <div class="row ">
                        <!-- Courses-->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="../learner/learner-course-list.aspx">Courses</a></h3>
                                                    <%--<h2 class="mb-3 font-16">28</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="../learner/learner-course-list.aspx">View Courses</a></p>
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
                        <!-- Progress-->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="../learner/learner-progress-info.aspx">Progress</a></h3>
                                                    <%--<h2 class="mb-3 font-18">1,287</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="../learner/learner-progress-info.aspx">View Progress</a></p>
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
                        <!-- Calendar -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="../learner/learner-calendar-info.aspx">Calendar</a></h3>
                                                    <%--<h2 class="mb-3 font-18">128</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="../learner/learner-calendar-info.aspx">View Calendar</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-calendar" style="color: #DDDDDD;"></i>
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
                        <!-- Discussions -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="../learner/learner-discussion-list.aspx">Discussions</a></h3>
                                                    <%--<h2 class="mb-3 font-18">$48,697</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="../learner/learner-discussion-list.aspx">View Discussions</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-comment" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Appeals -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="../learner/learner-appeal-list.aspx">Appeals</a></h3>
                                                    <%--<h2 class="mb-3 font-18">$48,697</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="../learner/learner-appeal-add.aspx">Submit Appeal</a></p>
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
                        <!-- Settings -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="#">Settings</a></h3>
                                                    <%--<h2 class="mb-3 font-18">$48,697</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="#">My Settings</a></p>

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
