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

    invoke-direct {p0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;-><init>()V

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

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mEnabled:Z

    sget-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mPlatform:Ljava/lang/String;

    sget-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->OUTDOOR_VISIBILITY_SUPPORT:Z

    iput-boolean v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportOutdoor:Z

    sget-boolean v2, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportAdaptiveSync:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/displayquality/SemDisplayQuality;

    invoke-direct {v3, p1}, Lcom/samsung/android/displayquality/SemDisplayQuality;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

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

    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportOutdoor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_1

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

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setAdaptiveSync(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportAdaptiveSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_1

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

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
