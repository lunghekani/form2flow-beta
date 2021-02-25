<%@ Page Title="Admin - Group Add" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-group-add.aspx.vb" Inherits="LearnerManagementSystem.admin_group_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <section class="section">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1 col-md-10 offset-md-1 col-sm-12 col-xs-12">
                        <form runat="server" class="needs-validation" novalidate="" >

                        <div class="card card-primary">
                                        <div class="card-header">
                                            <h4>Add Group</h4>
                                        </div>
                                        <div class="card-body">

                                            <!-- Name and Group-key -->
                                            <div class="row">
                                                <div class="form-group col-md-6 col-12">
                                                    <label for="email">Name</label>
                                                    <input id="txtCategoryName" runat="server" type="text" class="form-control" name="catName" tabindex="1" required autofocus>
                                                    <div class="invalid-feedback">
                                                        Please fill in the group name
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6 col-12">
                                                    <label>Group-Key</label>
                                                    <input id="txtGroupKey" runat="server" type="text" class="form-control" name="email" tabindex="1" required>
                                                    <div class="invalid-feedback">
                                                        Please fill in the group-key
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Description -->
                                            <div class="row">
                                                    <div class="form-group col-12">
                                                        <label>Description</label>
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
                                                    <asp:Button ID="btnAddGroup" CssClass="btn btn-primary btn-lg btn-block" Text="Add Group" runat="server" OnClick="btnAddGroup_Click" TabIndex="4"></asp:Button>
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
