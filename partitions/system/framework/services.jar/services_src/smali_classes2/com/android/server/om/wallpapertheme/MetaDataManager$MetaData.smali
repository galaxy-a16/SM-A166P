.class public Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# instance fields
.field public ATTR_DEFAULT_VALUE:Ljava/lang/String;

.field public ATTR_DEST_ATTR_NAME:Ljava/lang/String;

.field public ATTR_NAME:Ljava/lang/String;

.field public ATTR_OPACITY:Ljava/lang/String;

.field public ATTR_P_OPTION:Ljava/lang/String;

.field public ATTR_TARGET_PKG_NAME:Ljava/lang/String;

.field public ATTR_UID:Ljava/lang/String;

.field public ATTR_VALUE_REF:Ljava/lang/String;

.field public ATTR_VALUE_TYPE:Ljava/lang/String;

.field public TAG:Ljava/lang/String;

.field public TAG_APP_METADATA:Ljava/lang/String;

.field public TAG_INCLUDE:Ljava/lang/String;

.field public TAG_PROPERTY:Ljava/lang/String;

.field public mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

.field public mRpUID:Ljava/lang/String;

.field public mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

.field public final synthetic this$0:Lcom/android/server/om/wallpapertheme/MetaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "SWT_MetaData"

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->TAG:Ljava/lang/String;

    const-string v0, "Include"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->TAG_INCLUDE:Ljava/lang/String;

    const-string v0, "AppMetaData"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->TAG_APP_METADATA:Ljava/lang/String;

    const-string v0, "Property"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->TAG_PROPERTY:Ljava/lang/String;

    const-string v0, "UID"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_UID:Ljava/lang/String;

    const-string v0, "ValueType"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_VALUE_TYPE:Ljava/lang/String;

    const-string v0, "DestAttribName"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_DEST_ATTR_NAME:Ljava/lang/String;

    const-string v0, "DefaultValue"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_DEFAULT_VALUE:Ljava/lang/String;

    const-string v0, "POption"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_P_OPTION:Ljava/lang/String;

    const-string v0, "ValueRef"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_VALUE_REF:Ljava/lang/String;

    const-string v0, "Opacity"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_OPACITY:Ljava/lang/String;

    const-string v0, "Name"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_NAME:Ljava/lang/String;

    const-string v0, "TargetPackageName"

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_TARGET_PKG_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    if-nez p2, :cond_0

    const-string p0, "creating metadata is failed - xmlParser is null"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final addSeslMetaData()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-static {p0}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Lcom/android/server/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addUID(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_UID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_VALUE_TYPE:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_DEST_ATTR_NAME:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_DEFAULT_VALUE:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_P_OPTION:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_VALUE_REF:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_OPACITY:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parsing xml error, uid is empty. destAttributeName : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v1, p1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->addUid(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)V

    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public getCurrentPackage()Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    return-object p0
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;
    .locals 3

    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-static {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Lcom/android/server/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    invoke-direct {v0, p1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-static {p0}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Lcom/android/server/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRpUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    return-object p0
.end method

.method public final parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->TAG_APP_METADATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->ATTR_TARGET_PKG_NAME:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Multi window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->getPackage(Ljava/lang/String;)Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->getPackage(Ljava/lang/String;)Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->TAG_PROPERTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->addUID(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->TAG_INCLUDE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->addSeslMetaData()V

    :cond_3
    :goto_0
    return-void
.end method
