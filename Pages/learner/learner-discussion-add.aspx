<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-discussion-add.aspx.vb" Inherits="LearnerManagementSystem.learner_discussion_add" %>
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
                                Start A Discussion
                            </div>

                <!-- card header  -->
                <div class="card card-primary">
                 <div class="card-header">
                    <h4>New Discussion</h4>
                 </div>
                 <!--card body -->
                <div class="card-body">
                <div class="row">
                    <!-- title-->
                          <div class="card-body">
                            <div class="form-group row mb-4">
                              <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Discussion Title</label>
                              <div class="col-sm-12 col-md-7">
                                <input type="text" class="form-control">
                              </div>
                            </div>
                    <!-- course-->
                            <div class="form-group row mb-4">
                              <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Course</label>
                              <div class="col-sm-12 col-md-7">
                                <select class="form-control selectric">
                                  <option>Fitter and Trainer</option>
                                  <option>Home Affairs</option>
                                  <option>Simulator Training</option>
                                </select>
                              </div>
                            </div>
                    <!-- module-->
                            <div class="form-group row mb-4">
                              <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Module</label>
                              <div class="col-sm-12 col-md-7">
                                <select class="form-control selectric">
                                  <option>Markets</option>
                                  <option>Statistics</option>
                                  <option>Welding</option>
                                </select>
                              </div>
                            </div>
                    <!--text area -->
                            <div class="form-group row mb-4">
                              <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Discussion</label>
                              <div class="col-sm-12 col-md-7">                               
                                <textarea class="summernote-simple width-per-100"></textarea>                              
                              </div>
                            </div>
                    <!--button -->
                            <div class="form-group row mb-4">
                              <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                              <div class="col-sm-12 col-md-7">
                                <button class="btn btn-primary">Create A Discussion</button>
                              </div>
                            </div>
                          </div>                      
                      </div>
                    </div>
                    </div>
                <!-- end of card-->
            </div>
            </div>
          </div>
            </section>
          </div>
         
        
    </form>
</asp:Content>
