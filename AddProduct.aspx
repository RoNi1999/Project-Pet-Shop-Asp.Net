﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Pet_Shoping.AddProduct" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Add Pet</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Pet Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPetName" CssClass="form-control" runat="server"></asp:TextBox>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Selling Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtsellPrice" CssClass="form-control" runat="server"></asp:TextBox>



                </div>

            </div>


            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>



                </div>

            </div>

            
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="SubCategory"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>



                </div>

            </div>

             <div class="form-group">
                <asp:Label ID="Label19" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"></asp:DropDownList>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBoxList ID="cblSize" CssClass="form-control" RepeatDirection="Horizontal" runat="server" AutoPostBack="True"></asp:CheckBoxList>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label20" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Discription "></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDiscription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Pet Detail"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPetDetail" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Pet & Care"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPetCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label13" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label15" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label16" runat="server" CssClass="col-md-2 control-label" Text="Free Delivery"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chFD" runat="server" />



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label17" runat="server" CssClass="col-md-2 control-label" Text="30 Days Return"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="ch30Ret" runat="server" />



                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label" Text="Cash On Delivery"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chCOD" runat="server" />



                </div>

            </div>

              <div class="form-group">
                         <div class="col-md-2"> </div>
                        <div class="col-md-6">

                            
                           
                            <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add Pet" OnClick="btnAdd_Click" />                        
                            
                        </div>
                    </div>

        </div>

    </div>
</asp:Content>
