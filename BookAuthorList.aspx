<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookAuthorList.aspx.cs" Inherits="Alquds_book_store.BookAuthorList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron">
       <h2>Books</h2>
   </div>
 
          
      <div class="row">

    
                 <p >


                     
                      <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
            onitemcommand="DataList1_ItemCommand">
       <ItemTemplate><asp:Panel ID="Panel1" runat="server" BorderColor="Silver" 
            BorderWidth="1px" Height="550px" Width="320px">
        <table    >
        <tr >
        <td align="center"   style="color: #FF0000; font-weight: bold" align="center">
        <asp:Image ID="Image1" runat="server" Height="350px" Width="310px" ImageUrl='<%# Bind("Photo","~/Images/{0}") %>' ></asp:Image>
        </td>
        </tr>
        <tr >
        <td align="center"   style="color: #0000FF; align="center"  font-weight: bold">
        <asp:Label ID="lbl"   runat="server" Text='<%# Eval("[BookName]") %>' Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>



                 <tr >
        <td align="center"   style="color: #009900;"    >
      
        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="AuthorName" Enabled="false"  DataValueField="AuthorID" SelectedValue='<%# Bind("AuthorID") %>'>
                                </asp:DropDownList>

        </td>
        </tr>
            
                 <tr >
        <td align="center"   style="color: #009900;"    >
      
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PublisherName" Enabled="false"  DataValueField="PublisherID" SelectedValue='<%# Bind("PublisherID") %>'>
                                </asp:DropDownList>

        </td>
        </tr>

   

                 <tr >
        <td    style="color: #009900;"    >
        <span style="color: Black; font-weight: bold;">:Edition</span>
       <asp:Label ID="Label2" runat="server" Text='<%#Eval("Edition") %>'></asp:Label>
        </td>
        </tr>



               <tr >
        <td    style="color: #009900;"    >
        <span style="color: Black; font-weight: bold;">NoPages </span> 
       <asp:Label ID="Label1" runat="server" Text='<%#Eval("NoPages") %>'></asp:Label>
        </td>
        </tr>

                     <tr >
        <td    style="color: #009900;"    >
        <span style="color: Black; font-weight: bold;">Type</span> 
      <asp:Label ID="Label3" runat="server" Text='<%#Eval("Type") %>'></asp:Label>
        </td>
        </tr>
            
                           <tr >
        <td   style="color: #009900;"    >
        <span style="color: Black; font-weight: bold;">Price</span> 
     <asp:Label ID="Label4" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
        </td>
        </tr>
                                <tr >
        <td   style="color: #009900;"    >
        <span style="color: Black; font-weight: bold;">Format</span> 
     <asp:Label ID="Label5" runat="server" Text='<%#Eval("Format") %>'></asp:Label>
        </td>
        </tr>


        <td align="center" >
        <asp:LinkButton ID="LinkButton1" runat="server" 
            Font-Underline="False" style="font-weight: 700; color: white" CommandName="Order" CommandArgument='<%#Eval("BookID") %>' BackColor="#0066FF" BorderStyle="Double" Font-Bold="True" Font-Size="Large">Order</asp:LinkButton>
            </td></tr>
        </table> </asp:Panel>
        </ItemTemplate>
        </asp:DataList>




</p>
        
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Authors]"></asp:SqlDataSource>
        
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Publishers]"></asp:SqlDataSource>
        
          
    </div>


</asp:Content>
