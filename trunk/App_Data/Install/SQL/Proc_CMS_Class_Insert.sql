CREATE PROCEDURE [Proc_CMS_Class_Insert]
@ClassID int = NULL,
    @ClassDisplayName nvarchar(100),
    @ClassName nvarchar(100),
    @ClassUsesVersioning bit,
    @ClassIsDocumentType bit,
    @ClassIsCoupledClass bit,
    @ClassXmlSchema ntext,
    @ClassFormDefinition ntext,
    @ClassNewPageUrl nvarchar(100),
    @ClassEditingPageUrl nvarchar(100),
    @ClassListPageUrl nvarchar(100),
    @ClassNodeNameSource nvarchar(100),
    @ClassTableName nvarchar(100),
    @ClassViewPageUrl nvarchar(450),
    @ClassPreviewPageUrl nvarchar(450),
    @ClassFormLayout ntext,
    @ClassShowAsSystemTable bit,
    @ClassUsePublishFromTo bit,
    @ClassShowTemplateSelection bit,
    @ClassSKUMappings nvarchar(500),
    @ClassIsMenuItemType bit,
    @ClassNodeAliasSource nvarchar(100),
    @ClassDefaultPageTemplateID int,    
    @ClassSKUDefaultDepartmentID int,
    @ClassSKUDefaultDepartmentName nvarchar(200),
    @ClassLastModified datetime,
    @ClassGUID uniqueidentifier,
    @ClassCreateSKU int,
    @ClassIsProduct bit,    
    @ClassIsCustomTable bit,
    @ClassShowColumns nvarchar(1000),
    @ClassLoadGeneration int,
	@ClassSearchTitleColumn nvarchar(200),
	@ClassSearchContentColumn nvarchar(200),
	@ClassSearchImageColumn nvarchar(200),
    @ClassSearchCreationDateColumn nvarchar(200),
    @ClassSearchSettings ntext,
    @ClassInheritsFromClassID int,
    @ClassSearchEnabled bit,
    @ClassContactMapping ntext,
    @ClassContactOverwriteEnabled bit,
    @ClassSKUDefaultProductType nvarchar(50)
AS
BEGIN
INSERT INTO [CMS_Class] (
    [ClassDisplayName],
    [ClassName],
    [ClassUsesVersioning],
    [ClassIsDocumentType],
    [ClassIsCoupledClass],
    [ClassXmlSchema],
    [ClassFormDefinition],
    [ClassNewPageUrl],
    [ClassEditingPageUrl],
    [ClassListPageUrl],
    [ClassNodeNameSource],    
    [ClassTableName],
    [ClassViewPageUrl],
    [ClassPreviewPageUrl],
    [ClassFormLayout],
    [ClassShowAsSystemTable],
    [ClassUsePublishFromTo],
    [ClassShowTemplateSelection],
    [ClassSKUMappings],
    [ClassIsMenuItemType],
    [ClassNodeAliasSource],
    [ClassDefaultPageTemplateID],    
    [ClassSKUDefaultDepartmentID],
    [ClassSKUDefaultDepartmentName],
    [ClassLastModified],
    [ClassGUID],
    [ClassCreateSKU],
    [ClassIsProduct],    
    [ClassIsCustomTable],
    [ClassShowColumns],
    [ClassLoadGeneration],
  [ClassSearchTitleColumn],
  [ClassSearchContentColumn],
  [ClassSearchImageColumn],
    [ClassSearchCreationDateColumn],
    [ClassSearchSettings],
    [ClassInheritsFromClassID],
    [ClassSearchEnabled],
    [ClassContactMapping],
    [ClassContactOverwriteEnabled],
    [ClassSKUDefaultProductType]
)
VALUES (
    @ClassDisplayName, 
    @ClassName, 
    @ClassUsesVersioning, 
    @ClassIsDocumentType, 
    @ClassIsCoupledClass, 
    @ClassXmlSchema, 
    @ClassFormDefinition, 
    @ClassNewPageUrl, 
    @ClassEditingPageUrl, 
    @ClassListPageUrl, 
    @ClassNodeNameSource, 
    @ClassTableName,
    @ClassViewPageUrl,
    @ClassPreviewPageUrl,
    @ClassFormLayout,
    @ClassShowAsSystemTable,
    @ClassUsePublishFromTo,
    @ClassShowTemplateSelection,
    @ClassSKUMappings,
    @ClassIsMenuItemType,
    @ClassNodeAliasSource,
    @ClassDefaultPageTemplateID,    
    @ClassSKUDefaultDepartmentID,
    @ClassSKUDefaultDepartmentName,
    @ClassLastModified,
    @ClassGUID,
    @ClassCreateSKU,
    @ClassIsProduct,    
    @ClassIsCustomTable,
    @ClassShowColumns,
    @ClassLoadGeneration,
  @ClassSearchTitleColumn,
  @ClassSearchContentColumn,
  @ClassSearchImageColumn,
    @ClassSearchCreationDateColumn,
    @ClassSearchSettings,
    @ClassInheritsFromClassID,
    @ClassSearchEnabled,
    @ClassContactMapping,
    @ClassContactOverwriteEnabled,
    @ClassSKUDefaultProductType
)
SELECT SCOPE_IDENTITY()
END
