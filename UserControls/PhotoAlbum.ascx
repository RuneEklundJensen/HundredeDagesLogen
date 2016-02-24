<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PhotoAlbum.ascx.cs" Inherits="HundredeDagesLogen.UserControls.PhotoAlbum" %>

<div data-bind="with: Views.PhotoAlbum">
    <div class="panel-heading">
        <div class="text-left">
            <h1 data-bind="text: 'Billedmappe ' + $data" />
        </div>
    </div>
</div>

<div id="links" data-slideshow="100" class="modal-fullscreen">
    <div data-bind="foreach: Views.Photos">
        <a data-bind="attr: { href: 'data:image/jpg;base64,' + Image }" data-gallery="#blueimp-gallery">
            <img data-bind="attr: { src: 'data:image/jpg;base64,' + ThumbnailImage }" />
        </a>
    </div>
</div>

<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>







