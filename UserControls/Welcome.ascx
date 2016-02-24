<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Welcome.ascx.cs" Inherits="HundredeDagesLogen.UserControls.Welcome" %>

<div class="WelcomeTab" id="WelcomeTab">

    <div class="form-group">
        <div class="jumbotron">

            <div id="carousel" class="carousel slide" data-ride="carousel">

                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                </ol>

                <div class="container">
                    <div class="carousel-inner" role="listbox">

                        <div class="item active">
                            <div class="carouselItem">
                                <div class="container">
                                    <div class="text-center">
                                        <h2>Velkommen til 100 Dages Logens hjemmeside</h2>
                                        <hr />
                                        <h3>
                                            <br />
                                        </h3>
                                        <asp:Image runat="server" ImageUrl="~/Content/topbanner.gif" />
                                        <h3>
                                            <br />
                                        </h3>
                                        <h3>
                                            <br />
                                        </h3>
                                        <h3>
                                            <br />
                                        </h3>
                                    </div>                                    
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="carouselItem">
                                <div class="container">
                                    <div class="text-left">
                                        <h2>Velkommen til 100 Dages Logens hjemmeside</h2>
                                        <hr />
                                        <h3>Dette er 100 Dages Logens hjemmeside</h3>
                                        <h3>- Et eksklusivt forum for medlemmerne af 100 Dages Logen.</h3>
                                        <h3>Her kan de ærede medlemmer finde informationer om allerede afholdte</h3>
                                        <h3>og planlagte møder i logen.</h3>
                                        <h3>Det er muligt at se billeder fra tidligere afholdte møder i logen samt</h3>
                                        <h3>selv at tilføje nye billedalbums og uploade egne billeder.</h3>
                                        <h3>Kontaktoplysninger og informationer om logens finansielle situation er</h3>
                                        <h3>også at finde</h3>
                                    </div>                                    
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="carouselItem">
                                <div class="container">
                                    <div class="text-left">
                                        <h2>Datoen for næste logemøde er sat!</h2>
                                        <hr />
                                        <h3>Ses vi den 22. august til årets kanotur?</h3>
                                        <h3>
                                            <br />
                                        </h3>
                                        <h3>
                                            <br />
                                        </h3>
                                        <h3>
                                            <br />
                                        </h3>
                                        <h3>
                                            <br />
                                        </h3>
                                        <h3>
                                            <br />
                                        </h3>
                                        <h3>
                                            <br />
                                        </h3>
                                        <h3>
                                            <br />
                                        </h3>
                                    </div>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</div>
