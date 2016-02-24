<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Meetings.ascx.cs" Inherits="HundredeDagesLogen.UserControls.Meetings" %>

<div class="panel-heading">
    <div class="text-left">
        <h1>Information om logens møder</h1>
    </div>
</div>
<div class="container-fluid">
    <div class="text-left">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Dato</th>
                    <th>Arrangør</th>
                    <th>Event</th>                    
                </tr>
            </thead>
            <tbody data-bind="foreach: Views.Moeder">
                <tr>
                    <td data-bind="text: Dato"></td>
                    <td><a data-toggle="tab" data-bind="text: Arrangoer, click: MemberDetails_OnLoad.bind($data, MemberId)" href="#MemberDetailsTab"></a></td>
                    <td data-bind="text: Event"></td>                    
                </tr>
            </tbody>
        </table>
    </div>
</div>

