﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="AddGender.aspx.cs" Inherits="Pet_Shoping.Genser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="container">
                <div class="form-horizontal">
                    <br />
                    <br />

                    <h2>Add Gender</h2>
                    <hr />

                    <div class="form-group">
                        <asp:Label ID="label1" CssClass="col-md-2 control-label" runat="server" Text="Gender"></asp:Label>
                        <div class="col-md-3">

                            <asp:TextBox ID="txtGender" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Gender" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                     <div class="form-group">
                         <div class="col-md-2"> </div>
                        <div class="col-md-6">

                            
                           
                            <asp:Button ID="btnAddGender" CssClass="btn btn-success" runat="server" Text="Add Gender" OnClick="btnAddGender_Click"   />                        
                            
                        </div>
                    </div>

                </div>
         <h1>Gender</h1>
         <hr />

         <div class="panel panel-default">

             <div class="panel-heading"> All Gender </div>

             <asp:Repeater ID="rptrGender" runat="server">

                 <HeaderTemplate>
                      <table class="table">

                 <thead>
                     <tr>
                         <th>#</th>
                         <th>Gender</th>
                         <th>Edit</th>
                     </tr>
                 </thead>

                 <tbody>

                 </HeaderTemplate>

                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("GenderID") %></th>
                         <td><%# Eval("GenderName") %></td>
                         <td>Edit</td>
                     </tr>
                 </ItemTemplate>

                 <FooterTemplate>
                     </tbody>

                     </table>
                 </FooterTemplate>

             </asp:Repeater>

            
                     
                 


         </div>
           </div>


</asp:Content>
