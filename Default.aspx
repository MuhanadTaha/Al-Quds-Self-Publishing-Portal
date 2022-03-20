<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Alquds_book_store._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div class="jumbotron">
   
        
     

<div class="w3-content w3-display-container">
  <img class="mySlides" src="Content/slider1.jpg" style="width:100%">
  <img class="mySlides" src="Content/slider2.jpg" style="width:100%">


          <script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 5 seconds
}
</script>
</div>
        
  
    </div>
        <hr />
    <div class="row">
        <div class="col-md-4">
            <h2>Latest Books</h2>
            <p>
                When you click this button you will see a list of all the dormotories rooms listed on this site, so you can find your desired requirments. 
            </p>
            <p>
                <a class="btn btn-default" href="Search.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Choosen Books</h2>
            <p>
               all dormotories have reservations criteria that control all booking process.all candidates must carefully read all policies
            </p>
            <p>
                <a class="btn btn-default" href="Search.aspx">Learn more &raquo;</a></p>
        </div>
               <div class="col-md-4">
         
                 <h2> login as</h2>
            <p>

                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select Role</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Publisher</asp:ListItem>
                    <asp:ListItem>Author</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <a class="btn btn-default" href="Search.aspx">Learn more &raquo;</a></p>
                 <p>
                     &nbsp;</p>
                 <p>
                     &nbsp;</p>
          
        </div>
    </div>

   
   

    </div>


</asp:Content>
