CREATE PROCEDURE [Proc_CMS_Class_Update]
@ClassID int,
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
    @ClassSKUMappings nvarchar(450),
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
UPDATE [CMS_Class] 
SET 
    ClassDisplayName = @ClassDisplayName,
    ClassName = @ClassName,
    ClassUsesVersioning = ClassUsesVersioning,
    ClassIsDocumentType = @ClassIsDocumentType,
    ClassIsCoupledClass = @ClassIsCoupledClass,
    ClassXmlSchema = @ClassXmlSchema,
    ClassFormDefinition = @ClassFormDefinition,
    ClassNewPageUrl = @ClassNewPageUrl,
    ClassEditingPageUrl = @ClassEditingPageUrl,
    ClassListPageUrl = @ClassListPageUrl,
    ClassNodeNameSource = @ClassNodeNameSource,
    ClassTableName = @ClassTableName,
    ClassViewPageUrl = @ClassViewPageUrl,
    ClassPreviewPageUrl = @ClassPreviewPageUrl,
    ClassFormLayout = @ClassFormLayout,
    ClassShowAsSystemTable = @ClassShowAsSystemTable,
    ClassUsePublishFromTo = @ClassUsePublishFromTo,
    ClassShowTemplateSelection = @ClassShowTemplateSelection,
    ClassSKUMappings = @ClassSKUMappings,
    ClassIsMenuItemType = @ClassIsMenuItemType,
    ClassNodeAliasSource = @ClassNodeAliasSource,
    ClassDefaultPageTemplateID = @ClassDefaultPageTemplateID, 
    ClassSKUDefaultDepartmentID = @ClassSKUDefaultDepartmentID,
    ClassSKUDefaultDepartmentName = @ClassSKUDefaultDepartmentName,
    ClassLastModified = @ClassLastModified,
    ClassGUID = @ClassGUID,
    ClassCreateSKU = @ClassCreateSKU,
    ClassIsProduct = @ClassIsProduct,
    ClassIsCustomTable = @ClassIsCustomTable,
    ClassShowColumns = @ClassShowColumns,
    ClassLoadGeneration = @ClassLoadGeneration,
    ClassSearchTitleColumn = @ClassSearchTitleColumn,
    ClassSearchContentColumn = @ClassSearchContentColumn,
    ClassSearchImageColumn = @ClassSearchImageColumn,
    ClassSearchCreationDateColumn = @ClassSearchCreationDateColumn,
    ClassSearchSettings = @ClassSearchSettings,
    ClassInheritsFromClassID = @ClassInheritsFromClassID,
    ClassSearchEnabled = @ClassSearchEnabled,
    ClassContactMapping = @ClassContactMapping,
    ClassContactOverwriteEnabled = @ClassContactOverwriteEnabled,
    ClassSKUDefaultProductType = @ClassSKUDefaultProductType
WHERE
    ClassID = @ClassID
END
