<%@ Page Language="C#" AutoEventWireup="true" Inherits="CMSModules_Forums_Tools_Groups_Group_Frameset" CodeFile="Group_Frameset.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" enableviewstate="false">
    <title>Forum group properties</title>
</head>
<frameset border="0" rows="<%= TabsBreadHeadFrameHeight %>, *" id="rowsFrameset">
    <frame name="groupsHeader" src="<%= groupsHeaderUrl %>" frameborder="0" scrolling="no"
        noresize="noresize" />
    <frame name="groupsContent" src="<%= groupsContentUrl %>" frameborder="0" />
        <cms:NoFramesLiteral ID="ltlNoFrames" runat="server" />
    </frameset>
</html>
