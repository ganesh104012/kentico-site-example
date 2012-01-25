SET IDENTITY_INSERT [CMS_Query] ON
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12995, N'updateall', 0, N'UPDATE Integration_Task SET ##COLUMNS## WHERE ##WHERE##', 0, 2885, 0, '20110628 04:14:02', '930b1eba-a865-47cf-aacd-027819123829', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13250, N'removerelationship', 1, N'Proc_OM_Membership_RemoveRelationship', 0, 2853, 0, '20110628 08:07:26', '46331292-e85c-4b52-a0c4-dea9505a108d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (1276, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_Form WHERE [FormID] = @ID', 0, 880, 0, '20110628 12:30:53', 'aa931e0f-6443-4b34-9704-dc72a4b8a542', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (1280, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_Form WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 880, 0, '20110628 12:30:53', 'c01dd5c8-18f7-43d7-abe2-69beeece5064', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4850, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_Form WHERE (FormLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 880, 0, '20110628 12:30:53', 'b059aff6-0622-4406-beed-4a00265d2bc8', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13089, N'deleteall', 0, N'DELETE FROM CMS_Form WHERE ##WHERE##', 0, 880, 0, '20110628 12:30:53', 'c4099f07-59ff-4018-a115-3baddce24b77', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13090, N'updateall', 0, N'UPDATE CMS_Form SET ##COLUMNS## WHERE ##WHERE##', 0, 880, 0, '20110628 12:30:53', '92f5aa45-14c6-4393-aa0f-8f278165fbe8', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13252, N'updatemerged', 1, N'Proc_OM_Activity_UpdateMerged', 0, 2854, 0, '20110628 12:59:06', '57fd3380-c42c-4f11-9a84-345c8a0a82d1', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13267, N'GetCombinationsWithoutZone', 0, N'SELECT *
FROM OM_MVTCombination
WHERE
  (MVTCombinationPageTemplateID = @MVTCombinationPageTemplateID) AND
  MVTCombinationID NOT IN
  (
    SELECT MVTCombinationID
    FROM OM_MVTCombinationVariation
    WHERE
      MVTVariantID IN
      (
        SELECT MVTVariantID
        FROM OM_MVTVariant
        WHERE
          (MVTVariantZoneID = @MVTVariantZoneID) AND
          (MVTVariantPageTemplateID= @MVTCombinationPageTemplateID)
      )
  )', 0, 2808, 0, '20110701 14:01:52', 'de03c60d-09f6-4c92-93a3-0940cf7378be', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13253, N'select', 0, N'SELECT ##COLUMNS## FROM COM_SKUFile WHERE [FileID] = @ID', 0, 2910, 0, '20110708 12:26:00', '9d0a74dd-53d0-4ccd-8607-5c2c5fdb8185', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13254, N'delete', 0, N'DELETE FROM COM_SKUFile WHERE [FileID] = @ID', 0, 2910, 0, '20110708 12:26:00', '42333829-d3f8-4843-abeb-27f4d0a01331', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13255, N'insert', 0, N'INSERT INTO COM_SKUFile ([FileGUID], [FileSKUID], [FilePath], [FileType], [FileLastModified], [FileName], [FileMetaFileGUID] ) VALUES ( @FileGUID, @FileSKUID, @FilePath, @FileType, @FileLastModified, @FileName, @FileMetaFileGUID); SELECT SCOPE_IDENTITY() AS [FileID]', 1, 2910, 0, '20110708 12:26:00', '89a96502-7748-43ec-bb05-cf81557779e5', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13256, N'update', 0, N'UPDATE COM_SKUFile SET [FileGUID] = @FileGUID, [FileSKUID] = @FileSKUID, [FilePath] = @FilePath, [FileType] = @FileType, [FileLastModified] = @FileLastModified, [FileName] = @FileName, [FileMetaFileGUID] = @FileMetaFileGUID WHERE [FileID] = @FileID', 0, 2910, 0, '20110708 12:26:00', '182cd19e-f86b-4b16-9e17-35fa5d3d89bc', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13257, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_SKUFile WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2910, 0, '20110708 12:26:00', '232fe4ae-bfdb-4ade-8f33-dfd6d3e54de4', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13258, N'deleteall', 0, N'DELETE FROM COM_SKUFile WHERE ##WHERE##', 0, 2910, 0, '20110708 12:26:00', '8f7b4237-f19f-48b3-aefa-f481e09be1a6', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13259, N'updateall', 0, N'UPDATE COM_SKUFile SET ##COLUMNS## WHERE ##WHERE##', 0, 2910, 0, '20110708 12:26:00', '411e290b-472e-4f8a-996f-2920fe41ddb0', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13260, N'select', 0, N'SELECT ##COLUMNS## FROM COM_OrderItemSKUFile WHERE [OrderItemSKUFileID] = @ID', 0, 2911, 0, '20110708 15:08:57', '59d644e2-80f1-4595-9894-401e971f4582', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13261, N'delete', 0, N'DELETE FROM COM_OrderItemSKUFile WHERE [OrderItemSKUFileID] = @ID', 0, 2911, 0, '20110708 15:08:57', 'b35a9f41-f1ab-4b07-b9e9-f818839775c1', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13262, N'insert', 0, N'INSERT INTO COM_OrderItemSKUFile ([Token], [OrderItemID], [FileID], [FileDownloads] ) VALUES ( @Token, @OrderItemID, @FileID, @FileDownloads); SELECT SCOPE_IDENTITY() AS [OrderItemSKUFileID]', 1, 2911, 0, '20110708 15:08:57', 'f04120db-6e4f-48c9-b3ee-2916ad6b55ae', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13263, N'update', 0, N'UPDATE COM_OrderItemSKUFile SET [Token] = @Token, [OrderItemID] = @OrderItemID, [FileID] = @FileID, [FileDownloads] = @FileDownloads WHERE [OrderItemSKUFileID] = @OrderItemSKUFileID', 0, 2911, 0, '20110708 15:08:57', 'ead2833d-4020-488b-a449-6ae13a05d160', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13264, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_OrderItemSKUFile WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2911, 0, '20110708 15:08:57', '9d05f579-e3a4-4949-a8ee-61b6539c9e1f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13265, N'deleteall', 0, N'DELETE FROM COM_OrderItemSKUFile WHERE ##WHERE##', 0, 2911, 0, '20110708 15:08:57', 'f0855885-dab4-459c-9929-edb85620af26', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13266, N'updateall', 0, N'UPDATE COM_OrderItemSKUFile SET ##COLUMNS## WHERE ##WHERE##', 0, 2911, 0, '20110708 15:08:57', '68070606-9bed-4234-aa5a-47b208d7038d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13271, N'removedependencies', 0, N'UPDATE OM_Contact SET ContactStatusID = NULL WHERE ContactStatusID = @ID;', 0, 2843, 0, '20110710 19:02:59', '78cbc11b-9944-4545-bd0f-5853c87e9fd2', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13272, N'removedependencies', 0, N'UPDATE OM_AccountContact SET ContactRoleID = NULL WHERE ContactRoleID = @ID;', 0, 2844, 0, '20110710 19:04:13', '69df3780-6aba-4a19-aa94-07f77b3b33ff', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (6358, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_UserSettings WHERE [UserSettingsID] = @ID', 0, 1768, 0, '20110713 09:32:36', '48a7ea36-a8ac-4a6a-a288-c5eeff4d6044', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (6359, N'delete', 0, N'DELETE FROM CMS_UserSettings WHERE [UserSettingsID] = @ID', 0, 1768, 0, '20110713 09:32:36', '51d7f681-d9eb-4ecf-bc4e-2062872a5276', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (6360, N'insert', 0, N'INSERT INTO CMS_UserSettings ([UserNickName], [UserPicture], [UserSignature], [UserURLReferrer], [UserCampaign], [UserMessagingNotificationEmail], [UserCustomData], [UserRegistrationInfo], [UserPreferences], [UserActivationDate], [UserActivatedByUserID], [UserTimeZoneID], [UserAvatarID], [UserBadgeID], [UserShowSplashScreen], [UserActivityPoints], [UserForumPosts], [UserBlogComments], [UserGender], [UserDateOfBirth], [UserMessageBoardPosts], [UserSettingsUserGUID], [UserSettingsUserID], [WindowsLiveID], [UserBlogPosts], [UserWaitingForApproval], [UserDialogsConfiguration], [UserDescription], [UserUsedWebParts], [UserUsedWidgets], [UserFacebookID], [UserAuthenticationGUID], [UserSkype], [UserIM], [UserPhone], [UserPosition], [UserBounces], [UserLinkedInID], [UserLogActivities], [UserPasswordRequestHash] ) VALUES ( @UserNickName, @UserPicture, @UserSignature, @UserURLReferrer, @UserCampaign, @UserMessagingNotificationEmail, @UserCustomData, @UserRegistrationInfo, @UserPreferences, @UserActivationDate, @UserActivatedByUserID, @UserTimeZoneID, @UserAvatarID, @UserBadgeID, @UserShowSplashScreen, @UserActivityPoints, @UserForumPosts, @UserBlogComments, @UserGender, @UserDateOfBirth, @UserMessageBoardPosts, @UserSettingsUserGUID, @UserSettingsUserID, @WindowsLiveID, @UserBlogPosts, @UserWaitingForApproval, @UserDialogsConfiguration, @UserDescription, @UserUsedWebParts, @UserUsedWidgets, @UserFacebookID, @UserAuthenticationGUID, @UserSkype, @UserIM, @UserPhone, @UserPosition, @UserBounces, @UserLinkedInID, @UserLogActivities, @UserPasswordRequestHash); SELECT SCOPE_IDENTITY() AS [UserSettingsID]', 1, 1768, 0, '20110713 09:32:36', '5785ae05-1e5d-4c95-8e65-2ee426d137b0', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (6361, N'update', 0, N'UPDATE CMS_UserSettings SET [UserNickName] = @UserNickName, [UserPicture] = @UserPicture, [UserSignature] = @UserSignature, [UserURLReferrer] = @UserURLReferrer, [UserCampaign] = @UserCampaign, [UserMessagingNotificationEmail] = @UserMessagingNotificationEmail, [UserCustomData] = @UserCustomData, [UserRegistrationInfo] = @UserRegistrationInfo, [UserPreferences] = @UserPreferences, [UserActivationDate] = @UserActivationDate, [UserActivatedByUserID] = @UserActivatedByUserID, [UserTimeZoneID] = @UserTimeZoneID, [UserAvatarID] = @UserAvatarID, [UserBadgeID] = @UserBadgeID, [UserShowSplashScreen] = @UserShowSplashScreen, [UserActivityPoints] = @UserActivityPoints, [UserForumPosts] = @UserForumPosts, [UserBlogComments] = @UserBlogComments, [UserGender] = @UserGender, [UserDateOfBirth] = @UserDateOfBirth, [UserMessageBoardPosts] = @UserMessageBoardPosts, [UserSettingsUserGUID] = @UserSettingsUserGUID, [UserSettingsUserID] = @UserSettingsUserID, [WindowsLiveID] = @WindowsLiveID, [UserBlogPosts] = @UserBlogPosts, [UserWaitingForApproval] = @UserWaitingForApproval, [UserDialogsConfiguration] = @UserDialogsConfiguration, [UserDescription] = @UserDescription, [UserUsedWebParts] = @UserUsedWebParts, [UserUsedWidgets] = @UserUsedWidgets, [UserFacebookID] = @UserFacebookID, [UserAuthenticationGUID] = @UserAuthenticationGUID, [UserSkype] = @UserSkype, [UserIM] = @UserIM, [UserPhone] = @UserPhone, [UserPosition] = @UserPosition, [UserBounces] = @UserBounces, [UserLinkedInID] = @UserLinkedInID, [UserLogActivities] = @UserLogActivities, [UserPasswordRequestHash] = @UserPasswordRequestHash WHERE [UserSettingsID] = @UserSettingsID', 0, 1768, 0, '20110713 09:32:36', '7743c09b-f515-4dc8-a480-379f52892e45', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (6362, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_UserSettings WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1768, 0, '20110713 09:32:36', '830dc156-c6ff-427b-8f4c-ed89737c858f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (11964, N'deleteall', 0, N'DELETE FROM CMS_UserSettings WHERE ##WHERE##', 0, 1768, 0, '20110713 09:32:36', 'ea222495-3028-4299-bd8c-74321ff91fcd', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (11965, N'updateall', 0, N'UPDATE CMS_UserSettings SET ##COLUMNS## WHERE ##WHERE##', 0, 1768, 0, '20110713 09:32:37', '9f22fe0c-16f2-4a3c-83a7-40a79808bdec', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13273, N'selectactivitylist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2854, 0, '20110713 10:27:11', 'f8de6622-c9ae-43b8-a43d-13ea83f8b027', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13278, N'processlog', 0, N'INSERT INTO OM_Search ([SearchActivityID], [SearchProvider], [SearchKeywords] ) VALUES ( @SearchActivityID, @SearchProvider, @SearchKeywords); SELECT SCOPE_IDENTITY() AS [SearchID]', 0, 2860, 0, '20110713 12:53:37', '4748d086-29df-4701-b5fd-f0294cfabdce', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (9055, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_UIElement WHERE [ElementID] = @ID', 0, 2195, 0, '20110713 17:41:26', '2e408b73-a4b3-4702-b9da-94b0333a2826', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (9056, N'delete', 0, N'DELETE FROM CMS_UIElement WHERE [ElementID] = @ID', 0, 2195, 0, '20110713 17:41:26', '88a0b4e8-912f-4dab-b1f0-8f25424610c6', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (9057, N'insert', 0, N'INSERT INTO CMS_UIElement ([ElementDisplayName], [ElementName], [ElementCaption], [ElementTargetURL], [ElementResourceID], [ElementParentID], [ElementChildCount], [ElementOrder], [ElementLevel], [ElementIDPath], [ElementIconPath], [ElementIsCustom], [ElementLastModified], [ElementGUID], [ElementSize], [ElementDescription], [ElementFromVersion] ) VALUES ( @ElementDisplayName, @ElementName, @ElementCaption, @ElementTargetURL, @ElementResourceID, @ElementParentID, @ElementChildCount, @ElementOrder, @ElementLevel, @ElementIDPath, @ElementIconPath, @ElementIsCustom, @ElementLastModified, @ElementGUID, @ElementSize, @ElementDescription, @ElementFromVersion); SELECT SCOPE_IDENTITY() AS [ElementID]', 1, 2195, 0, '20110713 17:41:26', 'ef334d88-deb1-4e3b-9972-46745bef7eeb', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (9058, N'update', 0, N'UPDATE CMS_UIElement SET [ElementDisplayName] = @ElementDisplayName, [ElementName] = @ElementName, [ElementCaption] = @ElementCaption, [ElementTargetURL] = @ElementTargetURL, [ElementResourceID] = @ElementResourceID, [ElementParentID] = @ElementParentID, [ElementChildCount] = @ElementChildCount, [ElementOrder] = @ElementOrder, [ElementLevel] = @ElementLevel, [ElementIDPath] = @ElementIDPath, [ElementIconPath] = @ElementIconPath, [ElementIsCustom] = @ElementIsCustom, [ElementLastModified] = @ElementLastModified, [ElementGUID] = @ElementGUID, [ElementSize] = @ElementSize, [ElementDescription] = @ElementDescription, [ElementFromVersion] = @ElementFromVersion WHERE [ElementID] = @ElementID', 0, 2195, 0, '20110713 17:41:26', 'efc3ed65-8ed1-440b-97a9-ebd0f77eba84', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (9059, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_UIElement WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2195, 0, '20110713 17:41:26', 'c5b7912d-1319-4859-b0bf-e24ee03474b6', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (10253, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_UIElement WHERE (ElementLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 2195, 0, '20110713 17:41:26', 'b12d772f-fa53-4380-9595-efee76f14a7f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13280, N'deleteall', 0, N'DELETE FROM CMS_UIElement WHERE ##WHERE##', 0, 2195, 0, '20110713 17:41:26', '59bb2205-7270-4ae3-9330-68fbbc19f0fd', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13281, N'updateall', 0, N'UPDATE CMS_UIElement SET ##COLUMNS## WHERE ##WHERE##', 0, 2195, 0, '20110713 17:41:26', '44812dd5-f478-4e82-b00e-23378db89bc8', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12991, N'insert', 0, N'INSERT INTO Integration_Task ([TaskNodeID], [TaskDocumentID], [TaskNodeAliasPath], [TaskTitle], [TaskTime], [TaskType], [TaskObjectType], [TaskObjectID], [TaskIsInbound], [TaskProcessType], [TaskData], [TaskSiteID], [TaskDataType] ) VALUES ( @TaskNodeID, @TaskDocumentID, @TaskNodeAliasPath, @TaskTitle, @TaskTime, @TaskType, @TaskObjectType, @TaskObjectID, @TaskIsInbound, @TaskProcessType, @TaskData, @TaskSiteID, @TaskDataType); SELECT SCOPE_IDENTITY() AS [TaskID]', 1, 2885, 0, '20110713 18:16:05', '597dbb95-ed2f-4779-816f-0df021b9c2c1', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12992, N'update', 0, N'UPDATE Integration_Task SET [TaskNodeID] = @TaskNodeID, [TaskDocumentID] = @TaskDocumentID, [TaskNodeAliasPath] = @TaskNodeAliasPath, [TaskTitle] = @TaskTitle, [TaskTime] = @TaskTime, [TaskType] = @TaskType, [TaskObjectType] = @TaskObjectType, [TaskObjectID] = @TaskObjectID, [TaskIsInbound] = @TaskIsInbound, [TaskProcessType] = @TaskProcessType, [TaskData] = @TaskData, [TaskSiteID] = @TaskSiteID, [TaskDataType] = @TaskDataType WHERE [TaskID] = @TaskID', 0, 2885, 0, '20110713 18:16:22', 'c66f5666-fd56-4efd-9000-a2ca7755e1f0', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (1067, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_PageTemplate WHERE [PageTemplateID] = @ID', 0, 157, 0, '20110714 08:18:30', '33d4812b-37ac-44d6-a92f-523979150ff7', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (270, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_PageTemplate WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 157, 0, '20110714 08:18:30', '742d2043-ffe4-4712-8edd-31dbfb965ac6', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4854, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_PageTemplate WHERE (PageTemplateLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 157, 0, '20110714 08:18:30', '4a0d7bb0-529b-4c7b-8906-641d9a2ac28a', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12757, N'deleteall', 0, N'DELETE FROM CMS_PageTemplate WHERE ##WHERE##', 0, 157, 0, '20110714 08:18:30', 'a3ffa603-cb91-404e-a573-c189606e5bf3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12758, N'updateall', 0, N'UPDATE CMS_PageTemplate SET ##COLUMNS## WHERE ##WHERE##', 0, 157, 0, '20110714 08:18:31', 'fd982353-44a3-4e1b-aafb-e0be38352826', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13282, N'GetStatisticsBoundaries', 0, N'SELECT MIN(HitsStartTime) AS DateFrom, MAX (HitsStartTime) AS DateTo FROM Analytics_DayHits
WHERE ##WHERE##', 0, 1366, 0, '20110714 11:07:07', 'cf28fb86-bcc9-4610-b2d0-8afea9c96370', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (166, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_EmailTemplate WHERE [EmailTemplateID] = @ID', 0, 129, 0, '20110715 15:54:13', '4b1fbdaf-ebae-4314-beaa-360bb54e5fbd', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (163, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_EmailTemplate WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 129, 0, '20110715 15:54:13', 'eb70b20b-1e66-454e-ab08-0cb9a6db21a9', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4849, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_EmailTemplate WHERE (EmailTemplateLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 129, 0, '20110715 15:54:13', 'bcfb6d81-ade5-482f-91ca-a88fca4f7a88', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13293, N'deleteall', 0, N'DELETE FROM CMS_EmailTemplate WHERE ##WHERE##', 0, 129, 0, '20110715 15:54:13', '5f8ec877-3717-471e-b350-52191a28df84', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13294, N'updateall', 0, N'UPDATE CMS_EmailTemplate SET ##COLUMNS## WHERE ##WHERE##', 0, 129, 0, '20110715 15:54:13', 'b69dfeed-c859-4645-aae7-4245aab8f4be', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13299, N'addaccountcontacts', 1, N'Proc_OM_ContactGroupMember_UpdateMembersForAccount', 0, 2852, 0, '20110718 09:56:08', 'df4b15ee-7fc4-4d0e-9103-d565e17b42a1', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13303, N'selectcontactactivitylist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID WHERE ActivityActiveContactID=@ContactID
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2854, 0, '20110718 14:22:48', '0f66e765-2dd3-4d37-81fe-0a988b3ee1bd', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13309, N'deleteall', 0, N'DELETE FROM COM_Bundle WHERE ##WHERE##', 0, 2912, 0, '20110718 15:32:03', '84863990-0203-4e8d-9c1c-748200b46461', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13310, N'updateall', 0, N'UPDATE COM_Bundle SET ##COLUMNS## WHERE ##WHERE##', 0, 2912, 0, '20110718 15:32:03', '2a666cc3-8cc3-4bde-abfb-081a9dd5ae4e', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13304, N'select', 0, N'SELECT ##COLUMNS## FROM COM_Bundle WHERE [BundleID] = @BundleID AND [SKUID] = @SKUID', 0, 2912, 0, '20110718 15:32:11', '23044202-9883-41a2-b66b-6225eb91bcb3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13305, N'delete', 0, N'DELETE FROM COM_Bundle WHERE [BundleID] = @BundleID AND [SKUID] = @SKUID', 0, 2912, 0, '20110718 15:32:12', 'f063e282-8644-4dc6-ad00-8742fd7c751b', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13306, N'insert', 0, N'INSERT INTO COM_Bundle ([BundleID], [SKUID] ) VALUES ( @BundleID, @SKUID);', 1, 2912, 0, '20110718 15:32:14', 'bf9fba8f-3b59-420d-af55-eeab6dba5de3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13307, N'update', 0, N'SELECT NULL', 0, 2912, 0, '20110718 15:32:15', '407813ad-b3ba-40b8-bb99-254f811f9c3c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13308, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_Bundle WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2912, 0, '20110718 15:32:15', '7752f6ef-63a8-4a30-ba21-1da739c699a3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13276, N'processlog', 0, N'INSERT INTO OM_PageVisit ([PageVisitDetail], [PageVisitActivityID], [PageVisitABVariantName], [PageVisitMVTCombinationName] ) VALUES ( @PageVisitDetail, @PageVisitActivityID, @PageVisitABVariantName, @PageVisitMVTCombinationName); SELECT SCOPE_IDENTITY() AS [PageVisitID]', 0, 2858, 0, '20110718 19:44:27', 'b741ea2d-a4cf-4bcf-90a2-160f624abc05', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12906, N'selectpreviousnext', 0, N'DECLARE @list TABLE (ActivityID INT, RN INT);
INSERT INTO @list (ActivityID, RN) SELECT ActivityID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID
) as tab
WHERE ##WHERE##;
DECLARE @num INT; SET @num = (SELECT RN FROM @list WHERE ActivityID = @ActivityID);
SELECT ActivityID, RN, @num AS BASE_RN FROM @list WHERE RN IN (@num - 1, @num + 1)', 0, 2854, 0, '20110718 20:32:03', '749496a4-0915-4218-878c-9023f98bee50', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13314, N'selectpreviousnextcontact', 0, N'DECLARE @list TABLE (ActivityID INT, RN INT);
INSERT INTO @list (ActivityID, RN) SELECT ActivityID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID WHERE ActivityActiveContactID=@ContactID
) as tab
WHERE ##WHERE##;
DECLARE @num INT; SET @num = (SELECT RN FROM @list WHERE ActivityID = @ActivityID);
SELECT ActivityID, RN, @num AS BASE_RN FROM @list WHERE RN IN (@num - 1, @num + 1)', 0, 2854, 0, '20110718 20:39:19', 'd8f8fc9e-1761-426e-9642-89a1033269bd', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4872, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_Class WHERE [ClassID] = @ID', 0, 145, 0, '20110718 20:53:45', '2ebe42af-9f0b-4982-89eb-9f8b5cec7201', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4873, N'delete', 0, N'DELETE FROM CMS_Class WHERE [ClassID] = @ID', 0, 145, 0, '20110718 20:53:45', '1f52b047-4a72-4bfa-b4e1-571c1cf4f189', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4874, N'insert', 0, N'INSERT INTO CMS_Class ([ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType] ) VALUES ( @ClassDisplayName, @ClassName, @ClassUsesVersioning, @ClassIsDocumentType, @ClassIsCoupledClass, @ClassXmlSchema, @ClassFormDefinition, @ClassEditingPageUrl, @ClassListPageUrl, @ClassNodeNameSource, @ClassTableName, @ClassViewPageUrl, @ClassPreviewPageUrl, @ClassFormLayout, @ClassNewPageUrl, @ClassShowAsSystemTable, @ClassUsePublishFromTo, @ClassShowTemplateSelection, @ClassSKUMappings, @ClassIsMenuItemType, @ClassNodeAliasSource, @ClassDefaultPageTemplateID, @ClassLastModified, @ClassGUID, @ClassCreateSKU, @ClassIsProduct, @ClassIsCustomTable, @ClassShowColumns, @ClassLoadGeneration, @ClassSearchTitleColumn, @ClassSearchContentColumn, @ClassSearchImageColumn, @ClassSearchCreationDateColumn, @ClassSearchSettings, @ClassInheritsFromClassID, @ClassSearchEnabled, @ClassSKUDefaultDepartmentName, @ClassSKUDefaultDepartmentID, @ClassContactMapping, @ClassContactOverwriteEnabled, @ClassSKUDefaultProductType); SELECT SCOPE_IDENTITY() AS [ClassID]', 1, 145, 0, '20110718 20:53:45', '4ac2eeda-b7fd-43bf-906b-ae39970d0b33', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4875, N'update', 0, N'UPDATE CMS_Class SET [ClassDisplayName] = @ClassDisplayName, [ClassName] = @ClassName, [ClassUsesVersioning] = @ClassUsesVersioning, [ClassIsDocumentType] = @ClassIsDocumentType, [ClassIsCoupledClass] = @ClassIsCoupledClass, [ClassXmlSchema] = @ClassXmlSchema, [ClassFormDefinition] = @ClassFormDefinition, [ClassEditingPageUrl] = @ClassEditingPageUrl, [ClassListPageUrl] = @ClassListPageUrl, [ClassNodeNameSource] = @ClassNodeNameSource, [ClassTableName] = @ClassTableName, [ClassViewPageUrl] = @ClassViewPageUrl, [ClassPreviewPageUrl] = @ClassPreviewPageUrl, [ClassFormLayout] = @ClassFormLayout, [ClassNewPageUrl] = @ClassNewPageUrl, [ClassShowAsSystemTable] = @ClassShowAsSystemTable, [ClassUsePublishFromTo] = @ClassUsePublishFromTo, [ClassShowTemplateSelection] = @ClassShowTemplateSelection, [ClassSKUMappings] = @ClassSKUMappings, [ClassIsMenuItemType] = @ClassIsMenuItemType, [ClassNodeAliasSource] = @ClassNodeAliasSource, [ClassDefaultPageTemplateID] = @ClassDefaultPageTemplateID, [ClassLastModified] = @ClassLastModified, [ClassGUID] = @ClassGUID, [ClassCreateSKU] = @ClassCreateSKU, [ClassIsProduct] = @ClassIsProduct, [ClassIsCustomTable] = @ClassIsCustomTable, [ClassShowColumns] = @ClassShowColumns, [ClassLoadGeneration] = @ClassLoadGeneration, [ClassSearchTitleColumn] = @ClassSearchTitleColumn, [ClassSearchContentColumn] = @ClassSearchContentColumn, [ClassSearchImageColumn] = @ClassSearchImageColumn, [ClassSearchCreationDateColumn] = @ClassSearchCreationDateColumn, [ClassSearchSettings] = @ClassSearchSettings, [ClassInheritsFromClassID] = @ClassInheritsFromClassID, [ClassSearchEnabled] = @ClassSearchEnabled, [ClassSKUDefaultDepartmentName] = @ClassSKUDefaultDepartmentName, [ClassSKUDefaultDepartmentID] = @ClassSKUDefaultDepartmentID, [ClassContactMapping] = @ClassContactMapping, [ClassContactOverwriteEnabled] = @ClassContactOverwriteEnabled, [ClassSKUDefaultProductType] = @ClassSKUDefaultProductType WHERE [ClassID] = @ClassID', 0, 145, 0, '20110718 20:53:45', 'd8aeba7a-2647-4954-b8f0-ed713d36d6a3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (1104, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_Class WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 145, 0, '20110718 20:53:45', 'f5c4ca43-f136-432a-ba8a-26d6c977c75b', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4865, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_Class WHERE (ClassLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 145, 0, '20110718 20:53:45', '6c68afaa-6d7c-417a-9261-0d90e7eebcba', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (11931, N'deleteall', 0, N'DELETE FROM CMS_Class WHERE ##WHERE##', 0, 145, 0, '20110718 20:53:45', '2b920c31-3358-46dd-a350-6d1e58a17718', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (11932, N'updateall', 0, N'UPDATE CMS_Class SET ##COLUMNS## WHERE ##WHERE##', 0, 145, 0, '20110718 20:53:45', '6bb72650-be82-4887-a54d-90106662fc38', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13311, N'removeaccountcontacts', 1, N'Proc_OM_ContactGroupMember_RemoveAccountContacts', 0, 2852, 0, '20110718 21:05:01', 'acde2e0d-d917-42c8-a27d-d39dee5aa299', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13342, N'addcontactintoaccount', 1, N'Proc_OM_ContactGroupMember_AddContactIntoAccount', 0, 2852, 0, '20110718 22:08:43', 'e6c57f0b-126b-4857-8529-851ac99e6c06', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13343, N'removecontactsfromaccount', 1, N'Proc_OM_ContactGroupMember_RemoveContactsFromAccount', 0, 2852, 0, '20110719 00:12:44', '8a0a0f00-00da-4c3a-adb7-0bba8d976001', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (5786, N'select', 0, N'SELECT ##COLUMNS## FROM CONTENT_File WHERE [FileID] = @ID', 0, 1685, 0, '20110719 11:31:15', 'a7b1d286-1811-4277-af76-303c89384fab', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (5792, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CONTENT_File WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1685, 0, '20110719 11:31:15', '16a3e178-79fd-48ee-bec6-b69a13d0dd28', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (5791, N'selectdocuments', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CONTENT_File_Joined WHERE (##WHERE##) ORDER BY ##ORDERBY##', 0, 1685, 0, '20110719 11:31:15', '68839e1a-72b8-47c7-97b9-189b8825081a', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (5793, N'selectversions', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_Tree_Joined_Versions INNER JOIN CONTENT_File ON View_CMS_Tree_Joined_Versions.DocumentForeignKeyValue = CONTENT_File.[FileID] WHERE (##WHERE##) AND (ClassName = ''CMS.File'') ORDER BY ##ORDERBY##', 0, 1685, 0, '20110719 11:31:15', '06ef40cf-7561-4371-9861-3805c2f6036d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13344, N'RenameCampaignStatistics', 0, N'UPDATE Analytics_Statistics SET StatisticsCode = ''campconversion;''+@NewName 
WHERE StatisticsCode = ''campconversion;''+@OldName AND StatisticsSiteID = @SiteID
UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName 
WHERE StatisticsCode = ''campaign'' AND StatisticsObjectName = @OldName AND StatisticsSiteID = @SiteID', 0, 2890, 0, '20110719 13:23:48', '66b1cb13-d594-4326-a41e-9f6382594290', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13348, N'RenameABTestStatistics', 0, N'UPDATE Analytics_Statistics SET StatisticsCode = ''abconversion;''+@NewName + '';'' + SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  
WHERE StatisticsCode LIKE ''abconversion;''+ @OldName +'';%'' AND StatisticsSiteID = @SiteID', 0, 2491, 0, '20110719 13:54:52', 'a781fb52-81ea-4553-872a-62638425c738', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13349, N'RenameMVTestStatistics', 0, N'UPDATE Analytics_Statistics SET StatisticsCode = ''mvtconversion;''+@NewName + '';'' + SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@OldName+'';'')+1,LEN (StatisticsCode))
WHERE StatisticsCode LIKE ''mvtconversion;''+ @OldName +'';%'' AND StatisticsSiteID = @SiteID', 0, 2806, 0, '20110719 14:41:40', '0c4e8931-ab86-4a52-9225-2b5a32cfaef2', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13350, N'RenameConversionStatistics', 0, N'UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName WHERE StatisticsObjectName = @OldName AND StatisticsSiteID = @SiteID AND StatisticsCode = ''conversion''
UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName WHERE  StatisticsCode LIKE ''abconversion;%'' AND StatisticsSiteID = @SiteID AND StatisticsObjectName = @OldName
UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName WHERE  StatisticsCode LIKE ''mvtconversion;%'' AND StatisticsSiteID = @SiteID AND StatisticsObjectName = @OldName
UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName WHERE  StatisticsCode LIKE ''campconversion;%'' AND StatisticsSiteID = @SiteID AND StatisticsObjectName = @OldName', 0, 2889, 0, '20110719 15:39:22', '529a9c1a-e6ce-4005-b406-e9547c3c30e2', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13270, N'removedependencies', 0, N'UPDATE OM_Account SET AccountStatusID = NULL WHERE AccountStatusID = @ID;', 0, 2840, 0, '20110719 16:32:40', '2210c241-0e7c-44a0-a279-5a9253282849', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13301, N'selectcontactactivitymergedlist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityOriginalContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2854, 0, '20110719 19:09:18', '52fc0b3b-2b8a-458a-abbd-613720b58026', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13302, N'selectcontactactivitygloballist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren_Global(@ContactID, 1))
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2854, 0, '20110719 19:18:46', '835eab0d-e56c-409b-b23e-b2842c527fc0', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13316, N'selectpreviousnextglobalcontact', 0, N'DECLARE @list TABLE (ActivityID INT, RN INT);
INSERT INTO @list (ActivityID, RN) SELECT ActivityID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren_Global(@ContactID, 1))
) as tab
WHERE ##WHERE##;
DECLARE @num INT; SET @num = (SELECT RN FROM @list WHERE ActivityID = @ActivityID);
SELECT ActivityID, RN, @num AS BASE_RN FROM @list WHERE RN IN (@num - 1, @num + 1)', 0, 2854, 0, '20110719 19:20:44', '4d6fc417-d1a2-4b0d-932a-00f35ddb40a5', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13274, N'selectmergedactivitylist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityOriginalContactID = OM_Contact.ContactID
WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab
WHERE ##WHERE## ##ORDERBY##', 0, 2854, 0, '20110719 19:21:15', 'f307611f-e737-4bb2-836b-b360ba284ecd', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (6032, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_DocumentAlias LEFT JOIN Analytics_Campaign ON AliasCampaign = CampaignName
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1719, 0, '20110720 09:33:00', 'b9d9dee7-cc40-498c-bf8d-bb941afc1405', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13154, N'selectmembershiplist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(
SELECT OM_Contact.*, OM_Membership.*,
  ISNULL(OM_Contact.ContactFirstName, '''') + CASE OM_Contact.ContactFirstName WHEN '''' THEN '''' WHEN NULL
  THEN '''' ELSE '' '' END + ISNULL(OM_Contact.ContactMiddleName, '''') + CASE OM_Contact.ContactMiddleName WHEN '''' THEN '''' WHEN NULL
  THEN '''' ELSE '' '' END + ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined,
  ISNULL(OM_Contact.ContactAddress1, '''') + CASE OM_Contact.ContactAddress1 WHEN '''' THEN '''' WHEN NULL
  THEN '''' ELSE '' '' END + OM_Contact.ContactAddress2 AS ContactFullAddressJoined
FROM OM_Contact INNER JOIN OM_Membership ON OM_Membership.ActiveContactID=OM_Contact.ContactID
) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2841, 0, '20110721 12:07:13', 'd9b4c376-677c-46be-8f29-9499e71fa160', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13268, N'selectips', 0, N'SELECT ##TOPN## ##COLUMNS## FROM 
(SELECT IPAddress, IPID, IPActiveContactID, IPOriginalContactID, IPCreated, ContactSiteID,
       ContactID, ContactMergedWithContactID, ISNULL(ContactFirstName, '''') + CASE ContactFirstName WHEN '''' THEN '''' WHEN NULL 
       THEN '''' ELSE '' '' END + ISNULL(ContactMiddleName, '''') + CASE ContactMiddleName WHEN '''' THEN '''' WHEN NULL 
       THEN '''' ELSE '' '' END + ISNULL(ContactLastName, '''') AS ContactFullName
FROM OM_IP LEFT JOIN OM_Contact ON OM_IP.IPOriginalContactID = OM_Contact.ContactID WHERE IPActiveContactID=@ContactID
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2855, 0, '20110721 15:26:26', 'e4342746-fcbd-4b9f-a597-f59953baad86', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13354, N'checkdependencies', 0, N'SELECT TOP 1 OrderItemSKUFileID FROM COM_OrderItemSKUFile WHERE FileID = @ID', 1, 2910, 0, '20110721 16:39:20', '4c1209f0-2953-48f3-9763-cdaa70b69236', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13291, N'selectcustomers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, CustomerFirstName, CustomerLastName, CustomerEmail,
ContactMergedWithContactID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN COM_Customer ON OM_Membership.RelatedID=COM_Customer.CustomerID
WHERE ActiveContactID=@ContactID AND MemberType=1) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110721 16:52:50', 'd31e3523-f7a8-4bd3-b389-e59f05d19704', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13287, N'selectusers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, ContactMergedWithContactID,
CMS_User.FirstName, CMS_User.LastName, CMS_User.Email, CMS_User.UserName, OM_Contact.ContactSiteID, 
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN CMS_User ON OM_Membership.RelatedID=CMS_User.UserID
WHERE ActiveContactID=@ContactID AND MemberType=0
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110721 16:58:28', '70df014b-2fc8-4c03-99d1-6c803b87f353', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13289, N'selectsubscribers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, ContactMergedWithContactID,
SubscriberFirstName, SubscriberLastName, SubscriberEmail, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN Newsletter_Subscriber ON OM_Membership.RelatedID=Newsletter_Subscriber.SubscriberID
WHERE ActiveContactID=@ContactID AND MemberType=2) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110721 16:59:30', '83cd706e-032a-4592-a511-9fa3976f7319', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13355, N'removedependencies', 1, N'Proc_COM_OrderItem_RemoveDependencies', 1, 1161, 0, '20110721 17:00:21', '5b2ad551-c837-4f58-bad0-f9528b49378b', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13292, N'selectmergedips', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(SELECT IPID, IPActiveContactID, IPOriginalContactID, IPAddress, IPCreated, ContactSiteID, ContactMergedWithContactID,
       ContactID, ISNULL(ContactFirstName, '''') + CASE ContactFirstName WHEN '''' THEN '''' WHEN NULL
       THEN '''' ELSE '' '' END + ISNULL(ContactMiddleName, '''') + CASE ContactMiddleName WHEN '''' THEN '''' WHEN NULL
       THEN '''' ELSE '' '' END + ISNULL(ContactLastName, '''') AS ContactFullName
FROM OM_IP LEFT JOIN OM_Contact ON OM_IP.IPOriginalContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2855, 0, '20110721 17:42:01', '4775c521-83cb-47a2-af03-be3ec88810fa', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13298, N'selectglobalips', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(SELECT IPID, IPActiveContactID, IPOriginalContactID, IPAddress, IPCreated, ContactSiteID,
       ContactMergedWithContactID, ContactID, ISNULL(ContactFirstName, '''') + CASE ContactFirstName WHEN '''' THEN '''' WHEN NULL
       THEN '''' ELSE '' '' END + ISNULL(ContactMiddleName, '''') + CASE ContactMiddleName WHEN '''' THEN '''' WHEN NULL
       THEN '''' ELSE '' '' END + ISNULL(ContactLastName, '''') AS ContactFullName
FROM OM_IP LEFT JOIN OM_Contact ON OM_IP.IPOriginalContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren_Global(@ContactID, 1))
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2855, 0, '20110721 17:42:33', '9ae2b619-93f9-4cb6-902c-5f375f619ae0', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13297, N'selectglobalcustomers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, CustomerFirstName, CustomerLastName, CustomerEmail,
ContactMergedWithContactID, OM_Contact.ContactSiteID, ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN COM_Customer ON OM_Membership.RelatedID=COM_Customer.CustomerID
WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren_Global(@ContactID, 1)) AND MemberType=1) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110721 17:44:58', 'a837dbd3-bd0c-4769-bef6-9473761edc9c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13296, N'selectglobalsubscribers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, SubscriberFirstName, SubscriberLastName,
SubscriberEmail, ContactMergedWithContactID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN Newsletter_Subscriber ON OM_Membership.RelatedID=Newsletter_Subscriber.SubscriberID
WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren_Global(@ContactID,1)) AND MemberType=2) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110721 17:46:23', '973d4659-226f-4aa8-a3f8-d4678afc4183', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13286, N'selectmergedusers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID,ContactMergedWithContactID,
CMS_User.FirstName, CMS_User.LastName, CMS_User.Email, CMS_User.UserName, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN CMS_User ON OM_Membership.RelatedID=CMS_User.UserID
WHERE MemberType=0 AND OriginalContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID,1))) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110721 17:49:29', '7d002bbf-5fcd-49a0-ac49-7f2d798d52c6', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13288, N'selectmergedsubscribers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID,ContactMergedWithContactID,
SubscriberFirstName, SubscriberLastName, SubscriberEmail, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN Newsletter_Subscriber ON OM_Membership.RelatedID=Newsletter_Subscriber.SubscriberID
WHERE MemberType=2 AND OriginalContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110721 17:49:51', '2382b826-2981-4667-b02c-1d360a38c843', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13290, N'selectmergedcustomers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, ContactMergedWithContactID,
CustomerFirstName, CustomerLastName, CustomerEmail, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN COM_Customer ON OM_Membership.RelatedID=COM_Customer.CustomerID
WHERE MemberType=1 AND OriginalContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110721 17:50:11', '7f104d1a-79f2-413b-b08e-430ee224ebab', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12680, N'select', 0, N'SELECT ##COLUMNS## FROM OM_ContactGroupMember WHERE [ContactGroupMemberID] = @ID', 0, 2852, 0, '20110721 19:47:50', 'babfeda9-4719-49f2-96c8-55e5daca432d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12681, N'delete', 0, N'DELETE FROM OM_ContactGroupMember WHERE [ContactGroupMemberID] = @ID', 0, 2852, 0, '20110721 19:47:50', 'e3c077d2-56aa-4732-81c3-415e4e7beb2f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12682, N'insert', 0, N'INSERT INTO OM_ContactGroupMember ([ContactGroupMemberContactGroupID], [ContactGroupMemberType], [ContactGroupMemberRelatedID], [ContactGroupMemberFromCondition], [ContactGroupMemberFromAccount], [ContactGroupMemberFromManual] ) VALUES ( @ContactGroupMemberContactGroupID, @ContactGroupMemberType, @ContactGroupMemberRelatedID, @ContactGroupMemberFromCondition, @ContactGroupMemberFromAccount, @ContactGroupMemberFromManual); SELECT SCOPE_IDENTITY() AS [ContactGroupMemberID]', 1, 2852, 0, '20110721 19:47:50', '88dc78c2-e1c7-438d-8a84-2c0aec0b9367', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12683, N'update', 0, N'UPDATE OM_ContactGroupMember SET [ContactGroupMemberContactGroupID] = @ContactGroupMemberContactGroupID, [ContactGroupMemberType] = @ContactGroupMemberType, [ContactGroupMemberRelatedID] = @ContactGroupMemberRelatedID, [ContactGroupMemberFromCondition] = @ContactGroupMemberFromCondition, [ContactGroupMemberFromAccount] = @ContactGroupMemberFromAccount, [ContactGroupMemberFromManual] = @ContactGroupMemberFromManual WHERE [ContactGroupMemberID] = @ContactGroupMemberID', 0, 2852, 0, '20110721 19:47:50', '51cfe43f-7ed3-4096-8542-a57a058bff0b', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12684, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_ContactGroupMember WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2852, 0, '20110721 19:47:50', '90d7176b-dd84-47ee-bd60-9118ac269e42', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12685, N'deleteall', 0, N'DELETE FROM OM_ContactGroupMember WHERE ##WHERE##', 0, 2852, 0, '20110721 19:47:50', 'e93cbdc1-3bf2-4581-917e-fbef5b0b6050', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12686, N'updateall', 0, N'UPDATE OM_ContactGroupMember SET ##COLUMNS## WHERE ##WHERE##', 0, 2852, 0, '20110721 19:47:50', '210f02bd-c1ed-46c0-b732-cf794ea7d0b3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13356, N'updatelastlogon', 0, N'UPDATE OM_Contact SET [ContactLastLogon]=@timestamp WHERE ContactID=@ContactID', 0, 2841, 0, '20110722 14:16:22', 'c0b1a820-16b5-4903-9a95-110e34587550', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13358, N'deleteoldermajorversions', 0, N'DELETE FROM CMS_ObjectVersionHistory WHERE VersionModifiedWhen < (SELECT MIN(VersionModifiedWhen) FROM (SELECT ##TOPN## VersionModifiedWhen FROM CMS_ObjectVersionHistory WHERE VersionObjectType LIKE @ObjectType AND VersionObjectID = @ObjectID AND VersionNumber LIKE N''%.0'' ORDER BY VersionModifiedWhen DESC) sub) AND VersionObjectType LIKE @ObjectType AND VersionObjectID = @ObjectID', 0, 2828, 0, '20110726 13:25:21', '7495bd9c-76ae-42b6-a930-27ae98093240', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13359, N'deleteolderminorversions', 0, N'DELETE FROM CMS_ObjectVersionHistory WHERE VersionModifiedWhen < (SELECT MIN(VersionModifiedWhen) FROM (SELECT ##TOPN## VersionModifiedWhen FROM CMS_ObjectVersionHistory WHERE VersionObjectType LIKE @ObjectType AND VersionObjectID = @ObjectID AND VersionNumber NOT LIKE N''%.0'' ORDER BY VersionModifiedWhen DESC) sub) AND VersionObjectType LIKE @ObjectType AND VersionObjectID = @ObjectID AND VersionNumber NOT LIKE N''%.0''', 0, 2828, 0, '20110726 13:27:33', '6eaa76f7-9bf3-4f2e-8d67-5ba4f93f1a19', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13315, N'selectpreviousnextmergedcontact', 0, N'DECLARE @list TABLE (ActivityID INT, RN INT);
INSERT INTO @list (ActivityID, RN) SELECT ActivityID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityOriginalContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab
WHERE ##WHERE##;
DECLARE @num INT; SET @num = (SELECT RN FROM @list WHERE ActivityID = @ActivityID);
SELECT ActivityID, RN, @num AS BASE_RN FROM @list WHERE RN IN (@num - 1, @num + 1)', 0, 2854, 0, '20110726 16:52:18', 'bba2a660-78d9-4a06-8efe-55885184e2f9', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (1333, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM Newsletter_SubscriberNewsletter WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 912, 0, '20110727 10:05:41', 'd9c4a78f-83ab-468b-b058-fa75f7109cae', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13362, N'deleteall', 0, N'DELETE FROM Newsletter_SubscriberNewsletter WHERE ##WHERE##', 0, 912, 0, '20110727 10:05:41', 'bf75be89-d2ee-4aae-b987-d34bf6d087c2', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13363, N'updateall', 0, N'UPDATE Newsletter_SubscriberNewsletter SET ##COLUMNS## WHERE ##WHERE##', 0, 912, 0, '20110727 10:05:41', 'babd6655-8213-4d51-a063-3f33a46d7d11', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2185, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_WebFarmTask WHERE [TaskID] = @ID', 0, 1094, 0, '20110727 15:53:52', '2b2eee83-ab1f-4b1d-a35c-e11b1eda6a66', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2189, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_WebFarmTask WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1094, 0, '20110727 15:53:52', '4de1adf1-b1db-4be7-a9e0-42040a80c9fc', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13360, N'deleteall', 0, N'DELETE FROM CMS_WebFarmTask WHERE ##WHERE##', 0, 1094, 0, '20110727 15:53:52', '10491ea0-49e6-42cf-a9bc-78429c390b3d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13361, N'updateall', 0, N'UPDATE CMS_WebFarmTask SET ##COLUMNS## WHERE ##WHERE##', 0, 1094, 0, '20110727 15:53:52', '067e5130-e5ba-4413-8973-564023c1dba3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (7241, N'selectDocumentsCategories', 0, N'WITH AllData (CategoryID, CategoryDisplayName, CategoryName, CategoryCount, CategoryNamePath, CategoryIDPath, CategoryUserID, CategorySiteID, CategoryParentID)
AS
(
SELECT CMS_Category.CategoryID, CMS_Category.CategoryDisplayName, CMS_Category.CategoryName, count(DocumentID) as CategoryCount, CMS_Category.CategoryNamePath, CMS_Category.CategoryIDPath, CMS_Category.CategoryUserID, CMS_Category.CategorySiteID, CMS_Category.CategoryParentID
FROM CMS_Category INNER JOIN CMS_DocumentCategory ON CMS_Category.CategoryID = CMS_DocumentCategory.CategoryID WHERE (DocumentID IN (SELECT DocumentID FROM View_CMS_Tree_Joined WHERE ##WHERE## 
GROUP BY CMS_Category.CategoryID, CMS_Category.CategoryDisplayName, CMS_Category.CategoryName, CMS_Category.CategoryNamePath, CMS_Category.CategoryIDPath, CMS_Category.CategoryUserID, CMS_Category.CategorySiteID, CMS_Category.CategoryParentID
)
SELECT ##TOPN## CategoryID, CategoryDisplayName, CategoryName, CategoryCount, CategoryNamePath, CategoryIDPath, CategoryUserID, CategorySiteID, CategoryParentID 
FROM AllData AS cats
WHERE NOT EXISTS (SELECT CategoryID FROM AllData WHERE CategoryParentID = cats.CategoryID)
ORDER BY ##ORDERBY##', 0, 1721, 0, '20110728 15:18:03', '683ce131-02ae-4dce-b0bd-7706b04565bf', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2771, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_Order WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1158, 0, '20110729 12:29:27', '9efc68af-f0bf-43e5-bde2-54b915c5012e', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12761, N'deleteall', 0, N'DELETE FROM COM_Order WHERE ##WHERE##', 0, 1158, 0, '20110729 12:29:27', 'f9cbec40-793b-46a2-9d1d-830e5fce5e7c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12762, N'updateall', 0, N'UPDATE COM_Order SET ##COLUMNS## WHERE ##WHERE##', 0, 1158, 0, '20110729 12:29:27', '853222f6-1974-455c-88fb-397a7c7ad9b4', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13269, N'selectallwithdetails', 0, N'SELECT COM_OrderItemSKUFile.*, COM_SKUFile.FileName, COM_SKUFile.FilePath, COM_OrderItem.OrderItemSKUName, COM_OrderItem.OrderItemValidTo, COM_Order.OrderSiteID
FROM COM_OrderItemSKUFile
JOIN COM_SKUFile ON COM_SKUFile.FileID = COM_OrderItemSKUFile.FileID
JOIN COM_OrderItem ON COM_OrderItem.OrderItemID = COM_OrderItemSKUFile.OrderItemID
JOIN COM_Order ON COM_Order.OrderID = COM_OrderItem.OrderItemOrderID
WHERE (##WHERE##)
ORDER BY (##ORDERBY##)', 0, 2911, 0, '20110801 11:53:05', 'a805c371-de3f-40d6-97d8-e724b5fc867e', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13279, N'selectexpiring', 0, N'SELECT COM_OrderItem.*, COM_OrderItemSKUFile.Token, COM_SKUFile.FileName, COM_SKU.SKUProductType, COM_Order.OrderSiteID, COM_Customer.CustomerID, COM_Customer.CustomerEmail
FROM COM_OrderItem
JOIN COM_OrderItemSKUFile ON COM_OrderItemSKUFile.OrderItemID = COM_OrderItem.OrderItemID
JOIN COM_SKUFile ON COM_SKUFile.FileID = COM_OrderItemSKUFile.FileID
JOIN COM_SKU ON COM_SKU.SKUID = COM_OrderItem.OrderItemSKUID
JOIN COM_Order ON COM_Order.OrderID = COM_OrderItem.OrderItemOrderID
JOIN COM_Customer ON COM_Customer.CustomerID = COM_Order.OrderCustomerID
WHERE ((DATEDIFF(day, GETDATE(), COM_OrderItem.OrderItemValidTo) BETWEEN 0 AND @Days)
AND ((@OnlyWithSendNotification = 0) OR (COM_OrderItem.OrderItemSendNotification = 1))
AND ((@SiteID = 0) OR (COM_Order.OrderSiteID = @SiteID))
AND (##WHERE##))
ORDER BY (##ORDERBY##)', 0, 1161, 0, '20110801 17:40:31', '323d75ab-5bf1-4f9e-9c37-256417991334', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (1319, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_ScheduledTask WHERE [TaskID] = @ID', 0, 909, 0, '20110801 18:03:09', '715b22fb-012b-440c-a0a7-0bfcb759074f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (1323, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_ScheduledTask WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 909, 0, '20110801 18:03:10', 'c039fa12-1c65-4e3f-b726-1aaaad88334e', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4858, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_ScheduledTask WHERE (TaskLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 909, 0, '20110801 18:03:10', '63ca3fa5-6485-408a-b7d0-9edb8d64fa23', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13312, N'deleteall', 0, N'DELETE FROM CMS_ScheduledTask WHERE ##WHERE##', 0, 909, 0, '20110801 18:03:10', '80ecc0fb-af7a-4de6-a6a4-c6382a81be31', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13313, N'updateall', 0, N'UPDATE CMS_ScheduledTask SET ##COLUMNS## WHERE ##WHERE##', 0, 909, 0, '20110801 18:03:10', '75316be0-cf15-4a21-b7e0-234e319bef7b', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13248, N'selectexpiring', 0, N'SELECT CMS_MembershipUser.*, CMS_Membership.MembershipDisplayName, CMS_Membership.MembershipSiteID, CMS_User.Email
FROM CMS_MembershipUser
JOIN CMS_Membership ON CMS_Membership.MembershipID = CMS_MembershipUser.MembershipID
JOIN CMS_User ON CMS_User.UserID = CMS_MembershipUser.UserID
WHERE ((DATEDIFF(day, GETDATE(), CMS_MembershipUser.ValidTo) BETWEEN 0 AND @Days)
AND (ISNULL(CMS_Membership.MembershipSiteID, 0) = @SiteID)
AND ((@OnlyWithSendNotification = 0) OR (CMS_MembershipUser.SendNotification = 1))
AND (##WHERE##))
ORDER BY (##ORDERBY##)', 0, 2820, 0, '20110801 20:03:05', 'aa8ced47-9d9b-42fe-81ce-d4fc6c80382f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13175, N'removedependencies', 1, N'Proc_OM_ContactGroup_RemoveDependencies', 1, 2850, 0, '20110803 18:30:12', '9b0d30d4-df6a-4a3d-8c98-c2f0aae7ee2c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4772, N'selectrequiredusers', 0, N'SELECT * FROM CMS_User WHERE UserID IN (SELECT UserID FROM [View_CMS_UserRoleMembershipRole] 
WHERE (ValidTo IS NULL OR ValidTo > @Now) AND RoleID IN (SELECT RoleID FROM CMS_Role WHERE RoleID IN 
(SELECT RoleID FROM CMS_RolePermission WHERE PermissionID IN
(SELECT PermissionID FROM CMS_Permission WHERE PermissionName=@PermissionName AND ResourceID IN 
(SELECT ResourceID FROM CMS_Resource WHERE ResourceName=@ResourceName))) AND (SiteID=@SiteID OR SiteID IS NULL)))', 0, 134, 0, '20110810 10:04:02', '7b8e41c9-671c-48b4-92bc-445444c02f3c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (6255, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM Community_Group WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1748, 0, '20110811 09:35:37', 'bba4f02d-9a99-4ce5-867c-c72e18e55020', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13127, N'deleteall', 0, N'DELETE FROM Community_Group WHERE ##WHERE##', 0, 1748, 0, '20110811 09:35:37', '242beb27-33fd-4a5e-a896-7f2fb9284c3f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13128, N'updateall', 0, N'UPDATE Community_Group SET ##COLUMNS## WHERE ##WHERE##', 0, 1748, 0, '20110811 09:35:37', '38b04416-c13a-4975-a36a-b98e5e237bda', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2490, N'select', 0, N'SELECT ##COLUMNS## FROM cms_country WHERE [CountryID] = @ID', 0, 1125, 0, '20110811 13:58:56', '3d607dea-a137-436c-89c1-de8a973bb02a', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2494, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM cms_country WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1125, 0, '20110811 13:58:56', '37617c7e-ffed-4deb-b790-af6f665ca7b9', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4846, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM cms_country WHERE (CountryLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 1125, 0, '20110811 13:58:56', '25d7900e-cf75-406f-946b-c8db71aab1f1', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12140, N'deleteall', 0, N'DELETE FROM cms_country WHERE ##WHERE##', 0, 1125, 0, '20110811 13:58:56', 'd48651e5-cd69-41d1-b3e3-c072495406c3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12141, N'updateall', 0, N'UPDATE cms_country SET ##COLUMNS## WHERE ##WHERE##', 0, 1125, 0, '20110811 13:58:56', '8a7a54d4-f551-4588-a6bf-69152d08d029', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2510, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_State WHERE [StateID] = @ID', 0, 1126, 0, '20110811 13:59:08', '23cc3aca-6b95-4ae4-8260-bf1d0b55c3dc', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2514, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_State WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1126, 0, '20110811 13:59:08', 'a37c4095-1502-45e0-a325-61d799862876', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (7362, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_State WHERE (StateLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 1126, 0, '20110811 13:59:08', '27f64622-caa6-4b73-a6cb-7d35751a9c22', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12167, N'deleteall', 0, N'DELETE FROM CMS_State WHERE ##WHERE##', 0, 1126, 0, '20110811 13:59:08', '4dbbda68-3457-4895-a211-f300e9c9cfce', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12168, N'updateall', 0, N'UPDATE CMS_State SET ##COLUMNS## WHERE ##WHERE##', 0, 1126, 0, '20110811 13:59:08', '7cba2dee-6d93-4557-81a2-7dc3742914f0', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12959, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_SearchEngine WHERE [SearchEngineID] = @ID', 0, 2881, 0, '20110811 14:08:49', 'd4716414-6ef4-4757-8803-3b01d936f485', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12960, N'delete', 0, N'DELETE FROM CMS_SearchEngine WHERE [SearchEngineID] = @ID', 0, 2881, 0, '20110811 14:08:49', '7d2e1358-f5c3-4e27-95be-1f63c9bbfdeb', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12961, N'insert', 0, N'INSERT INTO CMS_SearchEngine ([SearchEngineDisplayName], [SearchEngineName], [SearchEngineDomainRule], [SearchEngineKeywordParameter], [SearchEngineGUID], [SearchEngineLastModified] ) VALUES ( @SearchEngineDisplayName, @SearchEngineName, @SearchEngineDomainRule, @SearchEngineKeywordParameter, @SearchEngineGUID, @SearchEngineLastModified); SELECT SCOPE_IDENTITY() AS [SearchEngineID]', 1, 2881, 0, '20110811 14:08:49', '3346477d-ea2c-4af7-a6fa-24a460abd53f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12962, N'update', 0, N'UPDATE CMS_SearchEngine SET [SearchEngineDisplayName] = @SearchEngineDisplayName, [SearchEngineName] = @SearchEngineName, [SearchEngineDomainRule] = @SearchEngineDomainRule, [SearchEngineKeywordParameter] = @SearchEngineKeywordParameter, [SearchEngineGUID] = @SearchEngineGUID, [SearchEngineLastModified] = @SearchEngineLastModified WHERE [SearchEngineID] = @SearchEngineID', 0, 2881, 0, '20110811 14:08:49', 'bab821ec-acf8-48ff-b6f8-ec440cf71a9e', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12963, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_SearchEngine WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2881, 0, '20110811 14:08:49', '5630f604-1121-4a20-95e8-1b3a7be7d76c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12966, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_SearchEngine WHERE (SearchEngineLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 2881, 0, '20110811 14:08:49', 'c5a91986-f9eb-479d-a9b3-cd73f41feca8', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12964, N'deleteall', 0, N'DELETE FROM CMS_SearchEngine WHERE ##WHERE##', 0, 2881, 0, '20110811 14:08:49', '9dc21070-d8a2-429a-8574-042019409ba5', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12965, N'updateall', 0, N'UPDATE CMS_SearchEngine SET ##COLUMNS## WHERE ##WHERE##', 0, 2881, 0, '20110811 14:08:49', '6d9284ca-1042-4fea-b326-eaae7881cb6b', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13016, N'select', 0, N'SELECT ##COLUMNS## FROM Analytics_Conversion WHERE [ConversionID] = @ID', 0, 2889, 0, '20110811 15:10:13', '16606572-e976-46a8-b2e0-579ead6b65b4', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13017, N'delete', 0, N'DELETE FROM Analytics_Conversion WHERE [ConversionID] = @ID', 0, 2889, 0, '20110811 15:10:13', 'f79edf9f-4613-4a86-a2c5-e7f029f88513', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13018, N'insert', 0, N'INSERT INTO Analytics_Conversion ([ConversionName], [ConversionDisplayName], [ConversionDescription], [ConversionGUID], [ConversionLastModified], [ConversionSiteID] ) VALUES ( @ConversionName, @ConversionDisplayName, @ConversionDescription, @ConversionGUID, @ConversionLastModified, @ConversionSiteID); SELECT SCOPE_IDENTITY() AS [ConversionID]', 1, 2889, 0, '20110811 15:10:13', '1014c08d-3c8e-4bc3-872c-b92704b05df3', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13019, N'update', 0, N'UPDATE Analytics_Conversion SET [ConversionName] = @ConversionName, [ConversionDisplayName] = @ConversionDisplayName, [ConversionDescription] = @ConversionDescription, [ConversionGUID] = @ConversionGUID, [ConversionLastModified] = @ConversionLastModified, [ConversionSiteID] = @ConversionSiteID WHERE [ConversionID] = @ConversionID', 0, 2889, 0, '20110811 15:10:13', 'f53b250f-182e-4c31-9385-1a23c6fd627c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13020, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM Analytics_Conversion WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2889, 0, '20110811 15:10:13', '60764070-ef76-45ec-92d1-6daf8dcdb156', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13037, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM Analytics_Conversion WHERE (ConversionLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 2889, 0, '20110811 15:10:13', '3568db1f-1553-4b37-a309-0b5d67bf171d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13021, N'deleteall', 0, N'DELETE FROM Analytics_Conversion WHERE ##WHERE##', 0, 2889, 0, '20110811 15:10:13', 'fc43b295-abbe-4750-a462-fd20f67100dc', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13022, N'updateall', 0, N'UPDATE Analytics_Conversion SET ##COLUMNS## WHERE ##WHERE##', 0, 2889, 0, '20110811 15:10:13', 'b801b0fc-e92f-4787-9cc7-9b2fe6db0100', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12619, N'select', 0, N'SELECT ##COLUMNS## FROM OM_AccountStatus WHERE [AccountStatusID] = @ID', 0, 2840, 0, '20110811 15:27:05', '6dc6f5b2-15b4-4f69-9dd7-87447a697059', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12620, N'delete', 0, N'DELETE FROM OM_AccountStatus WHERE [AccountStatusID] = @ID', 0, 2840, 0, '20110811 15:27:05', 'c15582e2-2b88-4bf7-bdaa-dcf284aea8c1', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12621, N'insert', 0, N'INSERT INTO OM_AccountStatus ([AccountStatusName], [AccountStatusDisplayName], [AccountStatusDescription], [AccountStatusSiteID] ) VALUES ( @AccountStatusName, @AccountStatusDisplayName, @AccountStatusDescription, @AccountStatusSiteID); SELECT SCOPE_IDENTITY() AS [AccountStatusID]', 1, 2840, 0, '20110811 15:27:05', '9a7d44ec-d2e4-4dfe-a3f3-e4851073bdc5', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12622, N'update', 0, N'UPDATE OM_AccountStatus SET [AccountStatusName] = @AccountStatusName, [AccountStatusDisplayName] = @AccountStatusDisplayName, [AccountStatusDescription] = @AccountStatusDescription, [AccountStatusSiteID] = @AccountStatusSiteID WHERE [AccountStatusID] = @AccountStatusID', 0, 2840, 0, '20110811 15:27:05', '90274063-16ae-4786-bd48-4896b548f41c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12623, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_AccountStatus WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2840, 0, '20110811 15:27:05', 'bb7bc683-1dbc-419e-843c-4829d79239ef', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12624, N'deleteall', 0, N'DELETE FROM OM_AccountStatus WHERE ##WHERE##', 0, 2840, 0, '20110811 15:27:05', '01a9d25f-3094-4cd8-8e27-bfae2a8e58f7', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12625, N'updateall', 0, N'UPDATE OM_AccountStatus SET ##COLUMNS## WHERE ##WHERE##', 0, 2840, 0, '20110811 15:27:05', '7a96eac0-ace5-4533-9f44-173e040f2dc5', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12640, N'select', 0, N'SELECT ##COLUMNS## FROM OM_ContactRole WHERE [ContactRoleID] = @ID', 0, 2844, 0, '20110811 17:49:25', 'f2dfa767-0b98-40e7-88cd-62a2ae3a7353', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12641, N'delete', 0, N'DELETE FROM OM_ContactRole WHERE [ContactRoleID] = @ID', 0, 2844, 0, '20110811 17:49:25', '975ffcc0-35e7-4614-9bd4-4029e890d636', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12642, N'insert', 0, N'INSERT INTO OM_ContactRole ([ContactRoleName], [ContactRoleDisplayName], [ContactRoleDescription], [ContactRoleSiteID] ) VALUES ( @ContactRoleName, @ContactRoleDisplayName, @ContactRoleDescription, @ContactRoleSiteID); SELECT SCOPE_IDENTITY() AS [ContactRoleID]', 1, 2844, 0, '20110811 17:49:25', '82bb6a88-18b6-4b93-8f36-8f477a815d62', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12643, N'update', 0, N'UPDATE OM_ContactRole SET [ContactRoleName] = @ContactRoleName, [ContactRoleDisplayName] = @ContactRoleDisplayName, [ContactRoleDescription] = @ContactRoleDescription, [ContactRoleSiteID] = @ContactRoleSiteID WHERE [ContactRoleID] = @ContactRoleID', 0, 2844, 0, '20110811 17:49:25', 'be8ee4fe-bff4-4110-be2d-037a4785d079', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12644, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_ContactRole WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2844, 0, '20110811 17:49:25', '8be45d8c-6f59-468d-9b71-23f34631567c', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12645, N'deleteall', 0, N'DELETE FROM OM_ContactRole WHERE ##WHERE##', 0, 2844, 0, '20110811 17:49:25', '53cfd9b7-bd64-4018-b2b1-e3ec34153c0a', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12646, N'updateall', 0, N'UPDATE OM_ContactRole SET ##COLUMNS## WHERE ##WHERE##', 0, 2844, 0, '20110811 17:49:25', 'e8a53f18-3775-4640-ad7e-d3399129d6bb', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12633, N'select', 0, N'SELECT ##COLUMNS## FROM OM_ContactStatus WHERE [ContactStatusID] = @ID', 0, 2843, 0, '20110811 17:50:09', 'bcc09164-df28-4561-9bcd-d2f8e9d235f6', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12634, N'delete', 0, N'DELETE FROM OM_ContactStatus WHERE [ContactStatusID] = @ID', 0, 2843, 0, '20110811 17:50:09', 'e8803c6e-8202-437f-b943-940044c875eb', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12635, N'insert', 0, N'INSERT INTO OM_ContactStatus ([ContactStatusName], [ContactStatusDisplayName], [ContactStatusDescription], [ContactStatusSiteID] ) VALUES ( @ContactStatusName, @ContactStatusDisplayName, @ContactStatusDescription, @ContactStatusSiteID); SELECT SCOPE_IDENTITY() AS [ContactStatusID]', 1, 2843, 0, '20110811 17:50:09', '27764175-ed96-406a-8048-783e39c5cbf9', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12636, N'update', 0, N'UPDATE OM_ContactStatus SET [ContactStatusName] = @ContactStatusName, [ContactStatusDisplayName] = @ContactStatusDisplayName, [ContactStatusDescription] = @ContactStatusDescription, [ContactStatusSiteID] = @ContactStatusSiteID WHERE [ContactStatusID] = @ContactStatusID', 0, 2843, 0, '20110811 17:50:09', '28538cbf-60b8-46cd-bf83-c48f7c3a331f', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12637, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_ContactStatus WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2843, 0, '20110811 17:50:09', 'b8b4e897-c558-4466-8f71-cf4b91d38b68', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12638, N'deleteall', 0, N'DELETE FROM OM_ContactStatus WHERE ##WHERE##', 0, 2843, 0, '20110811 17:50:09', '2fc1a987-9137-4f61-9e38-2fc5f5439462', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12639, N'updateall', 0, N'UPDATE OM_ContactStatus SET ##COLUMNS## WHERE ##WHERE##', 0, 2843, 0, '20110811 17:50:09', 'b318c954-9ddd-4113-ba5c-3605949d0263', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13409, N'initorders', 1, N'Proc_OM_PersonalizationVariant_InitOrders', 1, 2921, 0, '20110812 09:17:23', '3ec9d4ea-f3f6-4879-a016-5fd1a404c907', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13410, N'movedown', 1, N'Proc_OM_PersonalizationVariant_MoveDown', 1, 2921, 0, '20110812 09:17:44', '66b062a2-18eb-4ed9-8d60-5e508568734a', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13411, N'moveup', 1, N'Proc_OM_PersonalizationVariant_MoveUp', 1, 2921, 0, '20110812 09:18:03', 'fa87e9c2-5255-413d-b7a3-ecc0706f756d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (4770, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_ShoppingCartSKU WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1606, 0, '20110812 15:34:17', 'b0b9850c-a3aa-4243-8a1e-0031a6e8efdc', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12747, N'deleteall', 0, N'DELETE FROM COM_ShoppingCartSKU WHERE ##WHERE##', 0, 1606, 0, '20110812 15:34:17', 'b361403a-b4e3-499e-be7f-9c86861a41cd', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12748, N'updateall', 0, N'UPDATE COM_ShoppingCartSKU SET ##COLUMNS## WHERE ##WHERE##', 0, 1606, 0, '20110812 15:34:17', 'a58d0173-79ee-4479-85ae-3f08dbbe1df8', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2806, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_OrderItem WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1161, 0, '20110815 14:51:20', '33687b50-5f91-4c27-9895-1689c6cb4871', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12763, N'deleteall', 0, N'DELETE FROM COM_OrderItem WHERE ##WHERE##', 0, 1161, 0, '20110815 14:51:20', 'afd63eef-7ce8-41e6-af74-cc39a6b312bc', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12764, N'updateall', 0, N'UPDATE COM_OrderItem SET ##COLUMNS## WHERE ##WHERE##', 0, 1161, 0, '20110815 14:51:20', 'f1f1538b-78cb-469f-b60c-b5b0ac402468', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13295, N'selectglobalusers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID,ContactMergedWithContactID,
CMS_User.FirstName, CMS_User.LastName, CMS_User.Email, CMS_User.UserName, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName,'''') +
CASE OM_Contact.ContactFirstName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactMiddleName,'''') +
CASE OM_Contact.ContactMiddleName
  WHEN '''' THEN ''''
  WHEN NULL THEN ''''
  ELSE '' ''
END
+ ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
INNER JOIN CMS_User ON OM_Membership.RelatedID=CMS_User.UserID
WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren_Global(@ContactID,1)) AND MemberType=0
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20110816 10:32:04', 'ce287108-ef57-4710-b18d-533b93bd31ef', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (1318, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM Newsletter_Subscriber WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 908, 0, '20110816 10:35:35', '81c5dcd8-d4fe-4731-aaef-05e465e2ea8d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (11962, N'deleteall', 0, N'DELETE FROM Newsletter_Subscriber WHERE ##WHERE##', 0, 908, 0, '20110816 10:35:35', '83f07b45-3687-468e-85d2-00aef01d7fba', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (11963, N'updateall', 0, N'UPDATE Newsletter_Subscriber SET ##COLUMNS## WHERE ##WHERE##', 0, 908, 0, '20110816 10:35:35', '63535616-9932-4adb-8624-e208f0a2f454', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13428, N'fetchtask', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_Integration_Task_Joined WHERE (SynchronizationConnectorID=@SynchronizationConnectorID) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 2885, 0, '20110816 11:19:23', 'a9dbfb11-685c-4a07-b8d5-e91fe92eb284', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13005, N'insert', 0, N'INSERT INTO Integration_Synchronization ([SynchronizationTaskID], [SynchronizationConnectorID], [SynchronizationLastRun], [SynchronizationErrorMessage], [SynchronizationIsRunning] ) VALUES ( @SynchronizationTaskID, @SynchronizationConnectorID, @SynchronizationLastRun, @SynchronizationErrorMessage, @SynchronizationIsRunning); SELECT SCOPE_IDENTITY() AS [SynchronizationID]', 1, 2887, 0, '20110816 11:23:20', '198c1cf2-13ae-462d-ba06-abc92c7e3aa7', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13006, N'update', 0, N'UPDATE Integration_Synchronization SET [SynchronizationTaskID] = @SynchronizationTaskID, [SynchronizationConnectorID] = @SynchronizationConnectorID, [SynchronizationLastRun] = @SynchronizationLastRun, [SynchronizationErrorMessage] = @SynchronizationErrorMessage, [SynchronizationIsRunning] = @SynchronizationIsRunning WHERE [SynchronizationID] = @SynchronizationID', 0, 2887, 0, '20110816 11:23:46', 'c5c91502-e07b-4079-af27-a8fb755347b8', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2777, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_SKU WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1159, 0, '20110816 13:07:10', '2f6ea2c4-96c4-4ed1-bd7e-6079e2d2b902', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12487, N'deleteall', 0, N'DELETE FROM COM_SKU WHERE ##WHERE##', 0, 1159, 0, '20110816 13:07:10', 'a358e997-fb15-4365-8756-824fecb14a44', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12488, N'updateall', 0, N'UPDATE COM_SKU SET ##COLUMNS## WHERE ##WHERE##', 0, 1159, 0, '20110816 13:07:10', '959feb28-33d3-491e-8bd9-289bf2b1f9f0', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12673, N'select', 0, N'SELECT ##COLUMNS## FROM OM_ContactGroup WHERE [ContactGroupID] = @ID', 0, 2850, 0, '20110816 18:28:40', 'b667bbf4-8b72-49e5-9d22-483a6070b93d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12674, N'delete', 0, N'DELETE FROM OM_ContactGroup WHERE [ContactGroupID] = @ID', 0, 2850, 0, '20110816 18:28:40', '300a782a-61f9-42ed-92d0-104e5fca3dd2', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12675, N'insert', 0, N'INSERT INTO OM_ContactGroup ([ContactGroupName], [ContactGroupDisplayName], [ContactGroupDescription], [ContactGroupSiteID], [ContactGroupDynamicCondition], [ContactGroupScheduledTaskID], [ContactGroupEnabled], [ContactGroupLastModified], [ContactGroupGUID], [ContactGroupStatus] ) VALUES ( @ContactGroupName, @ContactGroupDisplayName, @ContactGroupDescription, @ContactGroupSiteID, @ContactGroupDynamicCondition, @ContactGroupScheduledTaskID, @ContactGroupEnabled, @ContactGroupLastModified, @ContactGroupGUID, @ContactGroupStatus); SELECT SCOPE_IDENTITY() AS [ContactGroupID]', 1, 2850, 0, '20110816 18:28:40', 'ecdce538-1257-4859-a92e-e66eb87cde69', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12676, N'update', 0, N'UPDATE OM_ContactGroup SET [ContactGroupName] = @ContactGroupName, [ContactGroupDisplayName] = @ContactGroupDisplayName, [ContactGroupDescription] = @ContactGroupDescription, [ContactGroupSiteID] = @ContactGroupSiteID, [ContactGroupDynamicCondition] = @ContactGroupDynamicCondition, [ContactGroupScheduledTaskID] = @ContactGroupScheduledTaskID, [ContactGroupEnabled] = @ContactGroupEnabled, [ContactGroupLastModified] = @ContactGroupLastModified, [ContactGroupGUID] = @ContactGroupGUID, [ContactGroupStatus] = @ContactGroupStatus WHERE [ContactGroupID] = @ContactGroupID', 0, 2850, 0, '20110816 18:28:40', '7e75ab10-acaa-4df3-9032-cdf180dd20b6', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12677, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_ContactGroup WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2850, 0, '20110816 18:28:40', '0f939786-eb2f-4346-aee2-6df5a74e1b05', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13379, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_ContactGroup WHERE (ContactGroupLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 2850, 0, '20110816 18:28:40', '2ee79098-73f9-4bef-a026-b908bab79487', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12678, N'deleteall', 0, N'DELETE FROM OM_ContactGroup WHERE ##WHERE##', 0, 2850, 0, '20110816 18:28:40', '70b1f74a-8e83-446d-9087-1004e1a53c38', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12679, N'updateall', 0, N'UPDATE OM_ContactGroup SET ##COLUMNS## WHERE ##WHERE##', 0, 2850, 0, '20110816 18:28:40', '681286cd-641d-4d4f-af8a-6e9e06b11f71', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13444, N'select', 0, N'SELECT ##COLUMNS## FROM OM_Score WHERE [ScoreID] = @ID', 0, 2940, 0, '20110816 18:41:16', 'f986c5ac-fd58-42e6-a668-3d5fcad15008', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13445, N'delete', 0, N'DELETE FROM OM_Score WHERE [ScoreID] = @ID', 0, 2940, 0, '20110816 18:41:16', '0e80131f-60b1-434a-a798-91a2b112d41d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13446, N'insert', 0, N'INSERT INTO OM_Score ([ScoreName], [ScoreDisplayName], [ScoreDescription], [ScoreSiteID], [ScoreEnabled], [ScoreEmailAtScore], [ScoreNotificationEmail], [ScoreLastModified], [ScoreGUID], [ScoreStatus], [ScoreScheduledTaskID] ) VALUES ( @ScoreName, @ScoreDisplayName, @ScoreDescription, @ScoreSiteID, @ScoreEnabled, @ScoreEmailAtScore, @ScoreNotificationEmail, @ScoreLastModified, @ScoreGUID, @ScoreStatus, @ScoreScheduledTaskID); SELECT SCOPE_IDENTITY() AS [ScoreID]', 1, 2940, 0, '20110816 18:41:16', '791516c1-c4be-43fa-9874-f0fa84278956', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13447, N'update', 0, N'UPDATE OM_Score SET [ScoreName] = @ScoreName, [ScoreDisplayName] = @ScoreDisplayName, [ScoreDescription] = @ScoreDescription, [ScoreSiteID] = @ScoreSiteID, [ScoreEnabled] = @ScoreEnabled, [ScoreEmailAtScore] = @ScoreEmailAtScore, [ScoreNotificationEmail] = @ScoreNotificationEmail, [ScoreLastModified] = @ScoreLastModified, [ScoreGUID] = @ScoreGUID, [ScoreStatus] = @ScoreStatus, [ScoreScheduledTaskID] = @ScoreScheduledTaskID WHERE [ScoreID] = @ScoreID', 0, 2940, 0, '20110816 18:41:16', 'db77e0b2-c1e4-48f8-b7f9-a03ea57bd87e', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13448, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_Score WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2940, 0, '20110816 18:41:16', 'c05611b8-6bda-4bf6-8730-5285c47fc661', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13449, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_Score WHERE (ContactGroupLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 2940, 0, '20110816 18:41:16', '9c7f00e5-b8b4-4c54-ae51-d3fb68cd23e7', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13450, N'deleteall', 0, N'DELETE FROM OM_Score WHERE ##WHERE##', 0, 2940, 0, '20110816 18:41:16', '26fc04a2-c4f3-4886-ad57-e74e5b2f8ccc', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13451, N'updateall', 0, N'UPDATE OM_Score SET ##COLUMNS## WHERE ##WHERE##', 0, 2940, 0, '20110816 18:41:16', '2a20b8bd-0ceb-4e2a-bb8b-04a4ba085a44', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13472, N'recalculate', 1, N'Proc_OM_Score_UpdateContactScore', 0, 2940, 0, '20110818 08:45:48', '1a42a18a-62c2-437a-a2f2-221f666b2938', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13473, N'deletescorecontactrule', 0, N'DELETE FROM OM_ScoreContactRule WHERE ##WHERE##', 0, 2940, 0, '20110818 09:23:17', '55431bde-d0f6-4f78-af50-77eda104e583', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12334, N'select', 0, N'SELECT ##COLUMNS## FROM CMS_SMTPServer WHERE [ServerID] = @ID', 0, 2804, 0, '20110818 14:29:55', '5ecadbb8-f7ff-4284-b187-44f314956ff0', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12335, N'delete', 0, N'DELETE FROM CMS_SMTPServer WHERE [ServerID] = @ID', 0, 2804, 0, '20110818 14:29:55', '36bce06c-f0fa-45d2-b026-f16fd37f043d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12336, N'insert', 0, N'INSERT INTO CMS_SMTPServer ([ServerName], [ServerUserName], [ServerPassword], [ServerUseSSL], [ServerEnabled], [ServerIsGlobal], [ServerGUID], [ServerLastModified], [ServerPriority] ) VALUES ( @ServerName, @ServerUserName, @ServerPassword, @ServerUseSSL, @ServerEnabled, @ServerIsGlobal, @ServerGUID, @ServerLastModified, @ServerPriority); SELECT SCOPE_IDENTITY() AS [ServerID]', 1, 2804, 0, '20110818 14:29:55', 'cb00dd0b-6768-48f4-aa1c-f61f6bdc765d', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12337, N'update', 0, N'UPDATE CMS_SMTPServer SET [ServerName] = @ServerName, [ServerUserName] = @ServerUserName, [ServerPassword] = @ServerPassword, [ServerUseSSL] = @ServerUseSSL, [ServerEnabled] = @ServerEnabled, [ServerIsGlobal] = @ServerIsGlobal, [ServerGUID] = @ServerGUID, [ServerLastModified] = @ServerLastModified, [ServerPriority] = @ServerPriority WHERE [ServerID] = @ServerID', 0, 2804, 0, '20110818 14:29:55', '764ed62e-b287-4027-810c-92dd17fb30d8', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12338, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_SMTPServer WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2804, 0, '20110818 14:29:55', '708b3db4-4314-46c0-b569-55fcc1a43648', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12402, N'selectmodifiedfrom', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_SMTPServer WHERE (ServerLastModified >= @ModifiedFrom) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 2804, 0, '20110818 14:29:55', '35089ede-7481-40e3-8957-855e82701f35', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12339, N'deleteall', 0, N'DELETE FROM CMS_SMTPServer WHERE ##WHERE##', 0, 2804, 0, '20110818 14:29:55', '00eb86e5-d2a0-453a-af92-4cddb8fdd92e', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12340, N'updateall', 0, N'UPDATE CMS_SMTPServer SET ##COLUMNS## WHERE ##WHERE##', 0, 2804, 0, '20110818 14:29:55', '7a797d08-f281-4834-a17d-6a2cca07af82', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13489, N'removedependencies', 1, N'Proc_OM_Rule_RemoveDependencies', 0, 2920, 0, '20110818 18:16:35', 'cc428fa3-cc3d-4dfd-8f6f-f7ea697473f9', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13481, N'removedependencies', 1, N'Proc_OM_Score_RemoveDependencies', 1, 2940, 0, '20110818 19:46:45', 'c633e63f-6b05-4d5e-b3cb-1d62746f4815', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12744, N'SelectMembershipUserRoles', 0, N'SELECT ##TOPN## DISTINCT Y.RoleID,Y.RoleName,Y.SiteID,Y.UserID,Y.ValidTo,Y.RoleGroupID FROM
(
   SELECT DISTINCT  * FROM
   (
     SELECT CMS_Role.RoleID,CMS_Role.RoleName,CMS_Role.SiteID,CMS_UserRole.UserID,CMS_UserRole.ValidTo,CMS_Role.RoleGroupID,''user'' AS ''RoleType'' FROM CMS_Role
     INNER JOIN CMS_UserRole ON CMS_UserRole.RoleID = CMS_Role.RoleID  
     UNION ALL 
     SELECT CMS_Role.RoleID,CMS_Role.RoleName,CMS_Role.SiteID,CMS_MembershipUser.UserID,CMS_MembershipUser.ValidTo,CMS_Role.RoleGroupID,''membership'' AS ''RoleType'' FROM CMS_Role
     INNER JOIN CMS_MembershipRole ON CMS_MembershipRole.RoleID = CMS_Role.RoleID
     INNER JOIN CMS_MembershipUser ON CMS_MembershipUser.MembershipID= CMS_MembershipRole.MembershipID
     UNION ALL
     SELECT CMS_Role.RoleID,CMS_Role.RoleName,CMS_Role.SiteID,@UserID,NULL,CMS_Role.RoleGroupID,''user'' AS ''RoleType'' FROM CMS_Role  WHERE RoleName IN (##GENERICROLES##) 
   ) AS  X 
  WHERE ##WHERE## AND X.UserID = @UserID) 
  AS Y 
 ORDER BY ##ORDERBY##', 0, 59, 0, '20110823 18:19:36', '14d2e080-c4e9-4eb0-8a21-99f22668c592', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (2663, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_PaymentOption WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1144, 0, '20110823 20:50:00', '3324ea5e-d6e4-45a3-8091-0084e84d3504', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13530, N'deleteall', 0, N'DELETE FROM COM_PaymentOption WHERE ##WHERE##', 0, 1144, 0, '20110823 20:50:00', '732b7e1d-4729-4edb-a7f5-597433d89a73', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (13531, N'updateall', 0, N'UPDATE COM_PaymentOption SET ##COLUMNS## WHERE ##WHERE##', 0, 1144, 0, '20110823 20:50:00', '1038aa1d-8116-4533-83fb-d05f97d43781', 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom]) VALUES (12612, N'select', 0, N'SELECT ##COLUMNS## FROM OM_Account WHERE [AccountID] = @ID', 0, 2837, 0, '20110824 09:28:14', '470ba3c1-1adf-438a-88af-aa0946cc9b65', 0, NULL)
SET IDENTITY_INSERT [CMS_Query] OFF
