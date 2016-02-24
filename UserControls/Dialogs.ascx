<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dialogs.ascx.cs" Inherits="HundredeDagesLogen.UserControls.Dialogs" %>

<div id="loginModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
                <h4 class="modal-title">Login</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <div class="text-left">
                        <p>Indtast brugernavn og password</p>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-group">
                        <input type="text" placeholder="Email" name="user" id="user" class="form-control" required="required" />
                    </div>
                    <div class="form-group">
                        <input type="password" placeholder="Password" class="form-control" name="password" id="password" required="required" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" type="button" data-dismiss="modal">Cancel</button>
                <button class="btn btn-primary" type="button" data-dismiss="modal" onclick="return loginModal_Click()">Login</button>
            </div>
        </div>
    </div>
</div>

<div id="validationErrorModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
                <h4 class="modal-title">Login error</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <div class="text-left">
                        <p>Fejl i validering af brugernavn eller password</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" type="button" data-toggle="modal" onclick="return validationErrorModal_Click()">Ok</button>
            </div>
        </div>
    </div>
</div>
