<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="Pet_Shoping.AddBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
            <hr />
            <div class="container">
                <div class="form-horizontal">
                    <h2>Add Breed</h2>
                    <hr />

                    <div class="form-group">
                        <asp:Label ID="label1" CssClass="col-md-2 control-label" runat="server" Text="Brred Name"></asp:Label>
                        <div class="col-md-3">

                            <asp:TextBox ID="txtBrand" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Breedname" ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 

                     <div class="form-group">
                         <div class="col-md-2"> </div>
                        <div class="col-md-6">

                            
                           
                            <asp:Button ID="btnAddBrand" CssClass="btn btn-success" runat="server" Text="Add Breed" OnClick="btnAddBrand_Click"  />                        
                            
                        </div>
                    </div>

                </div>

           </div>
         <h1>Breed</h1>
         <hr />

         <div class="panel panel-default">

             <div class="panel-heading"> All Breeds </div>

             <asp:Repeater ID="rptrBrand" runat="server">

                 <HeaderTemplate>
                      <table class="table">

                 <thead>
                     <tr>
                         <th>#</th>
                         <th>Breed</th>
                         <th>Edit</th>
                     </tr>
                 </thead>

                 <tbody>

                 </HeaderTemplate>

                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("BrandID") %></th>
                         <td><%# Eval("Name") %></td>
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
