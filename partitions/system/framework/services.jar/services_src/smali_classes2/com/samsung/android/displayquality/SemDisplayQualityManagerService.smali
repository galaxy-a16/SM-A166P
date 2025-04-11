.class public Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;
.super Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;
.source "SemDisplayQualityManagerService.java"


# instance fields
.field public final DEBUG:Z

.field public displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

.field public final mContext:Landroid/content/Context;

.field public final mEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPlatform:Ljava/lang/String;

.field public final mSupportAdaptiveSync:Z

.field public final mSupportOutdoor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;-><init>()V

    .line 14
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->DEBUG:Z

    .line 16
    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mEnabled:Z

    .line 17
    sget-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mPlatform:Ljava/lang/String;

    .line 18
    sget-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->OUTDOOR_VISIBILITY_SUPPORT:Z

    iput-boolean v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportOutdoor:Z

    .line 19
    sget-boolean v2, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportAdaptiveSync:Z

    const/4 v3, 0x0

    .line 21
    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    .line 22
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mContext:Landroid/content/Context;

    .line 27
    new-instance v3, Lcom/samsung/android/displayquality/SemDisplayQuality;

    invoke-direct {v3, p1}, Lcom/samsung/android/displayquality/SemDisplayQuality;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "platform:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " outdoor:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " adaptiveSync:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemDisplayQualityManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public enhanceDisplayOutdoorVisibilityByLux(I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportOutdoor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->enhanceOutdoorVisibilityByLux(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "SemDisplayQualityManagerService"

    const-string v1, "enhanceOutdoorVisibilityByLux"

    .line 41
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :goto_0
    monitor-exit v0

    return-void

    .line 36
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setAdaptiveSync(Z)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportAdaptiveSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->setAdaptiveSync(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "SemDisplayQualityManagerService"

    const-string/jumbo v1, "setAdaptiveSync"

    .line 55
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_0
    monitor-exit v0

    return-void

    .line 50
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
