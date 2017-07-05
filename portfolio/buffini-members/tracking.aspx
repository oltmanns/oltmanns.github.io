<%@ Page Title="Data Tracking" Language="vb" AutoEventWireup="false" MasterPageFile="~/members-area/global.Master" CodeBehind="tracking.aspx.vb" Inherits="ProvidenceSystems.tracking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style type="text/css">
    .iframe-container {
      margin: 0 auto;
      width: 900px;
      padding-top: 100px;
    }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
  <div class="iframe-container">
    <iframe src="https://www.referralmaker.com/TrackingGroupActivities.aspx" frameborder="0"></iframe>
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
