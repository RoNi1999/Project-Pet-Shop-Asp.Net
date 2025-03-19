<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Pet_Shoping.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container">
                <div class="form-horizontal">
                    <br />
                    <br />

                    <h2>Add Category</h2>
                    <hr />

                    <div class="form-group">
                        <asp:Label ID="label1" CssClass="col-md-2 control-label" runat="server" Text="Category Name"></asp:Label>
                        <div class="col-md-3">

                            <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategoryName" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Category" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                     <div class="form-group">
                         <div class="col-md-2"> </div>
                        <div class="col-md-6">

                            
                           
                            <asp:Button ID="btnAddCategory" CssClass="btn btn-success" runat="server" Text="Add Category" OnClick="btnAddCategory_Click"   />                        
                            
                        </div>
                    </div>

                </div>

          <h1>Category</h1>
         <hr />

         <div class="panel panel-default">

             <div class="panel-heading"> All Categorys </div>

             <asp:Repeater ID="rptrCategory" runat="server">

                 <HeaderTemplate>
                      <table class="table">

                 <thead>
                     <tr>
                         <th>#</th>
                         <th>Category</th>
                         <th>Edit</th>
                     </tr>
                 </thead>

                 <tbody>

                 </HeaderTemplate>

                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("CatID") %></th>
                         <td><%# Eval("CatName") %></td>
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
