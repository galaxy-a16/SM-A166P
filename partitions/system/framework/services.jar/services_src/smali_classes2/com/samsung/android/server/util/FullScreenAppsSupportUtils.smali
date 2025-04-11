.class public Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;
.super Ljava/lang/Object;
.source "FullScreenAppsSupportUtils.java"


# instance fields
.field public mCached:Z

.field public mCachedDisplayMaxAspectRatio:F

.field public mCachedDisplayMaxAspectRatioWithCutout:F

.field public mCachedFullScreenAppsSupportMode:I

.field public final mDefaultFullScreenList:Ljava/util/List;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mWindowManager:Landroid/view/IWindowManager;

    .line 72
    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/util/FullScreenAppsSupportUtils-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;
    .locals 1

    .line 55
    sget-object v0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils$LazyHolder;->sUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    return-object v0
.end method


# virtual methods
.method public containsInDefaultFullScreenList(Ljava/lang/String;)Z
    .locals 1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getCachedDisplayMaxAspectRatio(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 146
    iget p0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedDisplayMaxAspectRatioWithCutout:F

    return p0

    .line 148
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedDisplayMaxAspectRatio:F

    return p0
.end method

.method public getDisplayMaxAspectRatio(Z)F
    .locals 1

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->getCachedDisplayMaxAspectRatio(Z)F

    move-result p1

    monitor-exit p0

    return p1

    .line 137
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->updateCachedInfo()V

    .line 139
    monitor-enter p0

    .line 140
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->getCachedDisplayMaxAspectRatio(Z)F

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 137
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getFullScreenAppsSupportMode()I
    .locals 1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    if-eqz v0, :cond_0

    .line 118
    iget v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedFullScreenAppsSupportMode:I

    monitor-exit p0

    return v0

    .line 120
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->updateCachedInfo()V

    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    iget v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedFullScreenAppsSupportMode:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 124
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 120
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public invalidateCache()V
    .locals 1

    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    .line 83
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsDisplayCutout()Z
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->getFullScreenAppsSupportMode()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportsMaxAspectRatio()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->getFullScreenAppsSupportMode()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateCachedInfo()V
    .locals 12

    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_0

    .line 161
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_0

    const-string p0, "FullScreenAppsSupportUtils"

    const-string v0, "DisplayManagerInternal is null."

    .line 163
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 172
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds(Z)[I

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v5, v4

    :goto_0
    if-ge v6, v3, :cond_6

    aget v8, v1, v6

    .line 173
    iget-object v9, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9, v8, v0}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 175
    iget v8, v0, Landroid/view/DisplayInfo;->type:I

    if-eq v8, v2, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    iget v8, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 180
    iget v9, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 181
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    cmpg-float v11, v4, v10

    if-gez v11, :cond_2

    move v4, v10

    .line 185
    :cond_2
    iget-object v11, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    or-int/lit8 v7, v7, 0x2

    .line 188
    iget-object v10, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v10}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v10

    iget-object v11, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 189
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v8, v10

    .line 190
    iget-object v10, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v10}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v10

    iget-object v11, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 191
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    .line 192
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v10, v8

    :cond_3
    const v8, 0x3fee147b    # 1.86f

    cmpl-float v8, v10, v8

    if-lez v8, :cond_4

    or-int/lit8 v7, v7, 0x1

    :cond_4
    cmpg-float v8, v5, v10

    if-gez v8, :cond_5

    move v5, v10

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 203
    :cond_6
    monitor-enter p0

    .line 204
    :try_start_0
    iput v7, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedFullScreenAppsSupportMode:I

    .line 205
    iput v5, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedDisplayMaxAspectRatio:F

    .line 206
    iput v4, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedDisplayMaxAspectRatioWithCutout:F

    .line 207
    iput-boolean v2, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "FullScreenAppsSupportUtils"

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullScreenAppsSupportMode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DisplayMaxAspectRatio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", DisplayMaxAspectRatioWithCutout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 208
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
