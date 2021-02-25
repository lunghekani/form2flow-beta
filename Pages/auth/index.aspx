<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Form2Flow.index" %>

<!DOCTYPE html>
<html lang="en">


<!-- auth-login.html  21 Nov 2019 03:49:32 GMT -->
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Login</title>
    <!-- General CSS Files -->
    <link rel="stylesheet" href="../assets/css/app.min.css">
    <link rel="stylesheet" href="../assets/bundles/bootstrap-social/bootstrap-social.css">
    <!-- Template CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/components.css">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="../assets/css/custom.css">
    <link rel='shortcut icon' type='image/x-icon' href='../assets/img/red.ico' />

    <style type="text/css">
        .fit-image {
            width: 90%;
            object-fit: cover;
            /* only if you want fixed height */
        }
    </style>

</head>

<body>
    <div class="loader"></div>
    <div id="app">
        <section class="section">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 col-md-10 offset-md-1 col-lg-10 offset-lg-1">
                        <div class="login-brand">
                        </div>
                        <div class="card card-primary">
                            <div class="row m-0">
                                <div class="col-12 col-md-12 col-lg-7 p-0">
                                    <div class="contact-map">
                                        <img src="../assets/img/red_erp.jpg" class="img-responsive fit-image" />
                                    </div>
                                </div>
                                <div class="col-12 col-md-12 col-lg-5 p-0">
                                    <div class="card-header text-center">
                                        <h4>Login</h4>
                                    </div>
                                    <div class="card-body">
                                        <form runat="server" class="needs-validation" novalidate="">
                                            <div class="form-group">
                                                <label for="email">Username</label>
                                                <input id="txtEmail" runat="server" type="text" class="form-control" name="email" tabindex="1" required autofocus>
                                                <div class="invalid-feedback">
                                                    Please fill in your email
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="d-block">
                                                    <label for="password" class="control-label">Password</label>
                                                    <div class="float-right">
                                                        <a href="forgot-password.aspx" class="text-small">Forgot Password?
                                                        </a>
                                                    </div>
                                                </div>
                                                <input id="txtPassword" runat="server" type="password" class="form-control" name="password" tabindex="2" required>
                                                <div class="invalid-feedback">
                                                    Please fill in your password
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="form-group">
                                                <asp:Button ID="btnLogin" CssClass="btn btn-primary btn-lg btn-block" Text="Login" runat="server" OnClick="btnLogin_onServerClick" TabIndex="4"></asp:Button>
                                                <div class="mt-5 text-muted text-center">
                                                    Don't have an account? <a href="register-company.aspx">Create One</a>
                                                </div>
                                                <br />
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        

                    </div>
                </div>
            </div>
        </section>
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
    <!-- General JS Scripts -->
    <script src="../assets/js/app.min.js"></script>
    <!-- JS Libraies -->
    <!-- Page Specific JS File -->
    <!-- Template JS File -->
    <script src="../assets/js/scripts.js"></script>
    <!-- Custom JS File -->
    <script src="../assets/js/custom.js"></script>
</body>


<!-- auth-login.html  21 Nov 2019 03:49:32 GMT -->
</html>
