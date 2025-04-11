.class public Lcom/android/server/om/wallpapertheme/OverlayGenerator;
.super Ljava/lang/Object;
.source "OverlayGenerator.java"


# instance fields
.field public mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

.field public mTemplateManager:Lcom/android/server/om/wallpapertheme/TemplateManager;

.field public mThemePalette:Lcom/android/server/om/wallpapertheme/ThemePalette;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/MetaDataManager;Lcom/android/server/om/wallpapertheme/TemplateManager;Lcom/android/server/om/wallpapertheme/ThemePalette;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    .line 26
    iput-object p2, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mTemplateManager:Lcom/android/server/om/wallpapertheme/TemplateManager;

    .line 27
    iput-object p3, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mThemePalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    return-void
.end method


# virtual methods
.method public createMonetOverlay()Ljava/util/ArrayList;
    .locals 11

    .line 122
    new-instance v0, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v1, "SemWT_MonetPalette"

    const-string v2, "android"

    invoke-direct {v0, v2, v1, v2}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v3, "SemWT_G_MonetPalette"

    invoke-direct {v1, v2, v3, v2}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_5

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 130
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "accent"

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x2

    .line 133
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "neutral"

    :goto_1
    move v6, v2

    :goto_2
    const/16 v7, 0xd

    if-ge v6, v7, :cond_4

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android:color/system_"

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x5f

    .line 141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_3

    const/4 v8, 0x1

    if-eq v6, v8, :cond_2

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v6, -0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v8, "50"

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v8, "10"

    .line 148
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v8, "0"

    .line 145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 158
    iget-object v8, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mThemePalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(II)I

    move-result v8

    const/16 v9, 0x1c

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v9, v8, v10}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 159
    iget-object v8, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mThemePalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(II)I

    move-result v8

    invoke-virtual {v1, v7, v9, v8, v10}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_5
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    .line 166
    invoke-virtual {v3}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multi window"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 167
    invoke-virtual {v3}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v3

    .line 169
    invoke-virtual {p0, v3, v0}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeResources(Ljava/util/List;Landroid/content/om/FabricatedOverlay;)V

    .line 170
    invoke-virtual {p0, v3, v1}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeResources(Ljava/util/List;Landroid/content/om/FabricatedOverlay;)V

    goto :goto_4

    .line 174
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    filled-new-array {v0, v1}, [Landroid/content/om/FabricatedOverlay;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final createOverlayForPkg(Ljava/lang/String;Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;)Landroid/content/om/FabricatedOverlay;
    .locals 3

    .line 51
    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance v1, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v2, "android"

    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p1, p2}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object p1

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeResources(Ljava/util/List;Landroid/content/om/FabricatedOverlay;)V

    return-object p1
.end method

.method public createThemeOverlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

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

    .line 42
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createOverlayForPkg(Ljava/lang/String;Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;)Landroid/content/om/FabricatedOverlay;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public createThemeOverlays(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;

    .line 34
    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SESL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Multi window"

    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createOverlayForPkg(Ljava/lang/String;Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;)Landroid/content/om/FabricatedOverlay;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final writeResources(Ljava/util/List;Landroid/content/om/FabricatedOverlay;)V
    .locals 11

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getDestAttribName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ","

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getType()I

    move-result v3

    const-string/jumbo v4, "night"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v7, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_2

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mTemplateManager:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-virtual {v0, v1}, Lcom/android/server/om/wallpapertheme/TemplateManager;->getBooleans(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    array-length v1, v2

    move v3, v6

    :goto_1
    if-ge v3, v1, :cond_0

    aget-object v8, v2, v3

    .line 91
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bool/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/16 v10, 0x12

    invoke-virtual {p2, v8, v10, v9, v5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 94
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p2, v8, v10, v9, v4}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mTemplateManager:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-virtual {v0, v1}, Lcom/android/server/om/wallpapertheme/TemplateManager;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    array-length v1, v2

    :goto_2
    if-ge v6, v1, :cond_0

    aget-object v3, v2, v6

    .line 102
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "integer/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p2, v3, v4, v7, v5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 69
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getOpacity()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x64

    if-eqz v1, :cond_5

    .line 70
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v3

    .line 72
    :goto_3
    iget-object v8, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mTemplateManager:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/om/wallpapertheme/TemplateManager;->getColors(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v1, v3, :cond_6

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    .line 76
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_6
    array-length v1, v2

    move v3, v6

    :goto_4
    if-ge v3, v1, :cond_0

    aget-object v8, v2, v3

    .line 80
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "color/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x1c

    invoke-virtual {p2, v8, v10, v9, v5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 83
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p2, v8, v10, v9, v4}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method
