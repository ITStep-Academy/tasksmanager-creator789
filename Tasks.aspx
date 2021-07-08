<%@ Page MasterPageFile="~/Site1.Master" Language="C#" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="TaskManager.Tasks" %>

<asp:Content ContentPlaceHolderID="Content" runat="server">
        <form action="" runat="server">
            <div id="myDIV" class="header">
              <h2>My To Do List</h2>
              <asp:TextBox ID="newTask" placeHolder="Text.." runat="server"></asp:TextBox>
              <asp:Button ID="Button1" CssClass="addBtn" runat="server" Text="Add" OnClick="Button1_Click" />
            </div>
        
        <ul id="myUL">


        <asp:Repeater ID="tasksRepeater" runat="server">
            <ItemTemplate>
               <li>
                <div class="task">
                    <%# Eval("Title") %>
                </div>
                <div class="action">
                    <a href="#"><i class="fa fa-edit"></i></a>
                </div>
                <div class="action">
                    <a href="#"><i class="fa fa-trash-alt"></i></a> 
                </div>
              </li>
            </ItemTemplate>
        </asp:Repeater>
            </ul> 
            
    </form>
</asp:Content>