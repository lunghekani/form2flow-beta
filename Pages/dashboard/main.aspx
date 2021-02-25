<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="main.aspx.vb" Inherits="Form2Flow.main" %>

<!DOCTYPE html>
<html lang="en">


<!-- pricing.html  21 Nov 2019 03:54:41 GMT -->
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Dashboard</title>
    <!-- General CSS Files -->
    <link rel="stylesheet" href="../assets/css/app.min.css">
    <!-- Template CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/components.css">
    <!-- Custom style CSS -->
    <link rel='shortcut icon' type='image/x-icon' href='../assets/img/red.ico' />
</head>

<body>
    <div class="loader"></div>
    <div id="app">
        <div class="main-wrapper main-wrapper-1">
            <div class="navbar-bg"></div>
            <nav class="navbar navbar-expand-lg main-navbar sticky">
                <div class="form-inline mr-auto">
                    <ul class="navbar-nav mr-3">

                        <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg
									collapse-btn"><i data-feather="align-justify"></i></a></li>
                        <li><a href="#" class="nav-link nav-link-lg fullscreen-btn">
                            <i data-feather="maximize"></i>
                        </a></li>
                        <li>
                            <%--<form class="form-inline mr-auto">
                <div class="search-element">
                  <input class="form-control" type="search" placeholder="Search" aria-label="Search" data-width="200">
                  <button class="btn" type="submit">
                    <i class="fas fa-search"></i>
                  </button>
                </div>
              </form>--%>
                        </li>
                    </ul>
                </div>
                <ul class="navbar-nav navbar-right">
                    <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown"
                        class="nav-link nav-link-lg message-toggle"><i data-feather="mail"></i>
                        <span class="badge headerBadge1">6 </span></a>
                        <div class="dropdown-menu dropdown-list dropdown-menu-right pullDown">
                            <div class="dropdown-header">
                                Messages
                <div class="float-right">
                    <a href="#">Mark All As Read</a>
                </div>
                            </div>
                            <div class="dropdown-list-content dropdown-list-message">
                                <a href="#" class="dropdown-item"><span class="dropdown-item-avatar
											text-white">
                                    <img alt="image" src="assets/img/users/user-1.png" class="rounded-circle">
                                </span><span class="dropdown-item-desc"><span class="message-user">John
                      Deo</span>
                                    <span class="time messege-text">Please check your mail !!</span>
                                    <span class="time">2 Min Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-avatar text-white">
                                    <img alt="image" src="assets/img/users/user-2.png" class="rounded-circle">
                                </span><span class="dropdown-item-desc"><span class="message-user">Sarah
                      Smith</span> <span class="time messege-text">Request for leave
                      application</span>
                                    <span class="time">5 Min Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-avatar text-white">
                                    <img alt="image" src="assets/img/users/user-5.png" class="rounded-circle">
                                </span><span class="dropdown-item-desc"><span class="message-user">Jacob
                      Ryan</span> <span class="time messege-text">Your payment invoice is
                      generated.</span> <span class="time">12 Min Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-avatar text-white">
                                    <img alt="image" src="assets/img/users/user-4.png" class="rounded-circle">
                                </span><span class="dropdown-item-desc"><span class="message-user">Lina
                      Smith</span> <span class="time messege-text">hii John, I have upload
                      doc
                      related to task.</span> <span class="time">30
                      Min Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-avatar text-white">
                                    <img alt="image" src="assets/img/users/user-3.png" class="rounded-circle">
                                </span><span class="dropdown-item-desc"><span class="message-user">Jalpa
                      Joshi</span> <span class="time messege-text">Please do as specify.
                      Let me
                      know if you have any query.</span> <span class="time">1
                      Days Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-avatar text-white">
                                    <img alt="image" src="assets/img/users/user-2.png" class="rounded-circle">
                                </span><span class="dropdown-item-desc"><span class="message-user">Sarah
                      Smith</span> <span class="time messege-text">Client Requirements</span>
                                    <span class="time">2 Days Ago</span>
                                </span>
                                </a>
                            </div>
                            <div class="dropdown-footer text-center">
                                <a href="#">View All <i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown"
                        class="nav-link notification-toggle nav-link-lg"><i data-feather="bell" class="bell"></i>
                    </a>
                        <div class="dropdown-menu dropdown-list dropdown-menu-right pullDown">
                            <div class="dropdown-header">
                                Notifications
                <div class="float-right">
                    <a href="#">Mark All As Read</a>
                </div>
                            </div>
                            <div class="dropdown-list-content dropdown-list-icons">
                                <a href="#" class="dropdown-item dropdown-item-unread"><span
                                    class="dropdown-item-icon bg-primary text-white"><i class="fas
												fa-code"></i>
                                </span><span class="dropdown-item-desc">Template update is
                    available now! <span class="time">2 Min
                      Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-icon bg-info text-white"><i class="far
												fa-user"></i>
                                </span><span class="dropdown-item-desc"><b>You</b> and <b>Dedik
                      Sugiharto</b> are now friends <span class="time">10 Hours
                      Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-icon bg-success text-white"><i
                                    class="fas
												fa-check"></i>
                                </span><span class="dropdown-item-desc"><b>Kusnaedi</b> has
                    moved task <b>Fix bug header</b> to <b>Done</b> <span class="time">12
                      Hours
                      Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-icon bg-danger text-white"><i
                                    class="fas fa-exclamation-triangle"></i>
                                </span><span class="dropdown-item-desc">Low disk space. Let's
                    clean it! <span class="time">17 Hours Ago</span>
                                </span>
                                </a><a href="#" class="dropdown-item"><span class="dropdown-item-icon bg-info text-white"><i class="fas
												fa-bell"></i>
                                </span><span class="dropdown-item-desc">Welcome to Otika
                    template! <span class="time">Yesterday</span>
                                </span>
                                </a>
                            </div>
                            <div class="dropdown-footer text-center">
                                <a href="#">View All <i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown"><a href="#" data-toggle="dropdown"
                        class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                        <img alt="image" src="../assets/img/user.png"
                            class="user-img-radious-style">
                        <span class="d-sm-none d-lg-inline-block"></span></a>
                        <div class="dropdown-menu dropdown-menu-right pullDown">
                            <div class="dropdown-title">Hello Sarah Smith</div>
                            <a href="profile.html" class="dropdown-item has-icon"><i class="far
										fa-user"></i>Profile
                            </a><a href="timeline.html" class="dropdown-item has-icon"><i class="fas fa-bolt"></i>
                                Activities
                            </a><a href="#" class="dropdown-item has-icon"><i class="fas fa-cog"></i>
                                Settings
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="auth-login.html" class="dropdown-item has-icon text-danger"><i class="fas fa-sign-out-alt"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="main-sidebar sidebar-style-2">
                <div class="sidebar-brand">
                    <a href="index.html">
                        <img alt="image" src="../assets/img/red_erp.jpg" class="header-logo" />
                        <span
                            class="logo-name"></span>
                    </a>
                </div>
                <ul class="sidebar-menu">
                    <li class="menu-header">Main</li>
                    <li class="dropdown">
                        <a href="#" class="nav-link"><i data-feather="user"></i><span>Profile</span></a>
                    </li>
                    <li class="dropdown">
                        <a href="../admin/admin-dashboard.aspx" class="nav-link"><i data-feather="users"></i><span>LMS</span></a>
                    </li>
                    <li class="dropdown">
                        <a href="http://vxworkflow.co.za/landing/login" class="nav-link"><i data-feather="file-plus"></i><span>Form2Flow</span></a>
                    </li>
                    <li class="dropdown">
                        <a href="http://vxworkflow.co.za/homeaffairs/" class="nav-link"><i data-feather="book-open"></i><span>Content Creator</span></a>
                    </li>
                    <li class="dropdown">
                        <a href="https://dmsv1.azurewebsites.net/pages/login" class="nav-link"><i data-feather="file-text"></i><span>docXview</span></a>
                    </li>
                    <li class="dropdown">
                        <a href="https://my.waveapps.com/login/" class="nav-link"><i data-feather="credit-card"></i><span>Student Finance</span></a>
                    </li>
                    <li class="dropdown active">
                        <a href="#" class="nav-link"><i data-feather="clipboard"></i><span>Reports</span></a>
                    </li>
                    <li><a class="nav-link" href="blank.html"><i data-feather="lock"></i><span>Assets</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="nav-link"><i data-feather="smile"></i><span>Human Resources (PDP)</span></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="nav-link"><i data-feather="calendar"></i><span>Task Management</span></a>
                    </li>
                </ul>
            </div>

            <!-- Main Content -->
            <div class="main-content">
                <section class="section border-0">
                    <div class="section-body">
                        <!-- Row 1 -->
                    <div class="row ">
                         <!-- Companies -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12" id="dvInst" runat="server">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="#">Institutions</a></h3>
                                                    <%--<h2 class="mb-3 font-16">28</h2>--%>
                                                    <p class="mb-0"><span class="col-green"></span><a href="../auth/register-company.aspx">Add Institution</a></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-user" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- My Profile -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12" id="dvProfile" runat="server">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="#">My Profile</a></h3>
                                                    <%--<h2 class="mb-3 font-16">28</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="../admin/admin-user-add.aspx">Add User</a></p>--%>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-user" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- LMS -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="../admin/admin-dashboard.aspx">LMS</a></h3>
                                                    <%--<h2 class="mb-3 font-18">1,287</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="admin-course-add.aspx">Add Course</a></p>--%>
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
                        <!-- Form2Flow  -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="http://vxworkflow.co.za/landing/login">Form2Flow</a></h3>
                                                    <%--<h2 class="mb-3 font-18">128</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="admin-category-add.aspx">Add Category</a></p>--%>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-file-code" style="color: #DDDDDD;"></i>
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
                        <!-- Content Creator -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="http://vxworkflow.co.za/homeaffairs/">Content Creator</a></h3>
                                                    <%--<h2 class="mb-3 font-18">$48,697</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="admin-branch-add.aspx">Add Branch</a></p>--%>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-code" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- docXview -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="https://dmsv1.azurewebsites.net/pages/login">docXview</a></h3>
                                                    <%--<h2 class="mb-3 font-18">128</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="admin-category-add.aspx">Add Category</a></p>--%>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-file" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Student Finance-->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="https://my.waveapps.com/login/">Student Finance</a></h3>
                                                    <%--<h2 class="mb-3 font-18">1,287</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="#">View Progress</a></p>--%>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-credit-card" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                        <!-- Row 3 -->
                        <div class="row ">
                        <!-- Reports -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="#">Reports</a></h3>
                                                    <%--<h2 class="mb-3 font-16">28</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="../admin/admin-user-add.aspx">Add User</a></p>--%>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-database" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Assets -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="#">Assets</a></h3>
                                                    <%--<h2 class="mb-3 font-18">1,287</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="admin-course-add.aspx">Add Course</a></p>--%>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-university" style="color: #DDDDDD;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Human Resources  -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="card">
                                <div class="card-statistic-4">
                                    <div class="align-items-center justify-content-between">
                                        <div class="row ">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-6 pr-0 pt-3">
                                                <div class="card-content">
                                                    <h3 class="font-30"><a href="#">Human Resources</a></h3>
                                                    <%--<h2 class="mb-3 font-18">128</h2>--%>
                                                    <%--<p class="mb-0"><span class="col-green"></span><a href="admin-category-add.aspx">Add Category</a></p>--%>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 pl-0">
                                                <div class="banner-img">
                                                    <i class="fa fa-10x fa-users" style="color: #DDDDDD;"></i>
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

            <!-- Footer -->
            <footer class="main-footer">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto text-danger">
                        <span>Copyright &copy; RED-ERP Solutions 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->
        </div>
    </div>
    <!-- General JS Scripts -->
    <script src="../assets/js/app.min.js"></script>
    <!-- JS Libraies -->
    <!-- Page Specific JS File -->
    <!-- Template JS File -->
    <script src="../assets/js/scripts.js"></script>
    <!-- Custom JS File -->
    <script src="../assets/js/custom.js"></script>
</body>


<!-- pricing.html  21 Nov 2019 03:54:41 GMT -->
</html>

