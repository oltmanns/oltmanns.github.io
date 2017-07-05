<%@ Page Title="Heritage Profile" Language="vb" AutoEventWireup="false" MasterPageFile="~/members-area/global.Master" CodeBehind="heritage-profile.aspx.vb" Inherits="ProvidenceSystems.heritage_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style type="text/css">
    @media only screen and (min-width: 1024px) {
      .iframe-container {
        margin-left:-100px;
      }
    }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
  <div class="iframe-container">
    <iframe src="#" frameborder="0" id="hpIframe" runat="server"></iframe>
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

