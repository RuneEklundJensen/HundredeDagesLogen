<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Finances.ascx.cs" Inherits="HundredeDagesLogen.UserControls.Finances" %>

<div class="panel-heading">
    <div class="text-left">
        <h1>Information om logens finansielle situation</h1>
    </div>
</div>
<div class="container-fluid">
    <div class="text-left">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Dato</th>
                    <th>Indbetaler</th>
                    <th>Tekst</th>
                    <th>Indbetalt beløb</th>
                    <th>Saldo</th>
                </tr>
            </thead>
            <tbody data-bind="foreach: Views.Betalinger">
                <tr>
                    <td data-bind="text: Dato"></td>
                    <td><a data-toggle="tab" data-bind="text: Indbetaler, click: MemberDetails_OnLoad.bind($data, MemberId)" href="#MemberDetailsTab"></a></td>
                    <td data-bind="text: Tekst"></td>
                    <td data-bind="text: Beloeb" class="text-right"></td>
                    <td data-bind="text: Saldo" class="text-right"></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<nav>
    <ul class="pagination pull-right">
        <li><a href="#" onclick="viewModel.AddBetalingerToViewAtPage(1); return false;">«</a></li>
        <li class="active"><a href="#" onclick="viewModel.AddBetalingerToViewAtPage(1); return false;">1</a></li>
        <% 
            for (int i = 2; i <= 4; i++)  // ToDo: viewModel.Data.GetNumberOfFinancesPages()
            {
                Response.Write("<li><a href='#' onclick='viewModel.AddBetalingerToViewAtPage(" + i + "); return false;'>" + i + "</a></li>");
            }
            Response.Write("<li><a href='#' onclick='viewModel.AddBetalingerToViewAtPage(viewModel.Data.GetNumberOfFinancesPages()); return false;'>»</a></li>");
        %>
    </ul>
</nav>
