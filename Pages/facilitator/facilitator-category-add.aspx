<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Facilitator.Master" CodeBehind="facilitator-category-add.aspx.vb" Inherits="Form2Flow.facilitator_category_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <section class="section">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 col-md-8 offset-md-2 col-sm-12 col-xs-12">
                        <form runat="server" class="needs-validation" novalidate="" >
                        <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>Add Category</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- Username and Email -->
                                            <div class="row">
                                                <div class="form-group col-md-12 col-12">
                                                    <label for="email">Name</label>
                                                    <input id="txtCategoryName" runat="server" type="text" class="form-control" name="catName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the category name
                                                    </div>
                                                </div>
                                                <%--<div class="form-group col-md-6 col-12">
                                                    <label>E-mail Address</label>
                                                    <input id="txtEmail" runat="server" type="text" class="form-control" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the e-mail
                                                    </div>
                                                </div>--%>
                                            </div>


                                            <div class="form-group">
                                                <asp:Label ID="lblError1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-3 offset-md-6 col-6">
                                                    <button type="button" id="btnCancel" runat="server" class="btn btn-secondary cancel btn-lg btn-block" onserverclick="btnCancel_ServerClick" tabindex="4">Cancel</button>
                                                </div>
                                                <div class="form-group col-md-3 col-6">
                                                    <asp:Button ID="btnAddCategory" CssClass="btn btn-primary btn-lg btn-block" Text="Add Category" runat="server" OnClick="btnAddCategory_Click" TabIndex="4"></asp:Button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                            </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
