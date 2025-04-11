.class public Lcom/android/server/om/wallpapertheme/MetaDataManager;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mPackageList:Ljava/util/ArrayList;

.field public mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

.field public mUidMap:Ljava/util/HashMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPackageList(Lcom/android/server/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWT_MetaDataManager"

    .line 27
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    .line 30
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "- METADATA -"

    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [PKG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    invoke-static {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->-$$Nest$fgetmUidList(Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  -UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmUidValue(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", REF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmValueRef(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", OPA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmOpacity(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", TYP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmType(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    res : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmDestAttribName(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getPackageList()Ljava/util/ArrayList;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRefUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;

    if-nez p0, :cond_1

    return-object v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getReference()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method public loadStaticMetadata(Landroid/content/Context;)V
    .locals 7

    .line 40
    new-instance v0, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;-><init>(Lcom/android/server/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;)V

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    .line 43
    sget-object v0, Landroid/content/om/WallpaperThemeConstants;->RES_METADATA_LIST:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 45
    :try_start_0
    new-instance v4, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-direct {v4, p0, v3, v5}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;-><init>(Lcom/android/server/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 47
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load static metadatas error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    .line 52
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    .line 53
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;

    .line 54
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load static metadatas, uidMap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removePackageList(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 124
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "null packageName"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 128
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    .line 130
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method public final removeUidMap(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public update(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 12

    const-string/jumbo v0, "theming-meta"

    .line 62
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->removePackageList(Ljava/lang/String;)V

    .line 64
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 65
    invoke-static {p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->getPackageResources(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "] replaced by "

    const-string/jumbo v6, "metadata rpUID ["

    if-eqz v4, :cond_3

    .line 70
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v0, ",|\\s"

    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v7, v0, v4

    const-string/jumbo v8, "xml"

    .line 73
    invoke-virtual {v3, v7, v8, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 75
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 76
    new-instance v8, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    iget-object v9, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-direct {v8, p0, v7, v9}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;-><init>(Lcom/android/server/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;)V

    .line 77
    invoke-virtual {v8}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->getRpUID()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-virtual {p0, v7}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->removeUidMap(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v8}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->getCurrentPackage()Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    move-result-object v8

    .line 80
    invoke-virtual {v8}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;

    .line 81
    iget-object v10, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 83
    :cond_1
    iget-object v8, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :cond_2
    iget-object v8, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "metadata file not found in res/xml : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 91
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 92
    new-instance v2, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;-><init>(Lcom/android/server/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;)V

    .line 93
    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->getRpUID()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->removeUidMap(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$MetaData;->getCurrentPackage()Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;

    .line 97
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 99
    :cond_4
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 103
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " metadata update error = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method
