.class public Lcom/android/server/chimera/SettingRepositoryDefault;
.super Ljava/lang/Object;
.source "SettingRepositoryDefault.java"

# interfaces
.implements Lcom/android/server/chimera/SettingRepository;


# instance fields
.field public mDefaultCachedMax:I

.field public mIsAppCacheReclaimEnable:Z

.field public mIsAppsIdleKillEnable:Z

.field public mIsConservativeMode:Z

.field public mIsCustomMode:Z

.field public mIsDefaultConservativeMode:Z

.field public mIsDynamicTargetFreeEnabled:Z

.field public mIsFastMadviseEnable:Z

.field public mIsGcEnable:Z

.field public mIsNativeProcessesIdleKillEnable:Z

.field public mIsPSITrackerEnable:Z

.field public mIsReclaimPageCacheEnable:Z

.field public mLastCachedMax:I

.field public mQuickReclaimEnable:Z

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mQuickReclaimEnable:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsAppsIdleKillEnable:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsNativeProcessesIdleKillEnable:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsPSITrackerEnable:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsAppCacheReclaimEnable:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsFastMadviseEnable:Z

    .line 43
    iput v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mDefaultCachedMax:I

    .line 44
    iput v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    .line 14
    iput-object p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "ro.slmk.dha_cached_max"

    const-string v1, "16"

    .line 16
    invoke-interface {p1, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mDefaultCachedMax:I

    iput p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    .line 17
    iget-object p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "ro.slmk.use_bg_keeping_policy"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsDefaultConservativeMode:Z

    return-void
.end method


# virtual methods
.method public enableAppCacheReclaim(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsAppCacheReclaimEnable:Z

    return-void
.end method

.method public enableAppsIdleKill(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsAppsIdleKillEnable:Z

    return-void
.end method

.method public enableConservativeMode(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    return-void
.end method

.method public enableCustomMode(ZZ)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "false"

    const-string/jumbo v2, "persist.config.chimera.enable"

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    aget-object v0, v0, v1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "true,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "CC"

    goto :goto_0

    :cond_0
    const-string p2, "CA"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/android/server/chimera/SystemRepository;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1, v2, v1}, Lcom/android/server/chimera/SystemRepository;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/chimera/SettingRepositoryDefault;->initialize()V

    :cond_2
    return-void
.end method

.method public enableDynamicTargetFree(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsDynamicTargetFreeEnabled:Z

    return-void
.end method

.method public enableGc(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    return-void
.end method

.method public enableNativeProcessesIdleKill(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsNativeProcessesIdleKillEnable:Z

    return-void
.end method

.method public enableQuickReclaim(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mQuickReclaimEnable:Z

    return-void
.end method

.method public enableReclaimPageCache(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    return-void
.end method

.method public initialize()V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "persist.config.chimera.enable"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsCustomMode:Z

    .line 51
    iget-boolean v2, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsDefaultConservativeMode:Z

    iput-boolean v2, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/server/chimera/SettingRepositoryDefault;->isProcCachesReclaimExist()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsAppCacheReclaimEnable:Z

    .line 53
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FAST_MADVISE_ENABLED:Z

    iput-boolean v2, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsFastMadviseEnable:Z

    const-string v2, ","

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-boolean v2, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 58
    iget-object v3, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v4, "com.samsung.android.memoryguardian"

    invoke-interface {v3, v4}, Lcom/android/server/chimera/SystemRepository;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 62
    :cond_0
    iget v3, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mDefaultCachedMax:I

    .line 64
    aget-object v4, v0, v1

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    array-length v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    .line 65
    aget-object v0, v0, v6

    const-string v4, "CC"

    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    iput-boolean v6, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 69
    iput-boolean v6, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsCustomMode:Z

    .line 71
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    int-to-double v0, v3

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v3

    double-to-int v0, v0

    move v3, v0

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v3, 0x2

    :goto_0
    const/16 v0, 0x30

    if-le v3, v0, :cond_3

    move v3, v0

    goto :goto_1

    :cond_2
    const-string v4, "CA"

    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 82
    iput-boolean v6, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsCustomMode:Z

    .line 86
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    if-eq v2, v0, :cond_8

    .line 87
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    if-eq v1, v3, :cond_5

    const-string/jumbo v1, "ro.slmk.dha_cached_max"

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iput v3, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    .line 95
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    if-eq v2, v1, :cond_7

    if-eqz v1, :cond_6

    const-string v1, "1"

    goto :goto_2

    :cond_6
    const-string v1, "0"

    :goto_2
    const-string/jumbo v2, "ro.slmk.use_bg_keeping_policy"

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :cond_7
    iget-object v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v1, v0}, Lcom/android/server/chimera/SystemRepository;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "ro.slmk.psitracker_enable"

    invoke-interface {v0, v1, v5}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsPSITrackerEnable:Z

    return-void
.end method

.method public isAppCacheReclaimEnable()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsAppCacheReclaimEnable:Z

    return p0
.end method

.method public isAppsIdleKillEnabled()Z
    .locals 0

    .line 182
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsAppsIdleKillEnable:Z

    return p0
.end method

.method public isConservativeDefault()Z
    .locals 2

    .line 167
    iget-object p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "ro.slmk.use_bg_keeping_policy"

    const-string v1, "false"

    invoke-interface {p0, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isConservativeMode()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    return p0
.end method

.method public isCustomMode()Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsCustomMode:Z

    return p0
.end method

.method public isDynamicTargetFreeEnabled()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsDynamicTargetFreeEnabled:Z

    return p0
.end method

.method public isFastMadviseEnable()Z
    .locals 0

    .line 228
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsFastMadviseEnable:Z

    return p0
.end method

.method public isGcEnabled()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    return p0
.end method

.method public isNativeProcessesIdleKillEnabled()Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsNativeProcessesIdleKillEnable:Z

    return p0
.end method

.method public isPSITrackerEnabled()Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsPSITrackerEnable:Z

    return p0
.end method

.method public isProcCachesReclaimExist()Z
    .locals 1

    .line 222
    new-instance p0, Ljava/io/File;

    const-string v0, "/proc/proc_caches_reclaim"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isQuickReclaimEnable()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mQuickReclaimEnable:Z

    return p0
.end method

.method public isReclaimPageCacheEnabled()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    return p0
.end method
