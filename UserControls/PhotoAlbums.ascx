<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PhotoAlbums.ascx.cs" Inherits="HundredeDagesLogen.UserControls.PhotoAlbums" %>

<div class="panel-heading">
    <div class="text-left">
        <h1>Billedmapper</h1>
    </div>
    <table class="table-borderless">
        <tbody data-bind="foreach: Views.PhotoAlbums">
            <tr>
                <td>
                    <img src="../Content/FolderWithPicturesIcon.jpg" style="width: 150px;" /></td>
                <td><a data-toggle="tab" data-bind="text: $data, click: PhotoAlbum_OnLoad.bind($data)" href="#PhotoAlbumTab"></a></td>
            </tr>
        </tbody>
    </table>
</div>


