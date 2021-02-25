<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="admin-module-list.aspx.vb" Inherits="LearnerManagementSystem.admin_module_list" %>
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
                        <th>Questions</th>
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
                        <td>MODULE 1 ITEM 1 LOGOUT AND TAGOUT</td>
                        
                       
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       
                        <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                        <td>MODULE 1 ITEM 1 AIR CLEANER AND PRE-CLEANER</td>
                        
                       
                        <td>2017-07-14</td>
                        <td>2018-07-21</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                        <td>MODULE 1 ITEM 3 FUEL WATER SEPARATOR FILTER</td>
            
                        <td>2019-07-25</td>
                        <td>2019-08-17</td>
                        <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                        <td>MODULE 1 ITEM 4 AIR TRANSFER DUCTS</td>
                        
                        <td>2018-04-15</td>
                        <td>2019-07-19</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp4.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                      <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 5 HOUR METER</td>
                        
                        <td>2017-02-24</td>
                        <td>2018-09-06</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                        <td>MODULE 1 ITEM 6 ENGINE OIL</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                        <td>MODULE 1 ITEM 1 FUEL TANK</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp7.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 1 HYDRAULIC OIL</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp8.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 9 HYDROSTATIC TRANMISSION OIL</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp9.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 10 TYRES</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp10.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 11 WHEEL NUTS</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp11.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 12 FIRE EXTINGUISHER AND FIRE SUPPRESSION SYSTEM</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp12.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 13 STOP BLOCKS</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp13.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        <tr>
                             <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 14 GENERAL INSPECTION</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp14.html" class="btn btn-outline-primary">View</a></td>
                      </tr>
                        
                        <tr>
                            <td class="p-0 text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                              id="checkbox-2">
                            Module
                          </div>
                        </td>
                        <td>MODULE 1 ITEM 15 OPERATOR COMPARTMENT</td>
                        
                        <td>2018-01-20</td>
                        <td>2019-05-28</td>
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
                        <td><a href="mdtp15.html" class="btn btn-outline-primary">View</a></td>
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
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
                       <td><a href="#" class="btn btn-outline-primary">Add</a></td>
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
