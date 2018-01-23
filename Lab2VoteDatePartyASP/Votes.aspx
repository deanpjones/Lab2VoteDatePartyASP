<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Votes.aspx.cs" Inherits="Lab2VoteDatePartyASP.Votes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Party Votes Tally</title>
    <style type="text/css">

        /*
        ------------------------------------
        PARTY VOTES (Lab2)(ASP.NET)
        VOTES WEBPAGE
        Dean Jones
        Jan.13, 2017
        ------------------------------------
        */

        </style>
    <link href="Styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <header class="center">
            <h1>Party Votes Tally!</h1>
            <h6>&nbsp;</h6>
            <p>View the vote tally below...</p>
            <div class="center">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Day 1   "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDay1" runat="server" OnTextChanged="TextBox1_TextChanged" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Day 2  "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDay2" runat="server" OnTextChanged="TextBox1_TextChanged" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Day 3 "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDay3" runat="server" OnTextChanged="TextBox1_TextChanged" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
            </div>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="btnGoToHits" runat="server" Text="Go to Calendar" Width="156px" OnClick="btnGoToHits_Click" />
                </p>
        </header>
    <main class="center">
        <div>       
                <br />
                <br />
                <br />
                <br />
                <br />
                ...<br />
        </div>
    </main>
        <footer class="center">Lab2 ASP.NET - Dean Jones - Jan.13, 2017</footer>
    </div>
    </form>
    <%--    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>
</body>
</html>
