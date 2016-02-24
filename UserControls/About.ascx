<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="About.ascx.cs" Inherits="HundredeDagesLogen.UserControls.About" %>

<div class="form-group">
    <div class="jumbotron">
        <div class="text-left">
            <h2>Om 100 Dages Logens hjemmeside</h2>
            <hr />
            <hr />
            <h3>Dette site er en single page application kodet i ASP.NET.</h3>
            <h3>Der er anvendt KnockOut, BootStrap, Blueimp Gallery og TypeScript.</h3>
            <h3>Asynkron data-kommunikation foretages under anvendelse af WebApi, JSON og JQuery.</h3>
            <h3>Dertil kommer et mindre ocean af tid og flid for at få al Single Page-magien til at ske</h3>
            <h3>Hosting er foretaget hos Microsoft Azure</h3>
            <hr />
            <hr />

            <h4>WebSite version: <%= Version %></h4>
            <div data-bind="with: Views.Version">
                <h4 data-bind="text: 'API version: ' + $data" />
            </div>

            <hr />
            <hr />
        </div>

        <div class="text-right">
            <h4>&copy; 2015 by Rune Jensen, Eklund Industries, info@EklundIndustries.com</h4>
        </div>
    </div>
</div>

