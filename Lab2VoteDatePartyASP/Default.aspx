<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2VoteDatePartyASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab2 Party Hits</title>
    <style>

        /*
        ------------------------------------
        PARTY VOTES (Lab2)(ASP.NET)
        CALENDAR WEBPAGE
        Dean Jones
        Jan.13, 2017
        ------------------------------------
        */

    </style>
    <link href="Styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header class="center">
            <h1>Party Calendar!</h1>
            <h6>&nbsp;</h6>
            <p>Pick your day below and click Vote!</p>
        </header>
    <main>
        <div class="center-calendar">       
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="222px" OnSelectionChanged="Calendar1_SelectionChanged" TitleFormat="Month" Width="370px" ShowDayHeader="False" OnDayRender="Calendar1_DayRender">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#FF99CC" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#FF6699" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnVote" runat="server" Text="Vote" Width="156px" OnClick="btnVote_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGoVotes" runat="server" Text="Go to Votes" Width="156px" OnClick="btnGoVotes_Click" />
                <br />
                <br />
                <asp:Label ID="lblDay1" runat="server"></asp:Label>
                <asp:Label ID="lblDay2" runat="server"></asp:Label>
                <asp:Label ID="lblDay3" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                ...<br />
        </div>
    </main>
        <footer class="center">Lab2 ASP.NET - Dean Jones - Jan.13, 2017</footer>
    </div>
    </form>
</body>
</html>
