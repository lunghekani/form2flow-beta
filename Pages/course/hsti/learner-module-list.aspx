<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Learner.Master" CodeBehind="learner-module-list.aspx.vb" Inherits="Form2Flow.learner_module_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <section class="section">          
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h4>Assign Task Table</h4>
                  <div class="card-header-form">
                    <form>
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <div class="input-group-btn">
                          <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="card-body p-0">
                  <div class="table-responsive">
                    <table class="table table-striped">
                      <tr>
                        <th class="text-center">
                          Module
                        </th>
                          
                        <th>Topics</th>
                        <th>Creation Date</th>
                        <th>Due date</th>
                       
                        <th>View</th>
                      
                      </tr>
                      <tr>
                        <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-1">
                            Module
                          </div>
                        </td>
                        <td>Advance HIV/AIDS Counselling - Introduction</td>
                        
                       
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        
                          <td><a href="mdtp1.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                      <tr>
                        <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 1 - Setting up an enabling counselling environment (Specific Outcome 2)</td>
                        
                       
                        <td>2017-07-14</td>
                        <td>2018-07-21</td>
                       
                        <td><a href="mdtp2.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                      <tr>
                            <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td> Module 1 - THE PRINCIPLES AND PROCESS OF COUNSELLING (SPECIFIC OUTCOME 3)</td>
            
                        <td>2019-07-25</td>
                        <td>2019-08-17</td>
                        
                        <td><a href="mdtp3.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                      <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 1 - THE IMPORTANCE IF VALUES, ATTITUDES AND BEHAVIOUR IN COUNSELLING (SPECIFIC OUTCOME 4)</td>
                        
                        <td>2018-04-15</td>
                        <td>2019-07-19</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                      <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 1 - APPLYING A COUNSELLING PROCESS (SPECIFIC OUTCOME 5)</td>
                        
                        <td>2017-02-24</td>
                        <td>2018-09-06</td>
                       
                        <td><a href="mdtp5.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                      <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 1 - REFLECTING ON THE COUNSELLING PROCESS (SPECIFIC OUTCOME 6)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="mdtp6.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Put something</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 2 - COUNSEL AN INDIVIDUAL AFTER AN HIV TEST (SPECIFIC OUTCOME 2)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 2 - DEMONSTRATE SKILLS AND TECHNIQUES REQUIRED OF AN HIV COUNSELLOR (SPECIFIC OUTCOME 3)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 2 - COUNSEL AN INDIVIDUAL AFTER AN HIV TEST (SPECIFIC OUTCOME 2)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 2 - DEMONSTRATE SKILLS AND TECHNIQUES REQUIRED OF AN HIV COUNSELLOR (SPECIFIC OUTCOME 3)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 1 - REFLECTING ON THE COUNSELLING PROCESS (SPECIFIC OUTCOME 6)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 2 - RESPOND TO QUERIES ABOUT HIV AND AIDS (SPECIFIC OUTCOME 4)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 3 - DISCUSS THE EMOTIONAL AND SPIRITUAL NEEDS OF INDIVIDUALS INFECTED OR AFFECTED BY HIV (SPECIFIC OUTCOME 1)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        
                        <tr>
                            <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 3 - DISCUSS THE PHYSICAL AND PRACTICAL NEEDS OF INDIVIDUALS AFFECTED BY HIV AND AIDS (SPECIFIC OUTCOME 2)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr><tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 3 - EXPLAIN ISSUES ON THE DEATH OF A SPOUSE, PARENT OR CAREGIVER (SPECIFIC OUTCOME 3)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 3 - EXPLAIN BASIC RIGHTS AND HOW TO ACCESS SERVICES (SPECIFIC OUTCOME 4)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 3 - EXPLAIN HOW RELATIONSHIPS ARE AFFECTED BY HIV AND AIDS (SPECIFIC OUTCOME 5)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Something here</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 4 - EXPLAIN THE IMPORTANCE OF THE TREATMENT PLAN TO THE CLIENT (SPECIFIC OUTCOME 2)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>Module 4 - PROVIDE GUIDANCE AND SUPPORT TO THE CLIENT IN RELATION TO THE TREATMENT PLAN (SPECIFIC OUTCOME 3)</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">View</a></td>
                      </tr>

                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
        </section>
        <div class="settingSidebar">
          <a href="javascript:void(0)" class="settingPanelToggle"> <i class="fa fa-spin fa-cog"></i>
          </a>
          <div class="settingSidebar-body ps-container ps-theme-default">
            <div class=" fade show active">
              <div class="setting-panel-header">Setting Panel
              </div>
              <div class="p-15 border-bottom">
                <h6 class="font-medium m-b-10">Select Layout</h6>
                <div class="selectgroup layout-color w-50">
                  <label class="selectgroup-item">
                    <input type="radio" name="value" value="1" class="selectgroup-input-radio select-layout" checked>
                    <span class="selectgroup-button">Light</span>
                  </label>
                  <label class="selectgroup-item">
                    <input type="radio" name="value" value="2" class="selectgroup-input-radio select-layout">
                    <span class="selectgroup-button">Dark</span>
                  </label>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <h6 class="font-medium m-b-10">Sidebar Color</h6>
                <div class="selectgroup selectgroup-pills sidebar-color">
                  <label class="selectgroup-item">
                    <input type="radio" name="icon-input" value="1" class="selectgroup-input select-sidebar">
                    <span class="selectgroup-button selectgroup-button-icon" data-toggle="tooltip"
                      data-original-title="Light Sidebar"><i class="fas fa-sun"></i></span>
                  </label>
                  <label class="selectgroup-item">
                    <input type="radio" name="icon-input" value="2" class="selectgroup-input select-sidebar" checked>
                    <span class="selectgroup-button selectgroup-button-icon" data-toggle="tooltip"
                      data-original-title="Dark Sidebar"><i class="fas fa-moon"></i></span>
                  </label>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <h6 class="font-medium m-b-10">Color Theme</h6>
                <div class="theme-setting-options">
                  <ul class="choose-theme list-unstyled mb-0">
                    <li title="white" class="active">
                      <div class="white"></div>
                    </li>
                    <li title="cyan">
                      <div class="cyan"></div>
                    </li>
                    <li title="black">
                      <div class="black"></div>
                    </li>
                    <li title="purple">
                      <div class="purple"></div>
                    </li>
                    <li title="orange">
                      <div class="orange"></div>
                    </li>
                    <li title="green">
                      <div class="green"></div>
                    </li>
                    <li title="red">
                      <div class="red"></div>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <div class="theme-setting-options">
                  <label class="m-b-0">
                    <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"
                      id="mini_sidebar_setting">
                    <span class="custom-switch-indicator"></span>
                    <span class="control-label p-l-10">Mini Sidebar</span>
                  </label>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <div class="theme-setting-options">
                  <label class="m-b-0">
                    <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"
                      id="sticky_header_setting">
                    <span class="custom-switch-indicator"></span>
                    <span class="control-label p-l-10">Sticky Header</span>
                  </label>
                </div>
              </div>
              <div class="mt-4 mb-4 p-3 align-center rt-sidebar-last-ele">
                <a href="#" class="btn btn-icon icon-left btn-primary btn-restore-theme">
                  <i class="fas fa-undo"></i> Restore Default
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
