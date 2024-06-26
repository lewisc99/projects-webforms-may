﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="ContosoUniversityModelBinding.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink NavigateUrl="~/AddStudent" Text="Add New Student" runat="server" />
    <br /><br />
    <asp:Label runat="server" Text="Show:" />
    <asp:DropDownList runat="server" AutoPostBack="true" ID="DisplayYear">
        <asp:ListItem Text="All" Value="" />
        <asp:ListItem Text="Freshman" />
        <asp:ListItem Text="Sophomore" />
        <asp:ListItem Text="Junior" />
        <asp:ListItem Text="Senior" />
    </asp:DropDownList>


    <asp:GridView runat="server" ID="studentsGrid"
        ItemType="ContosoUniversityModelBinding.Models.Student" DataKeyNames="StudentID"
        SelectMethod="GetStudents"
        UpdateMethod="UpdateStudent" DeleteMethod="DeleteStudent"
        AutoGenerateColumns="false"
        AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"
        AllowSorting="true" AllowPaging="true" PageSize="4"
        OnCallingDataMethods="studentsGrid_CallingDataMethods">
        <Columns>
            <asp:DynamicField DataField="StudentID" />
            <asp:DynamicField DataField="LastName" />
            <asp:DynamicField DataField="FirstName" />
            <asp:DynamicField DataField="Year" />
            <asp:DynamicField DataField="EnrollmentDate" />
            <asp:TemplateField HeaderText="Total Credits">
                <ItemTemplate>
                    <asp:Label Text="<%# Item.Enrollments.Sum(en => en.Course.Credits) %>"
                        runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField Text="Courses" DataNavigateUrlFormatString="~/Courses.aspx?StudentID={0}"
                DataNavigateUrlFields="StudentID" />
        </Columns>
    </asp:GridView>
    <asp:ValidationSummary ShowModelStateErrors="true" runat="server" />
</asp:Content>
