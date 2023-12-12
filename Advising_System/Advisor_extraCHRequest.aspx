﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_extraCHRequest.aspx.cs" Inherits="Advising_System.Advisor_extraCHRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Approve / Reject Credit Hours Requests</h2>
        <div>
            <asp:GridView ID="CHRequests" runat="server" AutoGenerateColumns="False">
                <Columns>
                     <asp:BoundField DataField="request_id" HeaderText="Request ID" />
                     <asp:BoundField DataField="type" HeaderText="Type" />
                     <asp:BoundField DataField="comment" HeaderText="Comment" />
                     <asp:BoundField DataField="status" HeaderText="Status" />
                     <asp:BoundField DataField="credit_hours" HeaderText="Credit hours" />
                     <asp:BoundField DataField="student_id" HeaderText="Student ID" />
                     <asp:BoundField DataField="advisor_id" HeaderText="Advisor ID" />
                    <asp:TemplateField HeaderText="Approve/Reject">
                     <ItemTemplate>
                        <asp:Button ID="btnAction" runat="server" Text="Click Me" OnClick="Respond_button" CommandArgument='<%# Eval("request_id") %>' />
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
