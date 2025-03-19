<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="Pet_Shoping.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
                <div class="form-horizontal">
                    <br />
                    <br />

                    <h2>Add Size</h2>
                    <hr />


                    <div class="form-group">
                        <asp:Label ID="label1" CssClass="col-md-2 control-label" runat="server" Text="Size Name"></asp:Label>
                        <div class="col-md-3">

                            <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                    <div class="form-group">
                        <asp:Label ID="label3" CssClass="col-md-2 control-label" runat="server" Text="Brand"></asp:Label>
                        <div class="col-md-3">

                            <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Brand" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                    <div class="form-group">
                        <asp:Label ID="label4" CssClass="col-md-2 control-label" runat="server" Text="Category"></asp:Label>
                        <div class="col-md-3">

                            <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Category" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                     <div class="form-group">
                        <asp:Label ID="label2" CssClass="col-md-2 control-label" runat="server" Text="Sub Category"></asp:Label>
                        <div class="col-md-3">

                            <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Main SubCategory" ControlToValidate="ddlSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                    <div class="form-group">
                        <asp:Label ID="label5" CssClass="col-md-2 control-label" runat="server" Text="Gender"></asp:Label>
                        <div class="col-md-3">

                            <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Main Gender" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                    

                     <div class="form-group">
                         <div class="col-md-2"> </div>
                        <div class="col-md-6">

                            
                           
                            <asp:Button ID="btnSize" CssClass="btn btn-success" runat="server" Text="Add Size" OnClick="btnSize_Click"    />                        
                            
                        </div>
                    </div>

                </div>
         <h1>Sizes</h1>
         <hr />

         <div class="panel panel-default">

             <div class="panel-heading"> All Sizes </div>

             <asp:Repeater ID="rptrSizes" runat="server">

                 <HeaderTemplate>
                      <table class="table">

                 <thead>
                     <tr>
                         <th>#</th>
                         <th>Size</th>
                         <th>Brand</th>
                         <th>Category</th>
                         <th>Sub Category</th>
                         <th>Gender</th>                         
                         <th>Edit</th>
                     </tr>
                 </thead>

                 <tbody>

                 </HeaderTemplate>

                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("SizeID") %></th>
                         <td><%# Eval("SizeName") %></td>
                         <td><%# Eval("Name") %></td>
                         <td><%# Eval("CatName") %></td>
                         <td><%# Eval("SubCatName") %></td>
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
