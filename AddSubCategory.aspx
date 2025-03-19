<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="AddSubCategory.aspx.cs" Inherits="Pet_Shoping.AddSubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
                <div class="form-horizontal">
                    <br />
                    <br />

                    <h2>Add Sub Category</h2>
                    <hr />

                     <div class="form-group">
                        <asp:Label ID="label2" CssClass="col-md-2 control-label" runat="server" Text="Main CategoryID"></asp:Label>
                        <div class="col-md-3">

                            <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Main CategoryId" ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                    <div class="form-group">
                        <asp:Label ID="label1" CssClass="col-md-2 control-label" runat="server" Text="Sub Category Name"></asp:Label>
                        <div class="col-md-3">

                            <asp:TextBox ID="txtSubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategoryName" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter SubCategory" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                     <div class="form-group">
                         <div class="col-md-2"> </div>
                        <div class="col-md-6">

                            
                           
                            <asp:Button ID="btnAddSubCategory" CssClass="btn btn-success" runat="server" Text="Add Sub Category" OnClick="btnAddSubCategory_Click"   />                        
                            
                        </div>
                    </div>

                </div>

         <h1>Sub Category</h1>
         <hr />

         <div class="panel panel-default">

             <div class="panel-heading"> All Sub Categorys </div>

             <asp:Repeater ID="rptrSubCategory" runat="server">

                 <HeaderTemplate>
                      <table class="table">

                 <thead>
                     <tr>
                         <th>#</th>
                         <th>Sub Category</th>
                         <th>Main Category</th>
                         <th>Edit</th>
                     </tr>
                 </thead>

                 <tbody>

                 </HeaderTemplate>

                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("SubCatID") %></th>
                         <td><%# Eval("SubCatName") %></td>
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
