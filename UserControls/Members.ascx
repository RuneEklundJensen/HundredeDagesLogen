<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Members.ascx.cs" Inherits="HundredeDagesLogen.UserControls.Members" %>

<div class="panel-heading">
    <div class="text-left">
        <h1>Oversigt over logens medlemmer</h1>
    </div>
    <table class="table-borderless">
        <tbody data-bind="foreach: Views.Medlemmer">
            <tr>
                <td>
                    <img data-bind="attr: { src: FaceImageUrl }" style="width: 200px;" /></td>
                <td><a data-toggle="tab" data-bind="text: FullName, click: MemberDetails_OnLoad.bind($data, MemberId)" href="#MemberDetailsTab"></a></td>
            </tr>
        </tbody>
    </table>
</div>
