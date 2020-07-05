<%@ Control Language="c#" AutoEventWireup="True" Inherits="YAF.Pages.Profile.BlockOptions" CodeBehind="BlockOptions.ascx.cs" %>
<%@ Import Namespace="YAF.Types.Models" %>

<YAF:PageLinks runat="server" ID="PageLinks" />

<div class="row">
    <div class="col-sm-auto">
        <YAF:ProfileMenu runat="server"></YAF:ProfileMenu>
    </div>
    <div class="col">
        <div class="row">
            <div class="col">
                <div class="card mb-3">
                    <div class="card-header">
                        <YAF:IconHeader runat="server"
                                        IconName="user-lock"
                                        LocalizedTag="BLOCK_OPTIONS" />
                    </div>
                    <div class="card-body">
                        <h6 class="card-title">
                            <YAF:LocalizedLabel ID="LocalizedLabel200" runat="server" 
                                                LocalizedTag="SELECT_OPTIONS" />
                        </h6>
                        <div class="mb-3">
                            <asp:CheckBox runat="server" ID="BlockPMs" 
                                      CssClass="form-check"/>
                        </div>
                        <div class="mb-3">
                            <asp:CheckBox runat="server" ID="BlockFriendRequests" 
                                          CssClass="form-check"/>
                        </div>
                        <div class="mb-3">
                            <asp:CheckBox runat="server" ID="BlockEmails" 
                                          CssClass="form-check"/>
                        </div>
                        <YAF:Alert runat="server" Type="info">
                            <YAF:LocalizedLabel runat="server" LocalizedTag="NOTE_BLOCK"></YAF:LocalizedLabel>
                        </YAF:Alert>
                    </div>
                    <div class="card-footer text-center">
                        <YAF:ThemeButton ID="SaveUser" runat="server"
                                         OnClick="SaveUser_OnClick"
                                         TextLocalizedTag="SAVE"
                                         Type="Primary"
                                         Icon="save"/>
                    </div>
                </div>
            </div>
        </div>
        <asp:PlaceHolder runat="server" ID="IgnoredUserHolder">
    <div class="row">
    <div class="col">
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-users fa-fw text-secondary"></i>&nbsp;<YAF:LocalizedLabel ID="LocalizedLabel1" runat="server" 
                                                                              LocalizedTag="IGNORED_USERS" />
            </div>
            <div class="card-body">
                <asp:Repeater ID="UserIgnoredList" runat="server" OnItemCommand="IgnoredItemCommand">
                    <HeaderTemplate>
                        <ul class="list-group list-group-flush">
                    </HeaderTemplate>
                    <FooterTemplate>
                                    </ul>
                    </FooterTemplate>
                    <ItemTemplate>
                        <li class="list-group-item">
                            <YAF:UserLink runat="server" 
                                          Suspended="<%# ((User)Container.DataItem).Suspended %>"
                                          Style="<%# ((User)Container.DataItem).UserStyle %>"
                                          ReplaceName="<%# this.PageContext.BoardSettings.EnableDisplayName ? 
                                                               ((User)Container.DataItem).DisplayName : 
                                                               ((User)Container.DataItem).Name %>"
                                          UserID="<%# ((User)Container.DataItem).ID %>"/>
                            <YAF:ThemeButton runat="server"
                                             Type="Secondary"
                                             Icon="eye"
                                             TextLocalizedPage="POSTS"
                                             TextLocalizedTag="TOGGLEUSERPOSTS_SHOW"
                                             CommandName="delete"
                                             CommandArgument="<%# ((User)Container.DataItem).ID %>" />
                            
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="card-footer text-muted">
                <YAF:LocalizedLabel runat="server" LocalizedTag="NOTE_USERS" />
            </div>
        </div>
    </div>
</div>
        </asp:PlaceHolder>
        </div>
</div>