<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Pet.aspx.cs" Inherits="Pet_Shoping.Pet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Pet</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <h3>Welcome To View All Pets</h3>

    <div class="row">
      <div class="col-md-12">
          <button id="btnCart2" runat="server" class="btn btn-primary navbar-btn pull-right" onserverclick="btnCart2_ServerClick" type="button">
                        Cart <span id="CartBadge" runat="server" class="badge"> 0 </span>
                    </button>
                    <h3>
                        <asp:Label ID="Label1" runat="server" Text="Showing All Pets"></asp:Label>
                    </h3>
                    <hr />
                    
      </div>
    </div>

    <div class="row" style="padding-top:50px" >
        <asp:TextBox ID="txtFilterGrid1Record" CssClass="form-control" runat="server" placeholder="Search Products...." AutoPostBack="true" OnTextChanged="txtFilterGrid1Record_TextChanged" ></asp:TextBox>
        <br />
        <hr />

        <asp:Repeater ID="rptrPet" runat="server">
            <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="PetView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
            <div class="thumbnail">

                <img src="Images/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>">
                <div class="caption">

                    <div class="petbrand"><%# Eval("BrandName") %></div>
                    <div class="petName"><%# Eval("PName") %></div>
                    <div class="petPrice">
                        <span class="petOgPrice"><%# Eval("PPrice","{0:0,00}") %></span><%# Eval("PSellPrice","{0:c}") %><span class="petPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>off)</span>                          
                    </div>

                </div>
            </div>
        </div>
            </a>
       </ItemTemplate>
      </asp:Repeater>
    </div>
</asp:Content>
