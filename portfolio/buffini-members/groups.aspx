<%@ Page Title="Buffini Groups" Language="vb" AutoEventWireup="false" MasterPageFile="~/members-area/global.Master" CodeBehind="groups.aspx.vb" Inherits="ProvidenceSystems.groups" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style type="text/css">
    .iframe-container {
      margin: 0 auto;
      width: 720px;
      padding-top: 100px;
    }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
  <div class="iframe-container">
    <iframe src="http://www.referralmaker.com/CommunityGroupsDashboard.aspx?DISPLAY=BARE" frameborder=0></iframe>
  </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
  <script>
    $(document).ready(function() {
      // Remove viewport meta tag so fixed content is scrollable on mobile devices
      $('meta[name="viewport"]').attr('content', '');
      // Remove footer
      $('footer').remove();
    });
  </script>
</asp:Content>
