<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MemberDetails.ascx.cs" Inherits="HundredeDagesLogen.UserControls.MemberDetails" %>

<div class="panel-heading">
    <div class="text-left">
        <h1>Detaljerede kontakt informationer for logemedlem</h1>
    </div>
    <div data-bind="with: Views.Medlem">
        <table class="table-borderless">
            <tr>
                <td>
                    <img data-bind="attr: { src: FaceImageUrl }" style="width: 200px;" /></td>
                <td>

                    <div class="text-left">
                        <div>
                            <label data-bind="text: FullName"></label>
                        </div>
                        <div>
                            <label data-bind="text: Adresse1"></label>
                        </div>
                        <div>
                            <label data-bind="text: Adresse2"></label>
                        </div>
                        <div>
                            <label data-bind="text: Tlf"></label>
                        </div>
                        <div>
                            <label data-bind="text: Email"></label>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
