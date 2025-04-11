.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# static fields
.field public static AUFAllowBucketSize:I = 0x0

.field public static App_StartUp_History:Z = false

.field public static ENABLE_KILL_LONG_RUNNING_PROCESS:Z = false

.field public static FGS_BATTERY_USAGE_THRESHOLD:I = 0x0

.field public static GlobalModelWithChinaSIM:Z = false

.field public static final MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

.field public static MARs_ENABLE:Z = false

.field public static final SERIAL_NO:Ljava/lang/String;

.field public static final SMART_MANAGER_PKG_NAME:Ljava/lang/String;

.field public static isChinaModel:Z


# instance fields
.field public final BUB_ONOFF:Ljava/lang/String;

.field public ENABLE_RESTRICTED_BUCKET:Z

.field public KEEP_NO_FILTER_MIN_DURATION:J

.field public THRESHOLD_POWER_USAGE:D

.field public THRESHOLD_POWER_USAGE_BACKUP:D

.field public appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public isTimeChangedForDebug:Z

.field public mAllPoliciesOn:I

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mAutoDeepSleepTimeForDebug:J

.field public mAutoDisabledLockingTime:J

.field public final mBackupExpirationUptimeMap:Ljava/util/HashMap;

.field public mCalibrationResetTime:J

.field public mCarModeOn:Z

.field public mContext:Landroid/content/Context;

.field public mContextPackageName:Ljava/lang/String;

.field public mCurrentUserId:I

.field public mDetectBadBehaviorInterval:J

.field public mDetectBadBehaviorUnfreezedCount:I

.field public mDualAppEnabled:Z

.field public mDualAppUserId:I

.field public mEnabledProfileUserIds:[I

.field public final mFGServiceStartTimeMap:Ljava/util/HashMap;

.field public mFirstTimeUpdatePackages:Z

.field public mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

.field public mInitDisabledPackage:Z

.field public mIsDeviceIdleMode:Z

.field public mIsLastNotiSentTimeForDisabledDismiss:Z

.field public mIsManualMode:Z

.field public mIsOLAFEnabled:Z

.field public mLastNotiSentTimeForDisabled:J

.field public mLastPkgName:Ljava/lang/String;

.field public mLastTriggerTime:J

.field public mLastUid:I

.field public mLastUpdateTime:J

.field public mLockingTimeChanged:Z

.field public mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

.field public mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

.field public mManagedProfileEnabled:Z

.field public mNMs:Landroid/os/INetworkManagementService;

.field public mNeedtoDisablePackages:Ljava/util/ArrayList;

.field public mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

.field public final mScpmList:Ljava/util/HashSet;

.field public mScreenOn:Z

.field public mUnusedLockingTime:J

.field public mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 159
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager$Lock;-><init>(Lcom/android/server/am/MARsPolicyManager$Lock-IA;)V

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    const-string/jumbo v0, "sys.config.mars_auf_bucket"

    const-string v1, "0"

    .line 185
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    const-string/jumbo v0, "ro.serialno"

    const-string/jumbo v1, "none"

    .line 189
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->SERIAL_NO:Ljava/lang/String;

    const/4 v0, 0x1

    .line 192
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    const/4 v0, 0x0

    .line 612
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 615
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 618
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    const/16 v0, 0x64

    .line 5785
    sput v0, Lcom/android/server/am/MARsPolicyManager;->FGS_BATTERY_USAGE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const/4 v1, 0x0

    .line 143
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    const/16 v2, -0xa

    .line 147
    iput v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    const-wide/16 v2, 0x0

    .line 148
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    new-array v4, v0, [I

    .line 155
    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    const-wide/32 v4, 0xdbba0

    .line 157
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    const/4 v4, 0x2

    .line 158
    iput v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorUnfreezedCount:I

    .line 176
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 177
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 180
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    const/4 v4, 0x1

    .line 188
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    const-wide/32 v5, 0x5265c00

    .line 191
    iput-wide v5, p0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    .line 467
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 468
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 469
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z

    .line 616
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsOLAFEnabled:Z

    .line 617
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 687
    iput v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 688
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 1203
    new-instance v4, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v4}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1206
    new-instance v4, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v4}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1754
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    const-wide/32 v4, 0xf731400

    .line 1755
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    const-wide/32 v6, 0x5265c000

    .line 1756
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    .line 1757
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 1758
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v4, v6

    .line 1759
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1764
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 1765
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    .line 1767
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 1768
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 4185
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4186
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4187
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4188
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4189
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4190
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4191
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4192
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4194
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string v1, "1"

    .line 5627
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->BUB_ONOFF:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MARsPolicyManager;
    .locals 1

    .line 201
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public static isIntentProhibited(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 2540
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.android.game.gos"

    .line 2541
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSpecialProviderName(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, ".CapsuleProvider"

    .line 970
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".WalletSettingsProvider"

    .line 971
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "spay.common.share"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static onSpecialProviderActions(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.bixby.agent"

    .line 977
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 978
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string v0, ".CapsuleProvider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    const-string p1, "com.samsung.android.samsungpass"

    .line 979
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 980
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string p1, "com.samsung.android.spay"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3522
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    const-string v1, "]\n"

    const-string v2, "] "

    const-string v3, "["

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3529
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    if-eqz v0, :cond_2

    .line 3530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3534
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->put(Ljava/lang/String;)V

    goto :goto_1

    .line 3523
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3525
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3526
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3527
    invoke-static {}, Lcom/android/server/am/mars/MARsHistoryBuffer;->getInstance()Lcom/android/server/am/mars/MARsHistoryBuffer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/MARsHistoryBuffer;->put(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public addNetDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 3449
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    if-eqz v0, :cond_0

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3454
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->put(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addRestrictListAvoidAssoicationLaunch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 4647
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4648
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4650
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    const/4 v1, 0x3

    .line 4651
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4652
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4653
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 4656
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4657
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 4656
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public addRestrictListForCalmMode(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 4600
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4601
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4603
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    const/16 v1, 0x8

    .line 4604
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4606
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4607
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 4610
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "EXE"

    .line 4611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 4610
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final appRestrictionInfoToString(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)Ljava/lang/String;
    .locals 4

    .line 4999
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5000
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NSLP"

    .line 5008
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "DIS-C"

    .line 5006
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, "SLP"

    .line 5002
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v0, "DIS"

    .line 5004
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5011
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, " OFF"

    .line 5015
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string p1, " ON"

    .line 5013
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string p1, " NONE"

    .line 5017
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5019
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final awakePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10

    .line 5423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5426
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5427
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5428
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v6

    .line 5429
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5430
    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 5432
    :cond_0
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 5433
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 5436
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1

    .line 5437
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 5439
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    :cond_2
    const/16 v4, 0x100

    .line 5440
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 5441
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v9}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 5443
    :cond_3
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 5444
    invoke-virtual {v5, p2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5445
    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5446
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5448
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 5449
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 5450
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "1"

    goto :goto_1

    :cond_4
    const-string v8, "0"

    :goto_1
    invoke-virtual {v6, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 5451
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5452
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5453
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5454
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5455
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5456
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5457
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    .line 5458
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5459
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5462
    :cond_6
    :goto_3
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5464
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5465
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_9
    return-object v2
.end method

.method public final callRestrictAppForAllPkgs()V
    .locals 9

    .line 773
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_0

    .line 774
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 779
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 780
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move v4, v1

    .line 781
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 782
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_1

    .line 784
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 785
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v8, 0x4

    .line 784
    invoke-interface {v6, v7, v5, v8}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public callSetAppStandbyBucket(Ljava/lang/String;IIZ)V
    .locals 9

    .line 2140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2142
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v2, :cond_0

    .line 2143
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2145
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/16 v6, 0x700

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2149
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "MARsPolicyManager"

    .line 2147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callSetAppStandbyBucket exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 2149
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2150
    throw p0
.end method

.method public final callSetAppStandbyBuckets(IIZ)V
    .locals 10

    .line 2154
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_0

    .line 2155
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2157
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v0, :cond_4

    .line 2158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2159
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    monitor-enter v0

    const/4 v1, 0x0

    move v3, v1

    .line 2160
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2161
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v1

    .line 2162
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2163
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v6, :cond_1

    .line 2165
    new-instance v7, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2169
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2172
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/16 v5, 0x700

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucketsForMARs(Ljava/util/List;IIIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2175
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2176
    throw p0

    :catchall_1
    move-exception p0

    .line 2169
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public canRestrictBySEP(ILjava/lang/String;I)Z
    .locals 1

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4737
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4740
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->canRestrictBySEPWithoutPermissionCheck(ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final canRestrictBySEPWithoutPermissionCheck(ILjava/lang/String;I)Z
    .locals 6

    .line 4744
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4745
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_a

    .line 4746
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez p1, :cond_5

    .line 4750
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 p1, 0x15

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, v5, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :try_start_0
    const-string/jumbo p0, "package"

    .line 4755
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 4756
    invoke-interface {p0, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v1, :cond_4

    if-ne p0, v3, :cond_3

    goto :goto_0

    .line 4766
    :cond_3
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_a

    return v4

    :cond_4
    :goto_0
    return v2

    :catch_0
    move-exception p0

    const-string p1, "MARsPolicyManager"

    .line 4762
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    if-ne p1, v4, :cond_6

    return v4

    :cond_6
    if-ne p1, v3, :cond_7

    return v4

    :cond_7
    if-ne p1, v1, :cond_a

    .line 4774
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 4775
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4776
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4777
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getHasAppIcon()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    .line 4780
    :cond_8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4781
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_a

    return v4

    .line 4778
    :cond_9
    :goto_1
    :try_start_2
    monitor-exit p1

    return v2

    :catchall_0
    move-exception p0

    .line 4780
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_a
    :goto_2
    return v2
.end method

.method public cancelAllPolicy()V
    .locals 11

    .line 4455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4456
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 4457
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_6

    .line 4458
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v6, v2

    .line 4459
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 4460
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    .line 4461
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4462
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    const-string v10, "CancelPolicy"

    invoke-virtual {v8, v9, v7, v10}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 4466
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 4467
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 4477
    :cond_1
    invoke-virtual {v7, v5}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4478
    invoke-virtual {v7, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    goto :goto_3

    .line 4468
    :cond_2
    :goto_2
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4470
    invoke-virtual {v7, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4471
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    .line 4472
    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4474
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 4482
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v1, v2

    .line 4486
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 4490
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 4491
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v4, :cond_7

    .line 4493
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4494
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    goto :goto_5

    :cond_7
    const/4 v4, -0x1

    move-object v6, v5

    .line 4496
    :goto_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4497
    invoke-virtual {p0, v6, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 4496
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 4500
    :cond_8
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4501
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 4502
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 4503
    :cond_9
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 4482
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public cancelDisablePolicy(Ljava/lang/String;II)Z
    .locals 6

    .line 2222
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2225
    monitor-exit v0

    return v2

    :cond_0
    const-string v3, "MARsPolicyManager"

    .line 2228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelDisablePolicy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2228
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 2234
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2236
    monitor-exit v0

    return v4

    .line 2238
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v1

    .line 2239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2242
    :goto_0
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    move v2, v4

    .line 2243
    :cond_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(Ljava/lang/String;IZ)V

    return v4

    :cond_5
    return v2

    .line 2232
    :cond_6
    :goto_1
    :try_start_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 2239
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public cancelPolicy(I)V
    .locals 12

    .line 3316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3318
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 3319
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_9

    .line 3320
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v7, v3

    .line 3321
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 3322
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageInfo;

    .line 3323
    invoke-virtual {v8, v3}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 3325
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3326
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    const-string v11, "CancelPolicy"

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 3330
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 3331
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    iget v9, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v9, p1, :cond_6

    const/4 v9, 0x5

    if-ne p1, v9, :cond_1

    .line 3333
    invoke-virtual {v8, v3}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    :cond_1
    const/4 v9, 0x6

    if-ne p1, v9, :cond_2

    .line 3336
    invoke-virtual {v8, v3}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    :cond_2
    const/16 v9, 0xa

    if-ne p1, v9, :cond_3

    .line 3339
    invoke-virtual {v8, v3}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    .line 3340
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    .line 3341
    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v10, 0x3

    .line 3343
    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    :cond_3
    const/16 v9, 0x8

    if-ne p1, v9, :cond_5

    .line 3348
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3349
    :cond_4
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3353
    :cond_5
    invoke-virtual {v8, v6}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3357
    :cond_6
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    if-nez v9, :cond_7

    .line 3358
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    move p1, v3

    .line 3363
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_a

    .line 3364
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 3365
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v5, v7, v4}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 3367
    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3370
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_c

    .line 3374
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 3375
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v1, :cond_b

    .line 3377
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3378
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v1

    goto :goto_5

    :cond_b
    const/4 v1, -0x1

    move-object v2, v6

    .line 3380
    :goto_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 3381
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 3380
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_c
    return-void

    :catchall_1
    move-exception p0

    .line 3367
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public cancelPolicy(Ljava/lang/String;II)V
    .locals 9

    .line 3259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3261
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3262
    :try_start_0
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    const-string v6, "CancelPolicy"

    const-wide/16 v7, 0xbb8

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3263
    monitor-exit v1

    return-void

    .line 3266
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 3268
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_6

    .line 3269
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, p2, :cond_6

    if-eq p2, v4, :cond_1

    .line 3271
    invoke-virtual {p1, p3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3272
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    :cond_1
    const/4 v3, 0x5

    if-ne p2, v3, :cond_2

    .line 3276
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    :cond_2
    const/4 v3, 0x6

    if-ne p2, v3, :cond_3

    .line 3279
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    :cond_3
    const/16 v3, 0xa

    if-ne p2, v3, :cond_4

    .line 3282
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    :cond_4
    if-ne p2, v4, :cond_6

    .line 3285
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3286
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3292
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-nez v3, :cond_7

    if-eq p2, v4, :cond_7

    .line 3293
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p1

    invoke-virtual {p2, v3, p1}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 3296
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move p1, v2

    .line 3299
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_9

    .line 3303
    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p2

    .line 3304
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v1, :cond_8

    .line 3306
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3307
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v1

    goto :goto_1

    :cond_8
    const/4 v1, -0x1

    move-object v3, p3

    .line 3309
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3310
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3309
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    .line 3296
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public cancelRestrict(Ljava/lang/String;I)V
    .locals 2

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelRestrict uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsHandler;->sendResetAbusiveEventsMsgToMainHandler(Ljava/lang/String;I)V

    .line 2446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[cancel_restrict]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Abusive"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeAutoDisabledAppState(Ljava/lang/String;IZ)V
    .locals 5

    .line 4526
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 4528
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 4529
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x400

    if-eqz v1, :cond_0

    .line 4530
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_1

    const/16 v1, 0x800

    .line 4533
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 4534
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    goto :goto_0

    .line 4536
    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    const/4 v1, 0x4

    .line 4537
    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    :goto_0
    if-eqz p3, :cond_2

    .line 4541
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p2, 0x2

    .line 4542
    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4543
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_1

    .line 4545
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4546
    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4547
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    :goto_1
    const/4 p0, -0x1

    .line 4549
    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 4550
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4551
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4552
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "1"

    goto :goto_2

    :cond_3
    const-string p2, "0"

    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4553
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "1"

    goto :goto_3

    :cond_4
    const-string p2, "0"

    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4554
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4555
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4556
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4557
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4558
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4559
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4560
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p0

    move-object p2, p0

    .line 4562
    :goto_4
    invoke-virtual {p1, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4564
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    .line 4566
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 4564
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public checkIsChinaModel()Z
    .locals 0

    .line 621
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    return p0
.end method

.method public checkMARsRestrictedAlarmTarget(Ljava/lang/String;I)Z
    .locals 10

    .line 1174
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1175
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1177
    monitor-exit v0

    return v2

    .line 1178
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 1179
    iget p0, v1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    .line 1180
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/FreecessController;->matchFreezeState(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    .line 1182
    :cond_2
    iget p0, v1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_0

    :cond_3
    move p0, v2

    .line 1183
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_4

    .line 1184
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/FreecessController;->matchFreezeState(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v2, v3

    :cond_4
    return v2

    :catchall_0
    move-exception p0

    .line 1183
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public checkUnusedTargetForDeepSleep()V
    .locals 21

    move-object/from16 v0, p0

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "MARsPolicyManager"

    const-string v1, "Now manual mode is on, we will not update anything!"

    .line 1538
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1542
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1546
    iget-wide v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    const-wide/16 v9, 0x0

    cmp-long v5, v3, v9

    if-eqz v5, :cond_2

    sub-long/2addr v1, v3

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x2

    iget-wide v5, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    mul-long/2addr v5, v3

    goto :goto_0

    :cond_1
    const-wide/32 v5, 0x4d3f6400

    :goto_0
    cmp-long v1, v1, v5

    if-lez v1, :cond_d

    .line 1547
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    goto :goto_1

    :cond_3
    iget-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    :goto_1
    move-wide v12, v1

    .line 1551
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    const/4 v6, 0x0

    .line 1552
    :goto_2
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_8

    .line 1553
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 1554
    :goto_3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 1555
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/am/MARsPackageInfo;

    .line 1558
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_5

    .line 1559
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1560
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-lez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v16

    sub-long v1, v1, v16

    cmp-long v1, v1, v12

    if-gez v1, :cond_4

    move v10, v4

    move-object v15, v5

    move/from16 v18, v6

    goto :goto_5

    .line 1563
    :cond_4
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    .line 1564
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v10

    const/4 v15, 0x7

    .line 1563
    invoke-virtual {v1, v15, v2, v9, v10}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_5

    .line 1565
    new-instance v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v18

    const/16 v19, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v20, v3

    move-object v3, v10

    move v10, v4

    move v4, v15

    move-object v15, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    move-object/from16 v1, v20

    .line 1566
    invoke-virtual {v0, v1, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_4

    :cond_5
    move v10, v4

    move-object v15, v5

    move/from16 v18, v6

    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_6

    .line 1571
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    add-int/lit8 v4, v10, 0x1

    move-object v5, v15

    move/from16 v6, v18

    const-wide/16 v9, 0x0

    goto/16 :goto_3

    :cond_7
    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_2

    .line 1575
    :cond_8
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x0

    .line 1577
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_b

    .line 1578
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 1579
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getPackageStoppedState(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_7

    .line 1585
    :cond_9
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 1586
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v3, 0x4

    .line 1589
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1590
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1591
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1592
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1593
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1594
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 1596
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    :cond_a
    monitor-exit v2

    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1603
    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_c
    const-string v1, "NOTI"

    .line 1604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D-Candi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void

    :catchall_1
    move-exception v0

    .line 1575
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public checkUpdatedDBFromSDHMS()V
    .locals 1

    .line 5774
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 5775
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5778
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 5781
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendSdhmsDBCompleteMsgToDBHandler()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 5778
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public clearAllPackages()V
    .locals 2

    .line 1238
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1242
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 1243
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearRestrictionInfo(Ljava/util/List;)Z
    .locals 5

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 5023
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "default"

    .line 5027
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5028
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEP"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 5030
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public clearTTSPkgInfo()V
    .locals 1

    .line 941
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgUnBindAll()V

    const-string p0, "MARsPolicyManager"

    const-string v0, "clearTTSPkgInfo"

    .line 942
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public closeSocketsForUid(I)V
    .locals 4

    .line 2333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2334
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "network_management"

    .line 2335
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    .line 2337
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_1

    .line 2339
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->closeSocketsForUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2343
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "MARsPolicyManager"

    .line 2341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while closeSocketsForUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2343
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2344
    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 3540
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    .line 3541
    aget-object v1, p1, v0

    const-string v2, "[FRZ]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " "

    if-nez v1, :cond_0

    .line 3542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    .line 3544
    aget-object v4, p1, v1

    const-string v5, "[FAS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v4, 0x3

    .line 3547
    aget-object v6, p1, v4

    const-string v7, "[FOS]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v6, 0x4

    .line 3550
    aget-object v8, p1, v6

    const-string v9, "[DIS]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3551
    aget-object p1, p1, v6

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3554
    :cond_3
    aget-object p1, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, p2, v1

    .line 3555
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, p2, v4

    .line 3556
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, p2, v6

    .line 3557
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const-string p1, " [IMP] "

    .line 3558
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3560
    :cond_5
    aget-object p1, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 3561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3563
    :cond_6
    aget-object p1, p2, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 3564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3566
    :cond_7
    aget-object p1, p2, v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 3567
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p2, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3569
    :cond_8
    aget-object p1, p2, v6

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 3570
    aget-object p1, p2, v6

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3572
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4210
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    .line 4205
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4206
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    .line 4208
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    .line 4203
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    .line 4201
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0
.end method

.method public final convertLevelToPolicyNum(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    .line 4224
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final convertPolicyNumToImportantType(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/16 p0, 0x10

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final convertPolicyNumToLevel(Lcom/android/server/am/MARsPolicyManager$Policy;)I
    .locals 0

    .line 4235
    iget p0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public createPolicies()V
    .locals 13

    const/4 v8, 0x0

    move v9, v8

    .line 4281
    :goto_0
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ge v9, v0, :cond_5

    .line 4282
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4283
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getNum()I

    move-result v11

    .line 4284
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getEnabled()I

    move-result v0

    .line 4285
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getTargetCategory()I

    move-result v5

    .line 4286
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getRestriction()I

    move-result v6

    .line 4287
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getAction()I

    move-result v7

    if-ne v0, v10, :cond_0

    move v4, v10

    goto :goto_1

    :cond_0
    move v4, v8

    .line 4294
    :goto_1
    new-instance v12, Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object v0, v12

    move-object v1, p0

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    if-ne v11, v10, :cond_1

    .line 4296
    iput-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    if-ne v11, v0, :cond_2

    .line 4302
    iput-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    if-ne v11, v0, :cond_3

    .line 4313
    iput-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    if-ne v11, v0, :cond_4

    .line 4319
    iput-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4325
    :cond_5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_6

    .line 4326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPolicies---AL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , AR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , FZ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 4329
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v2, "udspolicy"

    const/4 v3, 0x5

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4336
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bikemode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 4337
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v2, "sbkiepolicy"

    const/4 v3, 0x6

    const/16 v5, 0x17

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v0, "sys.config.mars.game_policy"

    .line 4344
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4346
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string v2, "gamePolicy"

    const/16 v3, 0x9

    const/16 v5, 0x1b

    const/16 v7, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v4, 0x1

    .line 4354
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v2, "mpsmpolicy"

    const/16 v3, 0xa

    const/16 v5, 0x1c

    const/16 v7, 0x9

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-void
.end method

.method public final deletePkgInfoInMARs(Ljava/util/ArrayList;)V
    .locals 12

    if-eqz p1, :cond_6

    .line 1405
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "MARsPolicyManager"

    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePkgInfoInMARs size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1411
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_4

    .line 1412
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v4

    .line 1413
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1414
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    move v8, v4

    .line 1416
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 1417
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/mars/database/FASEntity;

    .line 1418
    new-instance v10, Lcom/android/server/am/MARsPackageInfo;

    invoke-direct {v10, v9}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1420
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v11

    if-ne v9, v11, :cond_0

    .line 1422
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v8

    invoke-virtual {v10, v8}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 1423
    invoke-virtual {v7, v10}, Lcom/android/server/am/MARsPackageInfo;->updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V

    move v8, v3

    goto :goto_3

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    move v8, v4

    :goto_3
    if-nez v8, :cond_2

    .line 1429
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1433
    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_5

    .line 1434
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/MARsPackageInfo;

    .line 1435
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1436
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1438
    :cond_5
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_5
    return-void
.end method

.method public final disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .locals 5

    .line 2250
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->getEnabledStateIfCanBeDisabled(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2252
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(Ljava/lang/String;III)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2254
    invoke-static {p1, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    const/4 p0, 0x1

    .line 2255
    invoke-static {p1, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 2256
    invoke-static {p1, v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2261
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    return p0
.end method

.method public final disablePackageBySEP(Ljava/lang/String;IZ)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move v5, p2

    .line 4810
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IIZLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final disablePackageForSpecific(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 10

    .line 5202
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 5204
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 5205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string v3, "added_from_anomaly_manual"

    .line 5207
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5208
    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setIsSCPMTarget(Z)V

    .line 5210
    :cond_0
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5211
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const-string/jumbo v6, "specificDisable"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 5213
    :cond_1
    new-instance v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    const/16 v3, 0x2000

    .line 5215
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    .line 5216
    invoke-static {p3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5217
    invoke-virtual {p0, p1, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 5218
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 5219
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V

    goto :goto_0

    :cond_2
    move-object v9, v1

    move v3, v2

    .line 5222
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_7

    if-eqz v9, :cond_7

    :try_start_1
    const-string/jumbo p1, "package"

    .line 5226
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 5227
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p3

    invoke-interface {v3, p1, p3}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    if-ne p1, p2, :cond_4

    goto :goto_1

    .line 5238
    :cond_4
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_7

    const-string p1, "MARsPolicyManager"

    .line 5239
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pkg "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is already disabled, so we will not disable"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5230
    :cond_5
    :goto_1
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-interface {v3, p3, v0}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_6

    .line 5231
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    const-string v8, "auto_disabler"

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 5233
    invoke-static {v9, p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 5234
    invoke-static {v9, p2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    move v2, p2

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p3, "MARsPolicyManager"

    .line 5242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred in disable package : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    if-eqz v9, :cond_d

    if-eqz v2, :cond_d

    .line 5247
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 5248
    :try_start_2
    iget-object p3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {p0, p3, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 5250
    invoke-virtual {p0, v9, p3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 5251
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {p3, v0}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5253
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 5254
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {p0, v0, v3, p3}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5257
    :cond_8
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 5258
    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 5259
    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    goto :goto_3

    :cond_9
    move-object v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 5260
    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "1"

    goto :goto_4

    :cond_a
    move-object v0, v1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 5261
    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    if-ne v0, p2, :cond_b

    .line 5262
    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v1

    .line 5261
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 5263
    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 5264
    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 5265
    invoke-virtual {p3}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 5266
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p0

    move-object v1, p0

    .line 5268
    :cond_c
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_d
    :goto_5
    if-eqz v1, :cond_e

    .line 5271
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_e
    return v2

    :catchall_1
    move-exception p0

    .line 5222
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final disablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 5086
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5087
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5088
    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    move v10, v1

    .line 5089
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5090
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 5091
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v1

    .line 5092
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 5096
    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 5100
    :cond_1
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 5101
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_6

    .line 5103
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5104
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_2

    const-string v1, "MARsPolicyManager"

    .line 5105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is already disabled, so we will not disable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    :cond_2
    monitor-exit v14

    goto :goto_1

    .line 5108
    :cond_3
    invoke-virtual {v0, v10, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 5109
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_4

    const-string v1, "MARsPolicyManager"

    .line 5110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be disabled, so we will not disable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5111
    :cond_4
    monitor-exit v14

    goto/16 :goto_1

    .line 5114
    :cond_5
    new-instance v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/16 v18, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v7, v6

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 5115
    invoke-virtual {v0, v15, v7}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v6, v7

    goto :goto_2

    :cond_6
    const/16 v17, 0x0

    move-object/from16 v6, v16

    .line 5117
    :goto_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v17, :cond_c

    if-eqz v6, :cond_c

    .line 5120
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5121
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5122
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string/jumbo v2, "manualDisable"

    invoke-virtual {v1, v12, v13, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 5125
    :cond_7
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v1

    .line 5126
    monitor-enter v14

    .line 5127
    :try_start_1
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 5129
    invoke-virtual {v0, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    if-eqz v1, :cond_8

    .line 5131
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5132
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 5133
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5137
    :cond_8
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5138
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5139
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "1"

    goto :goto_3

    :cond_9
    move-object/from16 v3, v16

    :goto_3
    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5140
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v16

    :cond_a
    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5141
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5142
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5143
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5144
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5145
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5146
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v1

    .line 5147
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5148
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5150
    :cond_b
    monitor-exit v14

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 5117
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_c
    :goto_4
    move-object/from16 v7, p2

    goto/16 :goto_1

    .line 5154
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_e
    return-object v9
.end method

.method public disablePackageListForSpecific(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 5180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5183
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5184
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v2

    .line 5185
    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageForSpecific(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5190
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 5191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIS_SPE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " f: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SEP"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public doUpdatePackages(Z)V
    .locals 1

    .line 1750
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_0

    const-string p1, "MARsPolicyManager"

    const-string v0, "doUpdatePackages called!"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    return-void
.end method

.method public dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 10

    .line 3590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTIVITY MANAGER MARs (dumpsys activity mars)\n"

    .line 3591
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3594
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 3595
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastNotiSentTimeForDisabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_ALARM_WAKEUP_BLOCK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    if-eqz v1, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v1, "N"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_KILL_LONG_RUNNING_PROCESS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    if-eqz v1, :cond_1

    const-string v1, "Y"

    goto :goto_1

    :cond_1
    const-string v1, "N"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMARsTargetPackages --- size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 3600
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_b

    .line 3601
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v4, v0

    .line 3602
    :goto_3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 3603
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_9

    const-string v6, "-RST "

    .line 3609
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-PT "

    .line 3612
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%6d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-ST "

    .line 3613
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%2d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-SC "

    .line 3614
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "T"

    goto :goto_4

    :cond_2
    const-string v6, "F"

    :goto_4
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-DT "

    .line 3615
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%2d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-DR "

    .line 3616
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%2d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-DD "

    .line 3617
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "T"

    goto :goto_5

    :cond_3
    const-string v6, "F"

    :goto_5
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Uid "

    .line 3623
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%8d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3624
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3625
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getSharedUidName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "S"

    .line 3626
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    const-string v6, "-"

    .line 3628
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    const-string v6, ")"

    .line 3629
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Idle"

    .line 3631
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3632
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ")"

    .line 3637
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3638
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v6, :cond_5

    const-string v6, "-curLv "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, "-maxLv "

    .line 3639
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, "-FAS "

    .line 3641
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "Y"

    goto :goto_7

    :cond_6
    const-string v7, "N"

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%4d"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3642
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3643
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_7

    const-string v6, "A"

    goto :goto_8

    :cond_7
    const-string v6, "-"

    :goto_8
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ")"

    .line 3644
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-BU "

    .line 3646
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%10f"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Pkg "

    .line 3648
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3649
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "--(R)"

    .line 3650
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const-string v5, ""

    .line 3652
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 3657
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMARsRestrictedPackages --- size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    .line 3658
    :goto_9
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 3659
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v4, v0

    .line 3660
    :goto_a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 3661
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    const-string v6, "-Uid "

    .line 3662
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%8d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Pkg "

    .line 3663
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-POL "

    .line 3664
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 3666
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$Policy;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3667
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    const-string/jumbo v5, "null"

    .line 3669
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_b
    const-string v5, ""

    .line 3671
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3674
    :cond_e
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, ""

    .line 3676
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3678
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p0, :cond_f

    .line 3679
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    new-instance p1, Landroid/util/PrintWriterPrinter;

    invoke-direct {p1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string p2, "MARsHandler"

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_f
    return-void

    :catchall_0
    move-exception p0

    .line 3674
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dumpMARsCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 3684
    array-length v0, v4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 3686
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/MARsPolicyManager;->dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 3687
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/MARsPolicyManager;->dumpMARsHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 3688
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3689
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/mars/database/MARsComponentTracker;->dumpMARsCTHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 3691
    :cond_0
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3692
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "dbtest"

    .line 3697
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3698
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    :cond_3
    const-string v0, "ct_history"

    .line 3700
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3701
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/mars/database/MARsComponentTracker;->dumpMARsCTHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_4
    const-string v0, "ct_clear"

    .line 3704
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DEV"

    const-string v6, "ctListClear"

    .line 3705
    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 3706
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->listClear()V

    :cond_5
    const-string v0, "ct_size"

    .line 3709
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "size : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getListSize()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    const-string v0, "ct_onoff"

    .line 3713
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3714
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->setEnabled(Z)V

    .line 3715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ComponentTracker : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", size : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getListSize()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v0, "restrict_onoff"

    .line 3717
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3718
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    xor-int/2addr v0, v5

    iput-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 3719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ENABLE_RESTRICTED_BUCKET : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    const-string v0, "bigdata"

    .line 3722
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3723
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/mars/MARsBigData;->getInstance(Landroid/content/Context;)Lcom/android/server/am/mars/MARsBigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData;->sendBigDataInfoToHQM()V

    :cond_9
    const-string v0, "bstat"

    .line 3726
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3727
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    :cond_a
    const-string v0, "disable"

    .line 3730
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v0, :cond_13

    .line 3731
    array-length v0, v4

    if-ge v0, v7, :cond_c

    .line 3732
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_13

    .line 3733
    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    xor-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 3734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Disabler policy has been turned "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    const-string/jumbo v9, "on"

    goto :goto_0

    :cond_b
    const-string/jumbo v9, "off"

    :goto_0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3737
    :cond_c
    array-length v0, v4

    if-ne v0, v7, :cond_13

    .line 3738
    aget-object v0, v4, v8

    if-nez v0, :cond_d

    const-string v0, "Disable will not work, please input proper packageName!"

    .line 3740
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3746
    :cond_d
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 3747
    :try_start_0
    iget-object v10, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    move-result v11

    invoke-virtual {v1, v10, v0, v11}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v10

    const/4 v11, -0x1

    if-eqz v10, :cond_e

    .line 3749
    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    .line 3750
    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v10

    goto :goto_1

    :cond_e
    move v10, v6

    move v12, v11

    .line 3752
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v12, v11, :cond_12

    if-eqz v10, :cond_f

    .line 3757
    invoke-virtual {v1, v0, v12, v6}, Lcom/android/server/am/MARsPolicyManager;->enablePackageBySEP(Ljava/lang/String;IZ)Z

    move-result v9

    goto :goto_2

    .line 3759
    :cond_f
    invoke-virtual {v1, v0, v12, v6}, Lcom/android/server/am/MARsPolicyManager;->disablePackageBySEP(Ljava/lang/String;IZ)Z

    move-result v9

    .line 3761
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " has been "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_10

    const-string v9, "enabled"

    goto :goto_3

    :cond_10
    const-string v9, "disabled!"

    :goto_3
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_11
    const-string v0, " is not in our target, we will not manage it!"

    :goto_4
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 3763
    :cond_12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is not in our target, we will not manage it!"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 3752
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_13
    :goto_5
    const-string v0, "filter"

    .line 3769
    aget-object v9, v4, v5

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_14

    .line 3772
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Filter -- freecess "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v10

    aget-object v11, v4, v8

    .line 3773
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v12, v4, v7

    aget-object v13, v4, v9

    .line 3774
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x5

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 3772
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    const-string v0, "MARsPolicyManager"

    const-string v10, "dumpMARsCommand(filter) parseInt error!"

    .line 3776
    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_6
    const-string v0, "aufbucket"

    .line 3780
    aget-object v10, v4, v5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3782
    :try_start_3
    aget-object v0, v4, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 3783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AUFAllowBucketSize set "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    const-string v0, "MARsPolicyManager"

    const-string v10, "dumpMARsCommand(aufbucket) parseInt error!"

    .line 3785
    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_7
    const-string/jumbo v0, "longrunning"

    .line 3789
    aget-object v10, v4, v5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3790
    array-length v0, v4

    if-lt v0, v7, :cond_18

    const-string/jumbo v0, "on"

    .line 3791
    aget-object v10, v4, v8

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3792
    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    goto :goto_8

    :cond_16
    const-string/jumbo v0, "off"

    .line 3793
    aget-object v10, v4, v8

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3794
    sput-boolean v6, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    goto :goto_8

    :cond_17
    const-string v0, "duration"

    .line 3795
    aget-object v10, v4, v8

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3796
    array-length v0, v4

    if-lt v0, v9, :cond_18

    .line 3798
    :try_start_4
    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    const-string v0, "MARsPolicyManager"

    const-string v10, "dumpMARsCommand(longrunning) parseInt error!"

    .line 3800
    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    :cond_18
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enable="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v10, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", d="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19
    const-string v0, "fgsRunningTime"

    .line 3808
    aget-object v10, v4, v5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3809
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3810
    iget-object v12, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 3811
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 3812
    iget-object v14, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3813
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uid="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", fgsRunningTime="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v10, v14

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", fgsStartTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    goto :goto_9

    .line 3815
    :cond_1a
    monitor-exit v12

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1b
    :goto_a
    const-string v0, "history"

    .line 3818
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3819
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/MARsPolicyManager;->dumpMARsHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_1c
    const-string v0, "hold"

    .line 3822
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "release"

    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3823
    :cond_1d
    array-length v0, v4

    const/4 v6, 0x2

    if-ge v0, v6, :cond_1e

    const-string v0, "hold/release requires at least 1 argument: uid"

    .line 3824
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3827
    :cond_1e
    aget-object v0, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "hold"

    .line 3828
    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3829
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_1f

    const-string v8, "Hold"

    goto :goto_b

    :cond_1f
    const-string v8, "Release"

    :goto_b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " jobs by u="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " calling by MARs."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    :cond_20
    const-string/jumbo v0, "level"

    .line 3833
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3834
    array-length v0, v4

    const/4 v6, 0x3

    if-ge v0, v6, :cond_21

    const-string v0, "MARstest -- need levelNum and packageName"

    .line 3835
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 3836
    :cond_21
    array-length v0, v4

    const/4 v6, 0x4

    if-ne v0, v6, :cond_26

    const/4 v6, 0x2

    .line 3838
    :try_start_6
    aget-object v0, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "-a"

    const/4 v7, 0x3

    .line 3839
    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 3840
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v7, 0x0

    .line 3841
    :goto_c
    :try_start_7
    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_24

    .line 3842
    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    const/4 v10, 0x0

    .line 3843
    :goto_d
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_23

    .line 3844
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v11, :cond_22

    .line 3846
    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V

    :cond_22
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 3850
    :cond_24
    monitor-exit v6

    goto :goto_e

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_25
    const/4 v6, 0x3

    .line 3852
    aget-object v7, v4, v6

    .line 3853
    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_e

    :catch_3
    const-string v0, "MARstest -- NumberFormatException!"

    .line 3856
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    :goto_e
    const-string/jumbo v0, "list"

    .line 3861
    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3862
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/MARsPolicyManager;->dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_27
    const-string v0, "close_socket"

    .line 3865
    aget-object v2, v4, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3866
    array-length v0, v4

    const/4 v2, 0x3

    if-ge v0, v2, :cond_28

    const-string/jumbo v0, "usage: close_socket <uid>"

    .line 3867
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_28
    const/4 v2, 0x2

    .line 3869
    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling closeSocketsForUid: u="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3871
    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    :cond_29
    :goto_f
    const-string/jumbo v0, "time_disable"

    .line 3875
    aget-object v2, v4, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3876
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    const/4 v2, 0x2

    aget-object v6, v4, v2

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v0, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 3878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3879
    iget-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    sub-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    :cond_2a
    const-string/jumbo v0, "update"

    .line 3883
    aget-object v2, v4, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3884
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    :cond_2b
    const-string/jumbo v0, "widget"

    .line 3887
    aget-object v2, v4, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3888
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    :cond_2c
    const-string v0, "deepsleep_target"

    .line 3891
    aget-object v2, v4, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3892
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkUnusedTargetForDeepSleep()V

    :cond_2d
    const-string v0, "candidate"

    .line 3895
    aget-object v2, v4, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3896
    array-length v0, v4

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2e

    const-string v0, "MARstest -- need type and packageName"

    .line 3897
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 3898
    :cond_2e
    array-length v0, v4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_32

    .line 3900
    :try_start_9
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4

    .line 3901
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    const/4 v6, 0x3

    aget-object v6, v4, v6

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v6, "-s"

    const/4 v7, 0x2

    .line 3903
    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 3904
    invoke-virtual {v1, v5, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_10

    :cond_2f
    const-string v6, "-d"

    const/4 v7, 0x2

    .line 3905
    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v6, 0x4

    .line 3906
    invoke-virtual {v1, v6, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_10

    :cond_30
    const-string v0, "MARstest -- not mars target!"

    .line 3909
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3911
    :cond_31
    :goto_10
    monitor-exit v2

    goto :goto_11

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    const-string v0, "MARstest -- NumberFormatException!"

    .line 3913
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    :goto_11
    const-string v0, "debug"

    .line 3918
    aget-object v1, v4, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "help"

    const/4 v1, 0x2

    .line 3919
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "MARs debug options commands:"

    .line 3920
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 3921
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Print this help text."

    .line 3922
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  all"

    .line 3923
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable all mars debug message."

    .line 3924
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  olaf"

    .line 3925
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable olaf debug message."

    .line 3926
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  freecess"

    .line 3927
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable freecess debug message."

    .line 3928
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  database"

    .line 3929
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable MARs database debug message."

    .line 3930
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  filter"

    .line 3931
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable MARs filter debug message."

    .line 3932
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_33
    const-string v0, "all"

    const/4 v1, 0x2

    .line 3933
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3934
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 3935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mars debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_34

    const-string/jumbo v1, "on"

    goto :goto_12

    :cond_34
    const-string/jumbo v1, "off"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_35
    const-string/jumbo v0, "olaf"

    const/4 v1, 0x2

    .line 3936
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3937
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 3938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " olaf debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_36

    const-string/jumbo v1, "on"

    goto :goto_13

    :cond_36
    const-string/jumbo v1, "off"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_37
    const-string v0, "freecess"

    const/4 v1, 0x2

    .line 3939
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3940
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 3941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " freecess debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v1, :cond_38

    const-string/jumbo v1, "on"

    goto :goto_14

    :cond_38
    const-string/jumbo v1, "off"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_39
    const-string v0, "database"

    const/4 v1, 0x2

    .line 3942
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3943
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 3944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " database debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "on"

    goto :goto_15

    :cond_3a
    const-string/jumbo v1, "off"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_3b
    const-string v0, "filter"

    const/4 v1, 0x2

    .line 3945
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3946
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 3947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " filter debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "on"

    goto :goto_16

    :cond_3c
    const-string/jumbo v1, "off"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_3d
    const-string/jumbo v0, "netlink"

    const/4 v1, 0x2

    .line 3948
    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3949
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 3950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " netlink debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v1, :cond_3e

    const-string/jumbo v1, "on"

    goto :goto_17

    :cond_3e
    const-string/jumbo v1, "off"

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_3f
    const-string v0, "Error: debug command requires argument"

    .line 3952
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_40
    :goto_18
    return-void
.end method

.method public dumpMARsHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, ""

    .line 3958
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "ACTIVITY MANAGER MARs HISTORY (dumpsys activity mars history)"

    .line 3959
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3961
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3968
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    if-eqz v1, :cond_4

    .line 3969
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->getBuffer()[Ljava/lang/String;

    move-result-object v1

    .line 3970
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3971
    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3973
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3962
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/am/mars/MARsHistoryBuffer;->getInstance()Lcom/android/server/am/mars/MARsHistoryBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsHistoryBuffer;->getLog()Ljava/util/ArrayList;

    move-result-object v1

    .line 3963
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3964
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3966
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    :cond_4
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->dumpNetHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpNetHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 3

    const-string p1, ""

    .line 3980
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "ACTIVITY MANAGER NET HISTORY (dumpsys activity net history)"

    .line 3981
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    if-eqz v0, :cond_1

    .line 3984
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->getBuffer()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3985
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3986
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3988
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .locals 6

    .line 2265
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2266
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    .line 2267
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2268
    :goto_0
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(Ljava/lang/String;III)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2269
    invoke-static {p1, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2270
    invoke-static {p1, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 2271
    invoke-static {p1, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2274
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final enablePackageBySEP(Ljava/lang/String;IZ)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move v5, p2

    .line 4814
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IIZLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final enablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    .line 5277
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5278
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5279
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x800

    move-object/from16 v9, p2

    :goto_0
    move v10, v1

    goto :goto_1

    :cond_0
    move-object/from16 v9, p2

    .line 5280
    invoke-virtual {v0, v9}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x200

    goto :goto_0

    :cond_1
    const/16 v1, 0x400

    goto :goto_0

    .line 5281
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5282
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 5283
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v1

    .line 5284
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 5287
    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 5291
    :cond_2
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 5292
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v15

    const/4 v6, 0x0

    if-eqz v15, :cond_3

    .line 5294
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v16

    const/16 v17, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v9, v5

    move/from16 v5, v16

    move-object/from16 p1, v11

    move-object v11, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 5295
    invoke-virtual {v0, v15, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v6, v9

    goto :goto_3

    :cond_3
    move-object/from16 p1, v11

    move-object v11, v6

    .line 5297
    :goto_3
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_9

    .line 5300
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v1

    .line 5301
    monitor-enter v14

    .line 5302
    :try_start_1
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 5304
    invoke-virtual {v0, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    if-eqz v1, :cond_5

    .line 5305
    invoke-virtual {v0, v10, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5306
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5307
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_4

    .line 5309
    :cond_4
    invoke-virtual {v2, v11}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5310
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5312
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5315
    :cond_5
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5316
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5317
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v6, v11

    goto :goto_5

    :cond_6
    const-string v6, "0"

    :goto_5
    invoke-virtual {v1, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5318
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v6, v11

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v1, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5319
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5320
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5321
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5322
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5323
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5324
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v1

    .line 5325
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5326
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5328
    :cond_8
    monitor-exit v14

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    :goto_7
    move-object/from16 v11, p1

    goto :goto_8

    :catchall_1
    move-exception v0

    .line 5297
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_a
    :goto_8
    move-object/from16 v9, p2

    goto/16 :goto_2

    .line 5331
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_c
    return-object v8
.end method

.method public final forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z
    .locals 10

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v5, v3

    move v6, v5

    move v7, v6

    move v2, v1

    :goto_0
    const/16 v8, 0x10

    if-gt v2, v8, :cond_4

    .line 2372
    iget v8, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    and-int/2addr v8, v2

    if-eq v8, v1, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v1

    goto :goto_2

    :cond_1
    const/16 v6, 0x1f4

    move v5, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v0

    move v6, v5

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2395
    :cond_4
    sget-boolean p2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    const-string v0, "MARsPolicyManager"

    if-eqz p2, :cond_5

    .line 2396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceKillPackage: pkgName: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_5
    invoke-virtual {p0, p4}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    if-eqz v3, :cond_6

    .line 2401
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_3

    .line 2403
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object v3, p1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZIZII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2405
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_7

    .line 2406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "forceKillPackage: don\'t force stop package = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return v1
.end method

.method public forceRunPolicyForRecentKill(ILjava/lang/String;)Z
    .locals 13

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2576
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 2577
    iget-boolean v3, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 2582
    :cond_0
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 2584
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz p2, :cond_3

    const-string v7, ","

    .line 2585
    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ","

    .line 2586
    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v7, 0x0

    if-eqz p2, :cond_2

    .line 2587
    array-length v8, p2

    if-ne v8, v6, :cond_2

    .line 2588
    aget-object v8, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v8, :cond_1

    move-object v7, v8

    .line 2591
    :cond_1
    :try_start_1
    aget-object p2, p2, v5

    if-eqz p2, :cond_2

    .line 2592
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p2, "MARsPolicyManager"

    const-string v8, "forceRunPolicyForRecentKill parseInt error!"

    .line 2594
    invoke-static {p2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    move-object p2, v7

    .line 2600
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v7, p2, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p2

    if-nez p2, :cond_4

    .line 2603
    monitor-exit v3

    return v2

    .line 2605
    :cond_4
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v10

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    const/4 v12, 0x0

    move-object v7, v4

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2606
    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2607
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2609
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v7

    .line 2610
    :try_start_3
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2611
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v9

    const-string v10, "RecentKill"

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2614
    :cond_5
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v9

    invoke-virtual {p0, v3, v1, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v4, v2, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    const/4 v2, 0x3

    .line 2616
    invoke-static {v4, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2622
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2624
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 2626
    :try_start_4
    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2627
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v3, v4, :cond_6

    .line 2628
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    if-ne p1, v6, :cond_6

    .line 2630
    invoke-virtual {p0, v6, p2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 2636
    :cond_6
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    .line 2637
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {p1, v1, v3, p2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2638
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-ne p1, v1, :cond_8

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    .line 2639
    invoke-virtual {p2, p1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2640
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {p1, v1, v3, p2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_1
    const-string p1, "EXE"

    .line 2645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "MARsPolicyManager"

    .line 2647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recent_Kill: add mRestrictedPackages "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " policy --"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    monitor-exit v2

    return v5

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 2620
    :cond_9
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_1
    move-exception p0

    .line 2622
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_2
    move-exception p0

    .line 2607
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_a
    :goto_2
    const-string p0, "MARsPolicyManager"

    const-string/jumbo p1, "policy is not exist or not enabled!"

    .line 2578
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2810
    new-instance v7, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v7}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    .line 2811
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2812
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2815
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 2816
    iget-boolean v1, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 2822
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2824
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2826
    sget-object v11, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v11

    const/4 v12, 0x0

    move v1, v12

    .line 2827
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v1, v2, :cond_6

    move-object/from16 v2, p2

    .line 2828
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2830
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-eqz v3, :cond_3

    const-string v5, ","

    .line 2833
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ","

    .line 2834
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 2835
    array-length v6, v3

    if-ne v6, v13, :cond_4

    .line 2836
    aget-object v6, v3, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v6, :cond_1

    move-object v5, v6

    .line 2839
    :cond_1
    :try_start_1
    aget-object v3, v3, v14

    if-eqz v3, :cond_2

    .line 2840
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v3, "MARsPolicyManager"

    const-string v6, "forceRunPolicyForSpecificPackage parseInt error!"

    .line 2842
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    goto :goto_2

    .line 2848
    :cond_3
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 2852
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move v15, v12

    .line 2855
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v15, v1, :cond_b

    .line 2856
    invoke-virtual {v7}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/util/SparseArray;

    move v5, v12

    .line 2857
    :goto_4
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_a

    .line 2858
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 2859
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    iget v3, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2860
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_7

    const-string v1, "MARsPolicyManager"

    .line 2861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inPolicyAllowList, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    move/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_6

    .line 2867
    :cond_8
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    .line 2868
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2869
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    .line 2867
    invoke-virtual {v1, v14, v2, v3, v12}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_9

    goto :goto_5

    .line 2873
    :cond_9
    new-instance v12, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v16

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v17

    const/16 v18, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v13, v4

    move/from16 v4, v16

    move/from16 v16, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2874
    invoke-virtual {v0, v13, v12}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2876
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v6, v17

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto/16 :goto_3

    .line 2879
    :cond_b
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2881
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 2882
    :try_start_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v14

    const/4 v3, 0x0

    :goto_7
    if-ltz v2, :cond_e

    .line 2883
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2885
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2886
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    const-string v11, "SMKill"

    invoke-virtual {v5, v6, v7, v11}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2889
    :cond_c
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    invoke-virtual {v0, v5, v10, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    const/4 v3, 0x3

    .line 2891
    invoke-static {v4, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v14

    goto :goto_8

    .line 2895
    :cond_d
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 2899
    :cond_e
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2901
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v12, 0x0

    .line 2902
    :goto_9
    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_14

    .line 2903
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2905
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 2908
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2909
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v1, v5, :cond_f

    .line 2910
    invoke-virtual {v4, v10}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    move/from16 v1, p1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_10

    .line 2912
    invoke-virtual {v0, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_a

    :cond_f
    move/from16 v1, p1

    const/4 v5, 0x2

    .line 2916
    :cond_10
    :goto_a
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {v6, v7, v11}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_11

    .line 2917
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {v6, v7, v11, v4}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 2918
    :cond_11
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-ne v6, v7, :cond_13

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x4

    .line 2919
    invoke-virtual {v4, v6}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2920
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {v6, v7, v11, v4}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    move/from16 v1, p1

    const/4 v5, 0x2

    :cond_13
    :goto_b
    const-string v6, "MARsPolicyManager"

    .line 2924
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add mRestrictedPackages "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " policy --"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    .line 2926
    :cond_14
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_15

    const-string v1, "SM"

    .line 2929
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void

    :catchall_0
    move-exception v0

    .line 2926
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 2899
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    .line 2879
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_16
    :goto_c
    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 2817
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V
    .locals 20

    move-object/from16 v7, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 2655
    new-instance v8, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v8}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    .line 2656
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2657
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2660
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 2661
    iget-boolean v2, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_c

    .line 2665
    :cond_0
    invoke-virtual {v7, v11}, Lcom/android/server/am/MARsPolicyManager;->convertPolicyNumToLevel(Lcom/android/server/am/MARsPolicyManager$Policy;)I

    move-result v12

    .line 2668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2670
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2672
    sget-object v13, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_5

    move v2, v15

    .line 2675
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2676
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2678
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-eqz v3, :cond_4

    const-string v5, ", "

    .line 2680
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ", "

    .line 2681
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2682
    array-length v6, v3

    const/4 v5, 0x2

    if-ne v6, v5, :cond_2

    .line 2683
    aget-object v5, v3, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 2686
    :goto_1
    :try_start_1
    aget-object v3, v3, v14

    if-eqz v3, :cond_3

    .line 2687
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v4, v3

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v3, "MARsPolicyManager"

    const-string v6, "forceRunPolicyForGamePolicy parseInt error!"

    .line 2689
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 2692
    :cond_3
    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v5, v4, v3}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v6, v15

    .line 2697
    :goto_3
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_10

    .line 2698
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/SparseArray;

    move v4, v15

    .line 2699
    :goto_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_f

    .line 2700
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/am/MARsPackageInfo;

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 2703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2704
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_6

    const-string v1, "MARsPolicyManager"

    .line 2705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "package "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not game policy target, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    move/from16 v19, v4

    :goto_6
    move-object v15, v5

    move/from16 v16, v6

    goto/16 :goto_7

    .line 2710
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2711
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_6

    const-string v1, "MARsPolicyManager"

    .line 2712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "package "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in survivePkgs, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2718
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    iget v15, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v7, v1, v2, v15}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2719
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_6

    const-string v1, "MARsPolicyManager"

    .line 2720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "package "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inPolicyAllowList, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2726
    :cond_9
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    iget v2, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 2727
    invoke-virtual {v7, v2}, Lcom/android/server/am/MARsPolicyManager;->convertPolicyNumToImportantType(I)I

    move-result v2

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2728
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    move/from16 p2, v4

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    .line 2726
    invoke-virtual {v1, v2, v15, v14, v4}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_a

    move/from16 v19, p2

    goto/16 :goto_6

    .line 2732
    :cond_a
    new-instance v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    .line 2733
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v16

    const/16 v17, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v18, v3

    move-object v3, v4

    move/from16 v19, p2

    move v4, v15

    move-object v15, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    move-object/from16 v1, v18

    .line 2734
    invoke-virtual {v7, v1, v14}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    const/4 v2, 0x5

    if-ne v0, v2, :cond_b

    .line 2737
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUds()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 2738
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    const/4 v2, 0x6

    if-ne v0, v2, :cond_c

    .line 2740
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getSBike()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 2741
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    const/16 v2, 0xa

    if-ne v0, v2, :cond_d

    .line 2743
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMpsm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 2744
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2746
    :cond_d
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    add-int/lit8 v4, v19, 0x1

    move-object v5, v15

    move/from16 v6, v16

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_f
    move/from16 v16, v6

    add-int/lit8 v6, v16, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2750
    :cond_10
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2752
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2753
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_8
    if-ltz v2, :cond_14

    .line 2754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v13, 0x32

    cmp-long v5, v5, v13

    if-ltz v5, :cond_11

    const-wide/16 v0, 0xa

    .line 2757
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2759
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2761
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2763
    :cond_11
    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    .line 2764
    :try_start_4
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2766
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2767
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    invoke-virtual {v8, v13, v14}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2768
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    iget-object v15, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v14, v15}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2771
    :cond_12
    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    invoke-virtual {v7, v8, v11, v13, v14}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v6, v13, v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    .line 2773
    invoke-static {v6, v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v4, v3

    goto :goto_a

    .line 2777
    :cond_13
    :try_start_5
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2778
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_a
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    .line 2780
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2783
    :cond_14
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v15, 0x0

    .line 2784
    :goto_b
    :try_start_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_18

    .line 2785
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2787
    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v7, v2, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2790
    invoke-virtual {v7, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2791
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v0, v3, :cond_15

    .line 2792
    invoke-virtual {v2, v11}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 2795
    :cond_15
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2796
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v3, v5, v2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2798
    :cond_16
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_17

    const-string v0, "MARsPolicyManager"

    .line 2799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add mRestrictedPackages "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " policy --"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 2802
    :cond_18
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_19

    const-string v0, "EXE"

    .line 2805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void

    :catchall_1
    move-exception v0

    .line 2802
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 2750
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_1a
    :goto_c
    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 2662
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final forceStopAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .locals 9

    .line 2321
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 2323
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MARs #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicyNum(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZIZII)Z

    move-result p0

    .line 2326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public forceStopForRecentKill(Ljava/lang/String;)V
    .locals 4

    .line 2548
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz p1, :cond_2

    const-string v1, ","

    .line 2549
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2550
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2551
    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 2552
    aget-object v2, p1, v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    const/4 v2, 0x1

    .line 2555
    :try_start_0
    aget-object p1, p1, v2

    if-eqz p1, :cond_1

    .line 2556
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MARsPolicyManager"

    const-string v2, "forceStopForRecentKill parseInt error!"

    .line 2558
    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    move-object p1, v1

    :cond_2
    if-eqz p1, :cond_3

    .line 2566
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public final formatDateTime(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    .line 3576
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%23s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3577
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3578
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3579
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatDateTimeWithoutYear(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    .line 3583
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%18s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3584
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3585
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3586
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllRestrictedList()Ljava/util/List;
    .locals 12

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4863
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4867
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4868
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 4869
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 4870
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 4871
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 4872
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v7, :cond_4

    .line 4873
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4875
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ne v8, v9, :cond_1

    .line 4876
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4877
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v10, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_2

    .line 4878
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4879
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4880
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v10, v10, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_2

    .line 4881
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    const/16 v9, 0x100

    if-ne v8, v9, :cond_3

    .line 4882
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4883
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    invoke-direct {v8, v11, v10, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v8, v1

    .line 4885
    :goto_2
    new-instance v9, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-direct {v9, v10, v7, v8}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 4889
    :cond_6
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAutorunForFreezedPackage(Ljava/lang/String;I)I
    .locals 2

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1225
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1226
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1227
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    .line 1229
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public getBatteryStats()V
    .locals 10

    .line 1685
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_0

    const-string v0, "MARsPolicyManager"

    const-string v1, "getBatteryStats called!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1688
    new-instance v1, Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;-><init>()V

    .line 1689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    move-wide v5, v8

    .line 1694
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getBatteryStats(IJJZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1697
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemBatteryStats;

    if-eqz v2, :cond_1

    .line 1698
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isSameDay(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1699
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getAppDetailUsages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1701
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    .line 1702
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v4, :cond_2

    const-string v4, "MARsPolicyManager"

    .line 1704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " getBatteryStats(D) app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1713
    :cond_3
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 1714
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1715
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v2

    .line 1716
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 1717
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 1719
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    if-lez v7, :cond_5

    .line 1720
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    if-eqz v7, :cond_4

    .line 1722
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    goto :goto_3

    .line 1724
    :cond_4
    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    goto :goto_3

    .line 1727
    :cond_5
    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1731
    :cond_7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized getCarModeOnState()Z
    .locals 1

    monitor-enter p0

    .line 500
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getChangedByUserFromReason(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "added_from_user_manual"

    .line 5534
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "added_from_anomaly_manual"

    .line 5535
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "deleted_from_user_manual"

    .line 5536
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 213
    :catch_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public declared-synchronized getDeviceIdleModeState()Z
    .locals 1

    monitor-enter p0

    .line 508
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDualAppUserId()I
    .locals 1

    monitor-enter p0

    .line 524
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEnabledStateIfCanBeDisabled(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    const-string/jumbo p0, "package"

    .line 2279
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 2280
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2284
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v0

    :catch_0
    move-exception p0

    .line 2288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error occurred in getEnabledStateIfCanBeDisabled()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized getFirstTimeUpdatePkgsState()Z
    .locals 1

    monitor-enter p0

    .line 516
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getForegroundServiceStartTime(I)J
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 866
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 867
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHasAppIcon(Ljava/lang/String;I)Z
    .locals 2

    .line 1444
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1445
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getHasAppIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1447
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1448
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInstalledPackageListFromMARs(II)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 946
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->hasUserPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 951
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 953
    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "MARsPolicyManager"

    .line 955
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInstalledPackageListFromMARs exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 958
    throw p0
.end method

.method public declared-synchronized getIsManualMode()Z
    .locals 1

    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastUsedTime(Ljava/lang/String;I)J
    .locals 2

    .line 1455
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getLastUsedTime()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 1460
    :cond_0
    monitor-exit v0

    const-wide/32 p0, -0xdbba0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMARsEnabled()Z
    .locals 0

    .line 472
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return p0
.end method

.method public getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;
    .locals 0

    if-eqz p1, :cond_0

    .line 1211
    invoke-virtual {p1}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result p0

    if-eqz p0, :cond_0

    .line 1212
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/MARsPackageInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMARsTargetPkgMap()Lcom/android/server/am/MARsPkgMap;
    .locals 0

    .line 1219
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    return-object p0
.end method

.method public getPackageDisablerEnabled()Z
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p0, :cond_0

    .line 569
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPackageNameByUid(I)Ljava/lang/String;
    .locals 2

    .line 5847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5849
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5853
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5851
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5853
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 5857
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "package name not found for uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MARsPolicyManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5858
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5861
    aget-object p0, p0, p1

    return-object p0

    .line 5853
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5854
    throw p0
.end method

.method public final getPackageStoppedState(Ljava/lang/String;I)Z
    .locals 1

    .line 2297
    :try_start_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 2298
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2300
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed getPackageStoppedState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V
    .locals 14

    const-string/jumbo v0, "package"

    .line 1282
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1290
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 1293
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 1294
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/mars/database/FASEntity;

    .line 1295
    new-instance v7, Lcom/android/server/am/MARsPackageInfo;

    invoke-direct {v7, v6}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1296
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    .line 1298
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v8

    .line 1301
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v10, "MARsPolicyManager"

    .line 1303
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NumberFormatException !"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v3

    .line 1306
    :goto_1
    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v10

    .line 1307
    :try_start_1
    iget-object v11, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_6

    .line 1309
    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v13

    if-ne v13, v9, :cond_2

    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v13

    if-eq v13, v8, :cond_1

    goto :goto_2

    .line 1325
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    if-nez v6, :cond_b

    .line 1326
    invoke-virtual {v11, v12}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    goto/16 :goto_4

    .line 1310
    :cond_2
    :goto_2
    invoke-virtual {v11, v8}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1311
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    if-ne v9, v12, :cond_3

    const/16 v6, 0x20

    .line 1314
    invoke-virtual {p0, v6, v11}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto/16 :goto_4

    :cond_3
    const/16 v6, 0x100

    .line 1316
    invoke-virtual {p0, v6, v11}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1318
    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1319
    :cond_4
    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1320
    invoke-virtual {v11, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1322
    :cond_5
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1329
    :cond_6
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->getSharedUidName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/am/MARsPackageInfo;->setSharedUidName(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v6

    and-int/2addr v6, v12

    if-eqz v6, :cond_7

    .line 1333
    invoke-virtual {v7, v12}, Lcom/android/server/am/MARsPackageInfo;->setHasAppIcon(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    :cond_7
    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-interface {v0, v6, v8}, Landroid/content/pm/IPackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v6

    const/4 v8, 0x4

    if-eqz v6, :cond_9

    .line 1338
    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1339
    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1340
    invoke-virtual {v7, v12}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 1341
    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 1342
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1343
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    const/16 v8, 0x10

    if-eq v6, v8, :cond_8

    .line 1344
    invoke-virtual {v7, v12}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1345
    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1347
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v6, v8, v9, v7}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1348
    :cond_9
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    if-ne v6, v8, :cond_a

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1349
    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 1350
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v6, v8, v9, v7}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_3
    const-string v8, "MARsPolicyManager"

    .line 1353
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPkgInfoFromSMToMARs exception:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_a
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->initOptionFlag()V

    .line 1357
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v6, v8, v9, v7}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1359
    :cond_b
    :goto_4
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1362
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    move v5, v12

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 1359
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_d
    move p1, v3

    .line 1370
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 1374
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1375
    :try_start_5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v4, :cond_e

    .line 1377
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1378
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 1380
    :goto_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1381
    invoke-virtual {p0, v6, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :catchall_1
    move-exception p0

    .line 1380
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    .line 1384
    :cond_f
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_11

    .line 1385
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1386
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1389
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1390
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1391
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_10

    .line 1394
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v0, "MARsPolicyManager"

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "new Package : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", SCPMTarget : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_2
    move-exception p0

    .line 1391
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :cond_11
    if-eqz v5, :cond_12

    .line 1400
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler()V

    :cond_12
    return-void
.end method

.method public getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 4571
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 4572
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 4574
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4575
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    .line 4576
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 4578
    aget-object v2, v0, v2

    const/4 v3, 0x1

    .line 4582
    :try_start_0
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 4583
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4589
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/server/am/mars/filter/FilterManager;->filterForChimera(Ljava/lang/String;II)I

    move-result v0

    .line 4590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    const-string v0, "MARsPolicyManager"

    const-string v1, "NumberFormatException!"

    .line 4585
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4364
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4366
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 4368
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 4370
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 4372
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 4374
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_5
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    .line 4376
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_6
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 4378
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRestrictableList(I)Ljava/util/List;
    .locals 11

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4828
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4832
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4833
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 4834
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 4835
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 4836
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 4837
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v7, :cond_3

    .line 4840
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->canRestrictBySEPWithoutPermissionCheck(ILjava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    if-ne p1, v8, :cond_1

    .line 4843
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4844
    new-instance v9, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4845
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v8, v10}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    .line 4848
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 4849
    new-instance v9, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4850
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v8, v10}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v9, v1

    .line 4853
    :goto_2
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-direct {v8, v10, v7, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4858
    :cond_5
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRestrictedList(I)Ljava/util/List;
    .locals 12

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4894
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4898
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4899
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 4900
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 4901
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 4902
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 4903
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v7, :cond_6

    .line 4904
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v9, :cond_3

    const/4 v10, 0x2

    if-eq p1, v10, :cond_2

    const/4 v8, 0x3

    if-eq p1, v8, :cond_1

    goto :goto_2

    .line 4922
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    const/16 v10, 0x100

    if-ne v8, v10, :cond_5

    .line 4923
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 4917
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    .line 4918
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    if-eq v10, v8, :cond_5

    .line 4919
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 4909
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4910
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 4913
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 4914
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_5
    :goto_2
    move-object v8, v1

    :goto_3
    if-eqz v8, :cond_6

    .line 4928
    new-instance v10, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {v10, p1, v9, v8}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    .line 4929
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-direct {v8, v9, v7, v10}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 4934
    :cond_8
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRestrictionInfoBySEP(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .locals 4

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4673
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "default"

    .line 4680
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 4681
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_a

    .line 4682
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_3

    .line 4684
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 4686
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move p3, v2

    goto :goto_2

    .line 4688
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "default"

    goto :goto_2

    .line 4693
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_6

    .line 4697
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4699
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4701
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "default"

    goto :goto_2

    .line 4706
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-ne p1, p0, :cond_8

    .line 4710
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_7

    const-string v0, "added_from_mars_auto"

    goto :goto_0

    :cond_7
    const-string v0, "added_from_mars_auto"

    :goto_1
    move p3, p0

    goto :goto_2

    :cond_8
    const/4 v3, 0x3

    if-ne p1, v3, :cond_a

    .line 4718
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p2

    const/16 p3, 0x100

    if-ne p2, p3, :cond_9

    const-string v0, "default"

    goto :goto_0

    :cond_9
    const-string v0, "default"

    goto :goto_1

    .line 4727
    :cond_a
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4728
    new-instance p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 4727
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized getScreenOnState()Z
    .locals 1

    monitor-enter p0

    .line 491
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSharedUidName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, "MARsPolicyManager"

    const/4 v1, 0x0

    .line 596
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v2, 0x402000

    .line 597
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 600
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 605
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NullPointerException occurred in getSharedUidName() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NameNotFoundException occurred for package : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 3

    .line 5544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const-string/jumbo v0, "package"

    .line 5546
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 5548
    :try_start_0
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v2, v1, :cond_0

    if-eqz v0, :cond_0

    .line 5549
    invoke-interface {v0, p1, p0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 5553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasPermission exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hasUserPermission()Z
    .locals 1

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 964
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 223
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 225
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->recoverFreezerStateIfTHAWED()V

    .line 228
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsHandler;->init(Landroid/content/Context;)V

    .line 229
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsTrigger;->init(Landroid/content/Context;)V

    .line 230
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/am/mars/database/MARsDBManager;->init(Landroid/content/Context;)V

    .line 231
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->init(Landroid/content/Context;)V

    .line 232
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    if-eqz p0, :cond_1

    .line 233
    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/MARsHistoryBuffer;->getInstance()Lcom/android/server/am/mars/MARsHistoryBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsHistoryBuffer;->init()V

    .line 234
    invoke-static {}, Lcom/android/server/am/mars/MARsHistoryLog;->getInstance()Lcom/android/server/am/mars/MARsHistoryLog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsHistoryLog;->init()V

    :cond_1
    return-void
.end method

.method public initCurrentUser(I)V
    .locals 2

    .line 385
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const-wide/16 v0, 0x0

    .line 386
    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 388
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 391
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsDBManager;->switchUser(Landroid/content/Context;)V

    .line 392
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public initDisabledPackage(I)V
    .locals 7

    .line 363
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x8000

    .line 365
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 367
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 368
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    .line 370
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 372
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 373
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 375
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 376
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 377
    invoke-virtual {p0, v4, p1, v3, v3}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(Ljava/lang/String;III)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final initHistoryBuffer()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, ""

    .line 3507
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "m"

    .line 3509
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3510
    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 3511
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3515
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3518
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    const/16 v0, 0x1388

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e8

    :goto_1
    invoke-direct {v1, p0, v0}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;-><init>(Lcom/android/server/am/MARsPolicyManager;I)V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    return-void
.end method

.method public initInternal(Z)V
    .locals 2

    .line 419
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_0

    .line 422
    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_1

    .line 426
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabledConfig()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppStartUpHistoryEnabled()Z

    move-result p1

    const-string v1, "MARsPolicyManager"

    if-eqz p1, :cond_3

    .line 431
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_2

    const-string p1, "App StartUp History is enabled"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_2
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 436
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz p1, :cond_4

    .line 437
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerUDSReceiver()V

    .line 441
    :cond_4
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz p1, :cond_5

    .line 442
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerSBikeReceiver()V

    .line 446
    :cond_5
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_6

    iget-boolean p1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz p1, :cond_6

    .line 447
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerGameReceiver()V

    .line 450
    :cond_6
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerTCPUReceiver()V

    .line 453
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_7

    iget-boolean p1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz p1, :cond_7

    .line 454
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerMPSMReceiver()V

    .line 457
    :cond_7
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_8

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FC = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", AR = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", PD = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", UD = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", SB = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", GA = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", MP = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public final initNetHistoryBuffer()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, ""

    .line 3434
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "m"

    .line 3436
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3437
    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 3438
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3442
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3445
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    const/16 v0, 0x1388

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e8

    :goto_1
    invoke-direct {v1, p0, v0}, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;-><init>(Lcom/android/server/am/MARsPolicyManager;I)V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    return-void
.end method

.method public isAlarmForceSetWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 5654
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5657
    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAlarmWakeupAllowList(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 5639
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 p1, 0x18

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAlarmWakeupBlockList(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 5645
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 5648
    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 p4, 0x17

    const/4 v0, 0x0

    invoke-virtual {p0, p4, p2, v0, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public isAppStartUpHistoryEnabled()Z
    .locals 2

    .line 672
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 674
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 675
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 677
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 678
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;I)Z
    .locals 4

    .line 641
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 642
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_0

    const-string p0, "MARsPolicyManager"

    const-string p1, "AR not enabled"

    .line 643
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 647
    :cond_1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 649
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 655
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 656
    monitor-exit v0

    return v1

    .line 658
    :cond_3
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p0

    .line 659
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    const/16 v3, 0x13

    .line 658
    invoke-virtual {p0, v3, p1, p2, v2}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_4

    .line 660
    monitor-exit v0

    return v1

    .line 662
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_5

    const-string p0, "MARsPolicyManager"

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Auto run OFF, userId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p0, 0x1

    return p0

    .line 650
    :cond_6
    :goto_0
    :try_start_1
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_7

    const-string p0, "MARsPolicyManager"

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Auto run ON, userId = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_7
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 662
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isAutoRunOn(Ljava/lang/String;I)Z
    .locals 2

    .line 633
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 636
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isBackupServicePkg(I)Z
    .locals 5

    .line 891
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 894
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 896
    :cond_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 898
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isChinaPolicyEnabled()Z
    .locals 0

    .line 625
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isCurrentUser(I)Z
    .locals 7

    .line 398
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 399
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    move v0, v1

    move v3, v2

    goto :goto_2

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-ne p1, v6, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 410
    :goto_1
    monitor-exit v0

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    move v0, v2

    move v3, v0

    .line 413
    :goto_2
    iget p0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    if-eq p0, p1, :cond_5

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :cond_5
    :goto_3
    return v1
.end method

.method public final isDisabledByUser(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/16 p0, 0x20

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFirstTimeTriggerAutorun()Z
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isForegroundPackage(Ljava/lang/String;I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 838
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 841
    :cond_1
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->isInTopPkgList(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isForegroundServicePkg(I)Z
    .locals 2

    .line 861
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPolicyExceptionList(Ljava/lang/String;II)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 4411
    :goto_0
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 4412
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    .line 4413
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    .line 4414
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v5, v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    .line 4415
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    const/4 v8, 0x2

    if-eq v3, v8, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0xa

    if-ne p3, v3, :cond_5

    .line 4442
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    if-ne p3, v4, :cond_5

    .line 4437
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_2
    if-ne p3, v8, :cond_5

    .line 4427
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 4430
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    xor-int/2addr v8, v7

    if-ne v4, v8, :cond_5

    .line 4431
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 4420
    :cond_4
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    return v7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return v0
.end method

.method public isMARsTarget(Ljava/lang/String;I)Z
    .locals 2

    .line 1165
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1167
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z
    .locals 3

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1155
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    if-eqz p0, :cond_2

    if-eqz p0, :cond_1

    .line 1157
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p0

    const/4 v2, 0x4

    if-ne p0, v2, :cond_1

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    const/16 p1, 0x100

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isSCPMTarget(Ljava/lang/String;I)Z
    .locals 2

    .line 2210
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2214
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 2216
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSameDay(JJ)Z
    .locals 0

    .line 1736
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1737
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1738
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1739
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 1741
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    if-ne p3, p4, :cond_0

    const/4 p3, 0x2

    .line 1742
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p4, p3, :cond_0

    const/4 p3, 0x5

    .line 1743
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public final isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "equals"

    .line 4394
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4395
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "contains"

    .line 4396
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4397
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "startsWith"

    .line 4398
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4399
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_2
    const-string p0, "endsWith"

    .line 4400
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4401
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_3
    const-string p0, "equalsIgnoreCase"

    .line 4402
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 4403
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final killAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .locals 16

    move-object/from16 v0, p0

    .line 2414
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0xd

    const/16 v14, 0x3e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MARs #"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    .line 2417
    invoke-virtual {v0, v15}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicyNum(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2414
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    .line 2418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    return-void
.end method

.method public killPackageProcs(Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 7

    .line 2422
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->killProcessForMARs(Ljava/lang/String;IIIZLjava/lang/String;)V

    return-void
.end method

.method public killPhantomProcessLocked(Ljava/util/List;)V
    .locals 1

    .line 5820
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/util/List;)V

    .line 5842
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public levelChange(ILcom/android/server/am/MARsPackageInfo;)Z
    .locals 12

    .line 1952
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "levelChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-gt p1, v0, :cond_2

    .line 1955
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1956
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getHasAppIcon()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_13

    const/16 v4, 0x2d

    const/4 v5, 0x4

    if-eq p1, v2, :cond_11

    const/4 v6, 0x3

    const/16 v7, 0x10

    const-wide/16 v8, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 2002
    :sswitch_0
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2003
    invoke-virtual {p2, v7}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2004
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_14

    .line 2005
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2006
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2007
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2008
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2096
    :sswitch_1
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    goto/16 :goto_3

    .line 2099
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v6

    :cond_3
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2100
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2101
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_14

    .line 2102
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2103
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2104
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2105
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2055
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2056
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    const/16 v4, 0x80

    if-eqz p1, :cond_7

    .line 2057
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p1

    if-eq p1, v3, :cond_6

    .line 2058
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p1

    const/16 v5, 0x40

    if-eq p1, v5, :cond_6

    .line 2059
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 2067
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p1, :cond_5

    .line 2068
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setIsInRestrictedBucket(Z)V

    .line 2070
    :cond_5
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    goto :goto_1

    .line 2060
    :cond_6
    :goto_0
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2061
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-virtual {p1, v5, v7, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2062
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2063
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2064
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto :goto_1

    .line 2073
    :cond_7
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2076
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    if-eq p1, v0, :cond_8

    .line 2077
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 2078
    :cond_8
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2081
    :cond_9
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 2082
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2088
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getSharedUidName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2089
    :cond_a
    invoke-virtual {p2, v6}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2092
    :cond_b
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setIsInUsageStats(Z)V

    .line 2093
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    goto/16 :goto_3

    .line 2109
    :sswitch_4
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2110
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2111
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2112
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2113
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    const/16 p0, 0x100

    .line 2114
    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2115
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    goto/16 :goto_3

    .line 2044
    :sswitch_5
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2045
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2046
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2047
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 2048
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2049
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p0, :cond_14

    .line 2050
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setIsInRestrictedBucket(Z)V

    .line 2051
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p2

    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    goto/16 :goto_3

    .line 2032
    :sswitch_6
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2033
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2034
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 2036
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_14

    .line 2037
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2038
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    goto/16 :goto_3

    .line 2019
    :sswitch_7
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2020
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2021
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2022
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2023
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    if-ne p1, v0, :cond_c

    .line 2024
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2026
    :cond_c
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p0, :cond_14

    .line 2027
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setIsInRestrictedBucket(Z)V

    .line 2028
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2, v4, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    goto/16 :goto_3

    .line 2013
    :sswitch_8
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2014
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2015
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2016
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    goto/16 :goto_3

    .line 1991
    :sswitch_9
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1992
    invoke-virtual {p2, v7}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1993
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1994
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_14

    .line 1995
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1996
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1997
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1998
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1981
    :sswitch_a
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v2, v5, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    .line 1983
    :cond_d
    iget-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    sub-long/2addr v6, v8

    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz p1, :cond_e

    const-wide/16 v8, 0x2

    iget-wide v10, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    mul-long/2addr v10, v8

    goto :goto_2

    :cond_e
    const-wide/32 v10, 0x4d3f6400

    :goto_2
    cmp-long p1, v6, v10

    if-lez p1, :cond_10

    .line 1984
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 1985
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 1986
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    const-string p1, "deepsleep"

    invoke-virtual {p0, p1, v5, v5}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1988
    :cond_10
    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    goto :goto_3

    .line 1967
    :cond_11
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1968
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1969
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    if-nez p1, :cond_14

    .line 1970
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1971
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p0, :cond_12

    .line 1972
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    .line 1974
    :cond_12
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1975
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1976
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1977
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto :goto_3

    .line 1964
    :cond_13
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    :cond_14
    :goto_3
    return v3

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_5
        0x200 -> :sswitch_4
        0x400 -> :sswitch_3
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyAnomalyApp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1786
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1787
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000000

    .line 1788
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.sdhms.action.FGS_ANOMALY"

    .line 1789
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkgName"

    .line 1790
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    .line 1791
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    .line 1792
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    .line 1793
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.sdhms"

    .line 1794
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1795
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAnomalyApp pkgname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " type:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MARsPolicyManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NOTI"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyAppSleepToDC(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 1772
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1773
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000000

    .line 1774
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.mars.APP_SLEEP_NOTIFY"

    .line 1775
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1776
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    .line 1777
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "specificpackagelist"

    .line 1778
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo p2, "specificpackageUidlist"

    .line 1779
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1780
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {p3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p2, "NOTI"

    .line 1781
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 4

    const/16 v0, 0x400

    .line 1616
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1618
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 1619
    new-instance v0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1620
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1621
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1622
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1623
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1624
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1625
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1626
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1627
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1628
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1632
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    if-eqz v0, :cond_3

    .line 1633
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1634
    :cond_3
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1635
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1636
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    :cond_4
    return-void
.end method

.method public onAppUsed(Ljava/lang/String;I)V
    .locals 4

    .line 1045
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1046
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setLastUsedTime(J)V

    .line 1050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableResetTime(J)V

    .line 1051
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setLatestProtectedPkg(Ljava/lang/String;I)V

    .line 1053
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 1055
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppUsedForSpecificCase(Ljava/lang/String;I)V
    .locals 3

    .line 5805
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 5806
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableResetTime(J)V

    .line 5809
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 5811
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppUsedForTimeChanged(J)V
    .locals 11

    .line 1648
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string v0, "MARsPolicyManager"

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppUsedForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1653
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_1

    const-string p0, "MARsPolicyManager"

    const-string p1, "SystemTime Changed Less than 30 min, didn\'t care!!"

    .line 1654
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 1659
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1661
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 1662
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1663
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v2

    .line 1664
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1665
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 1667
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    .line 1668
    invoke-virtual {v6, p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 1669
    invoke-virtual {v6, p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setDisableResetTime(J)V

    .line 1671
    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1672
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1673
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1674
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1675
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v6

    .line 1676
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1680
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 1680
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    .line 1127
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p4

    .line 1130
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    .line 1132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/android/server/am/MARsPackageInfo;->setLastUsedTime(J)V

    .line 1136
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p3, :cond_1

    .line 1137
    monitor-exit v0

    return-void

    .line 1139
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageResumedFG(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V
    .locals 4

    const-string p3, "com.android.systemui"

    .line 1063
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 1066
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 1075
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    sub-long v0, p3, v0

    const-wide/16 v2, 0x64

    cmp-long p5, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p5, :cond_1

    move p5, v0

    goto :goto_0

    :cond_1
    move p5, v1

    .line 1078
    :goto_0
    iput-wide p3, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    if-nez p5, :cond_2

    .line 1080
    iget p3, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    if-ne p3, p6, :cond_2

    iget-object p3, p0, Lcom/android/server/am/MARsPolicyManager;->mLastPkgName:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 1083
    :cond_2
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastPkgName:Ljava/lang/String;

    .line 1084
    iput p6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    .line 1086
    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    const-string p3, ".iqi"

    .line 1087
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1088
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onPackageResumedFG pkgName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", userId = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MARsPolicyManager"

    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p1, :cond_4

    .line 1093
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object p3

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p3, p1, p6}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->updateTopPkgList(Ljava/util/ArrayList;I)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 1095
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object p3

    invoke-virtual {p3, p1, p6}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->updateTopPkgList(Ljava/util/ArrayList;I)V

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 1101
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultHomePackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1102
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->unfreezeWallPaperPackage()V

    return-void

    :cond_6
    if-eqz p2, :cond_8

    .line 1110
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1111
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iget p1, p1, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    if-ne p6, p1, :cond_7

    .line 1112
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    if-eqz v0, :cond_8

    .line 1117
    invoke-virtual {p0, p2, p6}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Ljava/lang/String;I)V

    :cond_8
    return-void
.end method

.method public onSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.TTS_SERVICE"

    .line 989
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 990
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v0, "android.net.VpnService"

    .line 993
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->onVpnPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v0, "android.service.notification.NotificationListenerService"

    .line 997
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 998
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->onNotificationListenerBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string v0, "android.service.wallpaper.WallpaperService"

    .line 1001
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.android.service.wallpaper.LiveWallpaperService"

    .line 1002
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.android.service.wallpaper.CoverWallpaperService"

    .line 1003
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "android"

    .line 1005
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1006
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->onWallPaperPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1009
    :cond_5
    sget-object p4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p4

    .line 1010
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p3, "android.view.InputMethod"

    .line 1012
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string/jumbo p3, "org.androidprinting.intent.ACTION_GET_PRINT_SERVICE"

    .line 1013
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1014
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 1017
    :cond_7
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_0
    return-void
.end method

.method public onSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 911
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 915
    :cond_1
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    .line 918
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 919
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 920
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetEnabled(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    .line 921
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 922
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetDisabled(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 923
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 924
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    goto :goto_0

    :cond_4
    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    .line 925
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 926
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 927
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->onDeviceAdminEnabled(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string p0, "android.app.action.DEVICE_ADMIN_DISABLED"

    .line 928
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 929
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->onDeviceAdminDisabled(Ljava/lang/String;I)V

    .line 932
    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSpecialUnBindServiceActions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "android.intent.action.TTS_SERVICE"

    .line 1025
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p4, :cond_1

    .line 1026
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string p0, "android.net.VpnService"

    .line 1029
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1030
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->onVpnPkgUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string p0, "android.service.notification.NotificationListenerService"

    .line 1033
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1034
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->onNotificationListenerUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public postInit(Z)V
    .locals 5

    const-string v0, "MARsPolicyManager"

    .line 244
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v1, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsTrigger;->registerEmStateReceiver()V

    .line 250
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsTrigger;->registerSMDBChangedReceiver()V

    .line 252
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsDBManager;->isSMProviderExist()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 253
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 256
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    :try_start_0
    const-string/jumbo v3, "sys.config.mars_version"

    const-string v4, "9.00"

    .line 273
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "init(), we cannot set system property"

    .line 275
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "CHINA"

    .line 278
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 281
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChinaModel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 285
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->initHistoryBuffer()V

    .line 286
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->initNetHistoryBuffer()V

    .line 289
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 290
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 291
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_5
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendGetMARsPolicyConditionMsgToDBHandler(Z)V

    .line 295
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    .line 296
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 297
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendInitSettingMsgToDBHandler()V

    .line 298
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    .line 299
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 300
    invoke-static {}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getInstance()Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->init()V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->registerAppIdleStateReceiver()V

    .line 303
    :cond_6
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    .line 304
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsHandler;->sendGetBatteryStatMsgToMainHandler(Z)V

    .line 305
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 306
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateDisableResetTimeToDBHandler(Z)V

    const-string/jumbo p1, "sendUpdateDisableResetTimeToDBHandler enter"

    .line 307
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string/jumbo p1, "sys.dualapp.profile_id"

    const-string v2, "-1"

    .line 311
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    const/16 v2, 0x5f

    if-lt p1, v2, :cond_7

    const/16 v2, 0x63

    if-gt p1, v2, :cond_7

    .line 313
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    .line 314
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "init() get DualAppUserId failed!"

    .line 317
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->setSubUserIds()V

    return-void
.end method

.method public final registerAppIdleStateReceiver()V
    .locals 3

    .line 1465
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v0, :cond_0

    .line 1467
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener-IA;)V

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1468
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_0

    const-string p0, "MARsPolicyManager"

    const-string/jumbo v0, "registerAppIdleStateReceiver"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final removeInDozeAllowList(Ljava/util/List;)Z
    .locals 4

    const-string p0, "deviceidle"

    .line 5161
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 5160
    invoke-static {p0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p0

    .line 5163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5164
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5165
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v1

    .line 5166
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 5168
    :try_start_0
    invoke-interface {p0, v2}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 5170
    invoke-interface {p0, v2}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze not available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARsPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return v0
.end method

.method public removeRestrictListForCalmMode(Ljava/lang/StringBuilder;)V
    .locals 10

    .line 4616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4618
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 4619
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 4620
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 4621
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 4622
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    .line 4623
    invoke-virtual {v7, v3}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4624
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 4625
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    iget v8, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    .line 4626
    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4629
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-nez v8, :cond_1

    .line 4630
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4634
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 4635
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 4636
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 4637
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4639
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Calm"

    .line 4640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CancelPolicy-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " UFZ-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 4639
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 5036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5037
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5038
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5040
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5042
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5043
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5044
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v6

    .line 5045
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5046
    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 5047
    :cond_0
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 5048
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 5050
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1

    .line 5051
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5052
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 5053
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5054
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v6

    if-nez v6, :cond_2

    .line 5055
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5056
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5058
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5059
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 5060
    invoke-virtual {v5, p2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    :cond_3
    const/4 v4, 0x0

    .line 5062
    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    const/4 v4, 0x1

    .line 5063
    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 5064
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5065
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5066
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5067
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5068
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5069
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5070
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    .line 5071
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5072
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5075
    :cond_4
    :goto_1
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5078
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5079
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5081
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_8
    return-object v3
.end method

.method public reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 9

    .line 2483
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2484
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p4, :cond_2

    .line 2487
    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez p1, :cond_9

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p1

    if-ne p1, v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2488
    iget-object p0, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    if-eqz p0, :cond_9

    .line 2489
    aget-wide p1, p0, v6

    cmp-long p1, p1, v3

    if-eqz p1, :cond_1

    .line 2490
    aget-wide p1, p0, v5

    cmp-long p3, p1, v3

    if-eqz p3, :cond_0

    .line 2491
    aput-wide p1, p0, v6

    .line 2493
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    aput-wide p1, p0, v5

    goto/16 :goto_2

    .line 2495
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    aput-wide p1, p0, v6

    goto/16 :goto_2

    .line 2500
    :cond_2
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2501
    sget-boolean p4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz p4, :cond_3

    .line 2503
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPackageInfo;->setCheckJobRunningCount(I)V

    .line 2505
    :cond_3
    iget-boolean p4, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez p4, :cond_8

    .line 2506
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p4

    if-ne p4, v2, :cond_9

    const-string p4, "Binder(1)-free_buffer_full"

    .line 2507
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x3

    if-eqz p3, :cond_5

    .line 2508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    sub-long/2addr v2, v7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getLastUsedTime(Ljava/lang/String;I)J

    move-result-wide v7

    cmp-long p3, v2, v7

    if-lez p3, :cond_4

    goto :goto_0

    :cond_4
    move v5, v6

    :goto_0
    if-eqz v5, :cond_9

    .line 2510
    invoke-virtual {v1, p4}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2511
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    const-string p3, "LVU"

    .line 2512
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder(1)-free_buffer_full!"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2515
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result p3

    iget v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorUnfreezedCount:I

    if-lt p3, v2, :cond_7

    .line 2516
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result p3

    sub-int/2addr p3, v5

    invoke-virtual {v1, p3}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    .line 2517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p3, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aget-wide v7, p3, v6

    sub-long/2addr v2, v7

    iget-wide v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    cmp-long p3, v2, v7

    if-gez p3, :cond_9

    .line 2518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    sub-long/2addr v2, v7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getLastUsedTime(Ljava/lang/String;I)J

    move-result-wide v7

    cmp-long p3, v2, v7

    if-lez p3, :cond_6

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    if-eqz v5, :cond_9

    .line 2520
    invoke-virtual {v1, p4}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2521
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    const-string p3, "LVU"

    .line 2522
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UFZ counts excceed! "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2526
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result p0

    add-int/2addr p0, v5

    invoke-virtual {v1, p0}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    goto :goto_2

    .line 2530
    :cond_8
    iget-object p0, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aput-wide v3, p0, v6

    .line 2531
    aput-wide v3, p0, v5

    .line 2535
    :cond_9
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetAbusiveAlarm(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 2

    .line 2469
    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    and-int/lit8 p0, p0, -0x9

    .line 2470
    iput p0, p1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    :cond_0
    return-void
.end method

.method public resetAbusiveEvents(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "MARsPolicyManager"

    .line 2450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetAbusiveEvents uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkgname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "MARsPolicyManager"

    .line 2454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable restriction uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pkgname:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type:excessive_unfreeze"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V

    .line 2457
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 3

    const-string v0, "MARsPolicyManager"

    .line 2461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetAbusiveFlag uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkgname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2463
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->resetAbusiveAlarm(Lcom/android/server/am/MARsPackageInfo;)V

    .line 2464
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->resetAbusivePacket(Lcom/android/server/am/MARsPackageInfo;)V

    .line 2465
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetAbusivePacket(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 2

    .line 2475
    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    and-int/lit8 p0, p0, -0x11

    .line 2476
    iput p0, p1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 2477
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->updateAbnormalAppFirewall(IZ)V

    :cond_0
    return-void
.end method

.method public resetAutoDisabledAppState(Ljava/lang/String;IZ)V
    .locals 4

    .line 4509
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4510
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 4511
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4512
    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4513
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 4514
    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4515
    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4519
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    move p3, v2

    .line 4520
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(Ljava/lang/String;IZ)V

    return-void

    :catchall_0
    move-exception p0

    .line 4519
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public restrictAbusiveApp(Ljava/lang/String;II)V
    .locals 5

    .line 2426
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "MARsPolicyManager"

    .line 2429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAbusiveAppFromBartender uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkgname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type:excessive_unfreez"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    sget-object p1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result p1

    if-ne p1, p3, :cond_0

    .line 2431
    iget p1, v1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    goto :goto_0

    .line 2432
    :cond_0
    sget-object p1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result p1

    if-ne p1, p3, :cond_1

    .line 2433
    iget p1, v1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 2434
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p3

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Lcom/android/server/am/FreecessController;->updateAbnormalAppFirewall(IZ)V

    .line 2435
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 2437
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    const-string v2, "excessive_unfreeze"

    invoke-virtual {p1, p3, v1, v2}, Lcom/android/server/am/MARsHandler;->sendAnomalyMsgToMainHandler(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "Abusive"

    .line 2438
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[excessive_unfreez]"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restrictBySEP(IIZLjava/lang/String;I)Z
    .locals 2

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4789
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4793
    :cond_0
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4794
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4795
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_2

    const-string p3, "added_from_user_manual"

    goto :goto_0

    :cond_2
    const-string p3, "added_from_mars_auto"

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_4

    const-string p3, "deleted_from_user_manual"

    goto :goto_0

    :cond_4
    const-string p3, "deleted_from_mars_auto"

    goto :goto_0

    :cond_5
    const-string p3, "default"

    .line 4804
    :goto_0
    new-instance v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    .line 4805
    new-instance p1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-direct {p1, p4, p5, v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4806
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public restrictJobsByUid(IZ)V
    .locals 3

    .line 5662
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v0, :cond_0

    return-void

    .line 5664
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 5665
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.ACTION_JOB_RESTRICT_UID"

    .line 5666
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    .line 5667
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "restrict"

    .line 5668
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restrictJobsByUid: u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", restrict="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MARsPolicyManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {p2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public setAllPoliciesOnOffState(IZ)V
    .locals 3

    .line 695
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllPoliciesOnOffState on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "spcm_switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEV"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v0, p1, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const p2, 0x98967f

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 727
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    goto :goto_0

    .line 719
    :cond_2
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    const/4 v0, 0x2

    .line 720
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 721
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p2

    if-nez p2, :cond_7

    .line 722
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    goto :goto_0

    .line 709
    :cond_3
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v2, :cond_4

    .line 710
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 711
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 713
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p2

    if-nez p2, :cond_5

    .line 714
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 716
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    goto :goto_0

    .line 703
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 704
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 705
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 732
    :cond_7
    :goto_0
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    :cond_8
    return-void
.end method

.method public declared-synchronized setCarModeOnState(Z)V
    .locals 0

    monitor-enter p0

    .line 504
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDeviceIdleModeState(Z)V
    .locals 0

    monitor-enter p0

    .line 512
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDualAppEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 536
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDualAppUserId(I)V
    .locals 0

    monitor-enter p0

    .line 528
    :try_start_0
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setEnabledSetting(Ljava/lang/String;III)Z
    .locals 8

    const-string/jumbo p0, "package"

    .line 2306
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    const-string v5, "auto_disabler"

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p2

    .line 2309
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "MARsPolicyManager"

    .line 2312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error occurred in setEnabledSetting()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2314
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2315
    throw p0
.end method

.method public setFGSRestrictionTarget(Ljava/lang/String;I)V
    .locals 5

    .line 5789
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 5790
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5792
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    .line 5793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf731400

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    .line 5794
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v1

    sget p2, Lcom/android/server/am/MARsPolicyManager;->FGS_BATTERY_USAGE_THRESHOLD:I

    int-to-double v3, p2

    cmpl-double p2, v1, v3

    if-ltz p2, :cond_0

    .line 5795
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    const-string v3, "excessive_fgs"

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendAnomalyMsgToMainHandler(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5799
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 5801
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/mars/MARsBigData;->getInstance(Landroid/content/Context;)Lcom/android/server/am/mars/MARsBigData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/MARsBigData;->sendFalconBigData(Lcom/android/server/am/MARsPackageInfo;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 5799
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setFakeTopActivityList(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    return-void
.end method

.method public declared-synchronized setFirstTimeUpdatePkgsState(Z)V
    .locals 0

    monitor-enter p0

    .line 520
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setGoogleEnabled(Ljava/lang/String;I)V
    .locals 2

    .line 4818
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4819
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 4821
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4822
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4824
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized setIsManualMode(Z)V
    .locals 3

    monitor-enter p0

    .line 480
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 482
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setLastNotiSentTimeForDisabled(J)V

    .line 484
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 485
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    :cond_0
    const-string v0, "DEV"

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManualMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "ON"

    goto :goto_0

    :cond_1
    const-string p1, "OFF"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setKeyguardPkgInfo(Ljava/lang/String;I)V
    .locals 0

    .line 871
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->setKeyguardInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public setLastNotiSentTimeForDisabled(J)V
    .locals 0

    .line 1802
    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    return-void
.end method

.method public declared-synchronized setManagedProfileEnabled(ZI)V
    .locals 1

    monitor-enter p0

    .line 544
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedProfileEnabled:Z

    .line 545
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 547
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 551
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 551
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setMaxLevel(ILjava/lang/String;)V
    .locals 6

    .line 3995
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 4005
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4006
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/am/MARsPolicyManager;->enablePackageBySEP(Ljava/lang/String;IZ)Z

    .line 4009
    :cond_2
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    .line 4010
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x2d

    goto :goto_0

    :cond_3
    const/16 v5, 0x28

    .line 4009
    :goto_0
    invoke-virtual {p1, p2, v4, v5, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x400

    :goto_1
    if-nez v2, :cond_5

    .line 4023
    monitor-exit v0

    return-void

    .line 4025
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 4026
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4027
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4028
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "1"

    goto :goto_2

    :cond_6
    const-string p1, "0"

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4029
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "1"

    goto :goto_3

    :cond_7
    const-string p1, "0"

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4030
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFasReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4031
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4032
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4033
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4034
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4035
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p0

    goto :goto_4

    :cond_8
    const/4 p0, 0x0

    .line 4038
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_9

    .line 4040
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p0

    .line 4038
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setPackageDisablerEnabled(Z)V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eq v1, p1, :cond_1

    .line 576
    iput-boolean p1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 577
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPackageDisablerEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disabler_switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DEV"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setPackagesUnusedLockingTime(I)V
    .locals 8

    .line 737
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    const-string v1, "MARsPolicyManager"

    if-eqz v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    int-to-long v4, p1

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 742
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 745
    :cond_1
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    sub-long/2addr v4, v6

    .line 746
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    if-ne p1, v2, :cond_3

    .line 750
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->callRestrictAppForAllPkgs()V

    .line 751
    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p1, :cond_2

    .line 752
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    const/16 v0, 0x2d

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->callSetAppStandbyBuckets(IIZ)V

    :cond_2
    const-string p1, "DEV"

    const-string v0, "Auto restriction\'s battery condition changed !"

    .line 754
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    .line 756
    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 758
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    const-wide/32 v3, 0x6ddd00

    .line 759
    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 760
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 761
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_4

    const-string p0, "DEBUGGING mode turned on, skip to check battery usage !"

    .line 762
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 765
    :cond_3
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    const/4 p1, 0x0

    .line 766
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 767
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setSCPMList(Ljava/util/ArrayList;)V
    .locals 27

    move-object/from16 v7, p0

    const-string v0, ""

    const-string v1, "[FRZ]"

    const-string v2, "[FAS]"

    const-string v3, "[FOS]"

    const-string v4, "[DIS]"

    .line 5677
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, ""

    const-string v1, "[FRZ]"

    const-string v2, "[FAS]"

    const-string v3, "[FOS]"

    const-string v4, "[DIS]"

    .line 5678
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v9

    .line 5680
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5681
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5682
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5685
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    monitor-enter v1

    .line 5686
    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5687
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5688
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5690
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5694
    sget-object v16, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v16

    .line 5695
    :try_start_1
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    const/16 v6, 0x10

    const/4 v5, 0x4

    const/16 v17, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 5696
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 5697
    invoke-virtual {v0, v4}, Lcom/android/server/am/MARsPackageInfo;->setIsSCPMTarget(Z)V

    .line 5699
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5700
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    const-string/jumbo v4, "specificDisable"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 5702
    :cond_0
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v18

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v19

    const/16 v20, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v14, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move/from16 v5, v19

    move-object/from16 p1, v13

    move v13, v6

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    const/16 v1, 0x2000

    .line 5704
    invoke-virtual {v7, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    .line 5705
    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5706
    invoke-virtual {v7, v0, v14}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v4, v14

    goto :goto_1

    :cond_1
    move/from16 v18, v5

    move-object/from16 p1, v13

    move v13, v6

    move-object/from16 v4, v17

    const/4 v1, 0x0

    .line 5708
    :goto_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    :try_start_2
    const-string/jumbo v0, "package"

    .line 5712
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 5713
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 5724
    :cond_2
    :try_start_3
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_6

    const-string v0, "MARsPolicyManager"

    .line 5725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is already disabled, so we will not disable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5716
    :cond_3
    :goto_2
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-interface {v0, v3, v5}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5717
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x4

    const/16 v24, 0x0

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v25

    const-string v26, "auto_disabler"

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v26}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 5719
    invoke-static {v4, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 5720
    invoke-static {v4, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move v0, v2

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    :goto_3
    const-string v1, "MARsPolicyManager"

    .line 5728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred in disable package : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/4 v2, 0x1

    :cond_6
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    .line 5733
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 5734
    :try_start_4
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v7, v0, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 5736
    invoke-virtual {v7, v4, v0}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 5737
    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5739
    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    .line 5740
    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5743
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5744
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_8

    move v15, v2

    .line 5746
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v8, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v18

    .line 5747
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5748
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5749
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "1"

    goto :goto_6

    :cond_9
    move-object/from16 v4, v17

    :goto_6
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5750
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "1"

    goto :goto_7

    :cond_a
    move-object/from16 v4, v17

    :goto_7
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5751
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    if-ne v4, v2, :cond_b

    .line 5752
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v17

    :cond_b
    move-object/from16 v2, v17

    .line 5751
    invoke-virtual {v3, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5753
    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5754
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5755
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 5756
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0

    .line 5757
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5759
    :cond_c
    monitor-exit v1

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_d
    :goto_8
    move-object/from16 v13, p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 5708
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_e
    if-eqz v15, :cond_f

    const-string v0, "LVU"

    .line 5763
    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 5766
    :cond_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 5767
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 5768
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    const-string v1, "deepsleepspecific"

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_10
    return-void

    :catchall_2
    move-exception v0

    .line 5688
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public declared-synchronized setScreenOnState(Z)V
    .locals 3

    monitor-enter p0

    .line 495
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    const-string v0, "SYS"

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "ON"

    goto :goto_0

    :cond_0
    const-string p1, "OFF"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSubUserIds()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 327
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v2

    .line 330
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 331
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 331
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public setTTSPkgInfo(I)V
    .locals 1

    .line 936
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgBind(Ljava/lang/Integer;)V

    .line 937
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTTSPkgInfo : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final skipTriggerAction(Lcom/android/server/am/MARsPackageInfo;)Z
    .locals 7

    .line 2933
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v0

    .line 2935
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 2939
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v4

    if-eq v0, v4, :cond_2

    :cond_1
    const/4 v4, 0x4

    if-le v0, v4, :cond_3

    :cond_2
    return v3

    :cond_3
    if-ne v0, v4, :cond_7

    .line 2945
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    .line 2948
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2

    .line 2951
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v5

    if-eqz v5, :cond_8

    return v2

    .line 2955
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_c

    .line 2956
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result p0

    if-nez p0, :cond_b

    .line 2957
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result p0

    if-gt p0, v1, :cond_a

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    .line 2961
    :cond_9
    invoke-virtual {p1, v6}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    goto :goto_1

    :cond_a
    :goto_0
    return v3

    :cond_b
    :goto_1
    return v2

    .line 2965
    :cond_c
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 2968
    :cond_d
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2969
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getDeviceIdleModeState()Z

    move-result p0

    if-eqz p0, :cond_e

    if-ge v0, v6, :cond_e

    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/2addr p0, v4

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v3

    :cond_f
    return v2
.end method

.method public final sleepPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 5336
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5337
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5338
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5339
    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v13, 0x40

    goto :goto_0

    :cond_0
    const/4 v13, 0x2

    .line 5340
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5341
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5342
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v1

    .line 5343
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5344
    invoke-virtual {v0, v4}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 5347
    :cond_1
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getActiveUids()Ljava/util/Map;

    move-result-object v5

    .line 5348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 5349
    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v15

    .line 5350
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 5352
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 5353
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v16

    const/16 v17, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v11, v5

    move/from16 v5, v16

    move-object v12, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 5354
    invoke-virtual {v0, v12, v11}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 5355
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    move-object v12, v6

    .line 5357
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_4

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    .line 5358
    :goto_2
    invoke-virtual {v0, v13, v12}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 5360
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 5361
    invoke-virtual {v12, v7}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 5363
    new-instance v2, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5364
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5365
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "1"

    goto :goto_3

    :cond_5
    const-string v6, "0"

    :goto_3
    invoke-virtual {v2, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5366
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5367
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5368
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5369
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5370
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v2

    .line 5371
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5372
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5373
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x40

    if-ne v13, v2, :cond_8

    if-eqz v1, :cond_8

    const-string v1, "auto run off"

    const-string v6, "UserChangeFAS"

    .line 5374
    invoke-virtual {v0, v3, v4, v1, v6}, Lcom/android/server/am/MARsPolicyManager;->addRestrictListAvoidAssoicationLaunch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const/16 v2, 0x40

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v2, 0x40

    const/4 v5, 0x2

    .line 5378
    :cond_8
    :goto_5
    monitor-exit v15

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5382
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 5383
    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v4

    .line 5384
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 5385
    :try_start_1
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v11

    invoke-virtual {v0, v6, v8, v11}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 5387
    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    if-eqz v4, :cond_d

    .line 5388
    invoke-virtual {v0, v13, v6}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5389
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    if-le v3, v2, :cond_a

    .line 5390
    invoke-virtual {v6, v2}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 5392
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 5393
    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 5394
    invoke-virtual {v6, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5396
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5397
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    .line 5399
    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5400
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5402
    :goto_7
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5403
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5404
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "1"

    goto :goto_8

    :cond_c
    const-string v4, "0"

    :goto_8
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5405
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5406
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5407
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5408
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5409
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5410
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 5411
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5412
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5415
    :cond_d
    monitor-exit v5

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 5418
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_f
    return-object v10
.end method

.method public final switchPolicies(IZ)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 796
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 801
    iput-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_0
    if-eqz p1, :cond_3

    .line 804
    iput-boolean v2, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_3

    .line 807
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_2

    .line 808
    iput-boolean v2, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 810
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_3

    .line 811
    iput-boolean v1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_3
    :goto_0
    if-nez p2, :cond_7

    .line 815
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 816
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    const-string/jumbo p2, "switchPolicy"

    invoke-virtual {p1, p2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 820
    :cond_4
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 821
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz p2, :cond_5

    .line 822
    invoke-virtual {p2}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 825
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz p0, :cond_6

    .line 826
    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 827
    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendInitSettingMsgToDBHandler()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 827
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public switchUser(I)V
    .locals 3

    const-string v0, "DEV"

    const-string/jumbo v1, "switchUser"

    .line 340
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getScreenOnFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 344
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->removeBgTriggerMsg()V

    .line 347
    :cond_0
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string v2, "MUM"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .line 351
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v0, :cond_2

    .line 354
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 357
    :cond_2
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/FilterManager;->deInit()V

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->initCurrentUser(I)V

    .line 359
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    return-void
.end method

.method public triggerAction()V
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "MARsPolicyManager"

    const-string/jumbo v2, "triggerAction called!"

    .line 2980
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const-string v2, "[FRZ]"

    const-string v3, "[FAS]"

    const-string v4, "[FOS]"

    const-string v5, "[DIS]"

    .line 2984
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, ""

    const-string v2, "[FRZ]"

    const-string v3, "[FAS]"

    const-string v4, "[FOS]"

    const-string v5, "[DIS]"

    .line 2985
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [I

    .line 2990
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getIsSmartSwitchWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2994
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2995
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2997
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 2998
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    .line 2999
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 3000
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getDeviceIdleModeState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3001
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->getActiveSensorList()V

    .line 3002
    :cond_1
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getScreenOnState()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 3005
    :cond_2
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    move v2, v10

    move v6, v2

    const/4 v1, 0x0

    .line 3006
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v15, 0x1

    if-ge v6, v3, :cond_1f

    .line 3007
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move-object/from16 v17, v1

    move/from16 v18, v2

    const/4 v2, 0x0

    .line 3008
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_1e

    .line 3009
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v1, :cond_1c

    .line 3011
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3012
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->skipTriggerAction(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_d

    .line 3014
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    .line 3015
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    move/from16 v21, v6

    .line 3016
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3017
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    move/from16 v22, v2

    const/16 v2, 0xa

    if-eq v4, v15, :cond_10

    const/4 v15, 0x2

    if-eq v4, v15, :cond_10

    const/4 v15, 0x3

    if-eq v4, v15, :cond_8

    const/4 v15, 0x4

    if-eq v4, v15, :cond_4

    move-object/from16 v28, v3

    move-object/from16 v16, v8

    move-object/from16 v29, v11

    move/from16 v30, v21

    move/from16 v27, v22

    const/4 v10, 0x0

    :goto_2
    const/16 v19, 0x0

    goto/16 :goto_c

    .line 3021
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3022
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    const/16 v19, 0x0

    move-object v2, v1

    move-object v1, v10

    move-object v15, v2

    move/from16 v27, v22

    move-object/from16 v2, p0

    move-object/from16 v28, v3

    move-object v3, v4

    move-object/from16 v29, v11

    const/4 v11, 0x3

    move v4, v5

    move v5, v6

    move/from16 v30, v21

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 3023
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    :goto_3
    move-object/from16 v16, v8

    goto :goto_2

    :cond_5
    move-object v15, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v11

    move/from16 v30, v21

    move/from16 v27, v22

    const/4 v11, 0x3

    .line 3024
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3025
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_7

    .line 3027
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 3028
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 3031
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    goto/16 :goto_6

    :cond_8
    move-object/from16 v28, v3

    move-object/from16 v29, v11

    move v11, v15

    move/from16 v30, v21

    move/from16 v27, v22

    move-object v15, v1

    .line 3035
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3036
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3037
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_9

    .line 3039
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 3040
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto/16 :goto_3

    .line 3044
    :cond_9
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    invoke-virtual {v1, v11, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_a

    .line 3046
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 3047
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto/16 :goto_3

    .line 3050
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v9, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v4

    const/16 v3, 0xd

    if-eq v3, v1, :cond_b

    const/16 v3, 0xc

    if-eq v3, v1, :cond_b

    const/4 v3, 0x4

    if-eq v3, v1, :cond_c

    if-ne v2, v1, :cond_f

    goto :goto_4

    :cond_b
    const/4 v3, 0x4

    :cond_c
    :goto_4
    const/4 v1, 0x2

    .line 3055
    invoke-virtual {v15, v1}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    move-object/from16 v16, v8

    const/16 v18, 0x1

    :goto_5
    const/16 v19, 0x0

    goto/16 :goto_e

    :cond_d
    const/4 v3, 0x4

    .line 3060
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_e

    .line 3062
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    const/16 v19, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 3063
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto/16 :goto_3

    .line 3066
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    :cond_f
    :goto_6
    move-object/from16 v16, v8

    const/4 v10, 0x0

    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_10
    move-object v15, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v11

    move/from16 v30, v21

    move/from16 v27, v22

    const/4 v11, 0x3

    .line 3072
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3073
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_11

    .line 3075
    invoke-virtual {v15, v11}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 3076
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v19, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 3077
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object/from16 v16, v8

    goto/16 :goto_c

    :cond_11
    move-object/from16 v19, v3

    goto :goto_7

    :cond_12
    const/16 v19, 0x0

    .line 3081
    :goto_7
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3082
    invoke-virtual {v0, v15}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3083
    invoke-virtual {v15, v11}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    const-string v1, "MARsPolicyManager"

    .line 3084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Level up freecess excluded app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|userId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v16, v8

    goto/16 :goto_e

    .line 3089
    :cond_14
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_15

    .line 3092
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v20

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v21

    const/16 v22, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move v11, v3

    move-object/from16 v3, v16

    move-object/from16 v31, v4

    move/from16 v4, v20

    move-object/from16 v16, v8

    move v8, v5

    move/from16 v5, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    move-object/from16 v1, v31

    .line 3093
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_9

    :cond_15
    move v11, v3

    move-object/from16 v21, v6

    move-object/from16 v16, v8

    move v8, v5

    .line 3095
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x12

    if-ne v11, v1, :cond_17

    .line 3096
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getCheckJobRunningCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3097
    invoke-virtual {v15, v1}, Lcom/android/server/am/MARsPackageInfo;->setCheckJobRunningCount(I)V

    const/4 v2, 0x5

    if-lt v1, v2, :cond_17

    if-nez v17, :cond_16

    .line 3100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    :cond_16
    move-object/from16 v1, v17

    .line 3102
    :goto_8
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    .line 3106
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v9, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    move-object/from16 v1, v19

    const/16 v18, 0x1

    .line 3108
    :goto_9
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    if-eqz v2, :cond_1b

    .line 3111
    invoke-virtual {v0, v8}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_a

    :cond_18
    const/4 v6, 0x0

    :goto_a
    if-nez v11, :cond_1a

    if-eqz v6, :cond_1b

    .line 3115
    iget-wide v4, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v22, 0x0

    cmp-long v6, v4, v22

    if-nez v6, :cond_19

    .line 3116
    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v2, v12

    iput-wide v2, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    goto :goto_b

    :cond_19
    cmp-long v4, v12, v4

    if-ltz v4, :cond_1b

    .line 3117
    iget-wide v4, v0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v2, v4

    cmp-long v2, v12, v2

    if-ltz v2, :cond_1b

    const-wide/16 v2, 0x0

    .line 3118
    iput-wide v2, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    .line 3119
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v20

    const/16 v24, 0xc8

    const/16 v25, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KLRP uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move/from16 v22, v8

    move/from16 v23, v10

    invoke-virtual/range {v20 .. v26}, Lcom/android/server/am/MARsHandler;->sendKillPackageProcsMsgToMainHandler(Ljava/lang/String;IIIZLjava/lang/String;)V

    const-string v2, "KLRP"

    .line 3120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    const/16 v2, 0x8

    if-eq v11, v2, :cond_1b

    .line 3123
    iget-wide v2, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    .line 3124
    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v2, v12

    iput-wide v2, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    :cond_1b
    :goto_b
    move-object v10, v1

    :goto_c
    if-eqz v10, :cond_1d

    .line 3130
    invoke-static {v10}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetmaxLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-static {v10, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputpossibleLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 3131
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    :goto_d
    move/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v30, v6

    move-object/from16 v16, v8

    move-object/from16 v29, v11

    goto/16 :goto_5

    :cond_1d
    :goto_e
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v8, v16

    move-object/from16 v3, v28

    move-object/from16 v11, v29

    move/from16 v6, v30

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_1e
    move/from16 v30, v6

    move-object/from16 v16, v8

    move-object/from16 v29, v11

    const/16 v19, 0x0

    add-int/lit8 v6, v30, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v16, v8

    move-object/from16 v29, v11

    .line 3136
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_20

    .line 3137
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3138
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 3140
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    goto :goto_f

    .line 3143
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    .line 3144
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setFirstTimeUpdatePkgsState(Z)V

    goto :goto_10

    :cond_21
    const/4 v1, 0x0

    :goto_10
    move v3, v1

    move v4, v3

    move-object/from16 v11, v29

    .line 3147
    :goto_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 3148
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3150
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v6

    if-nez v6, :cond_22

    .line 3151
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v6, :cond_22

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string v6, "MARsPolicyManager"

    .line 3152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has floating or onScreen window, skip to freeze"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    const/4 v10, 0x3

    const/4 v12, 0x4

    goto/16 :goto_19

    .line 3157
    :cond_22
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6

    .line 3158
    :try_start_1
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetpossibleLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_2c

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2a

    const/4 v10, 0x3

    if-eq v8, v10, :cond_26

    const/4 v12, 0x4

    if-eq v8, v12, :cond_23

    goto :goto_13

    .line 3161
    :cond_23
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    invoke-virtual {v8, v13, v14}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 3162
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    const-string/jumbo v15, "triggerAction"

    invoke-virtual {v8, v13, v14, v15}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 3164
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 3165
    :cond_25
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_12

    :cond_26
    const/4 v12, 0x4

    .line 3168
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 3169
    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->forceStopAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 3170
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_12
    const/4 v8, 0x1

    goto/16 :goto_19

    .line 3172
    :cond_27
    :try_start_3
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-static {v11, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    :cond_28
    :goto_13
    const/4 v8, 0x1

    goto/16 :goto_18

    .line 3175
    :cond_29
    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->killAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_13

    :cond_2a
    const/4 v10, 0x3

    const/4 v12, 0x4

    .line 3179
    iget-boolean v8, v0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v8, :cond_2b

    .line 3180
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetfasType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    const/4 v13, 0x2

    if-ne v8, v13, :cond_2b

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v8

    if-nez v8, :cond_2b

    const/4 v8, 0x1

    .line 3181
    invoke-static {v5, v8}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 3182
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v13

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v15

    const/16 v1, 0x2d

    invoke-virtual {v13, v14, v15, v1, v8}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    goto :goto_14

    :cond_2b
    const/4 v8, 0x1

    goto :goto_14

    :cond_2c
    move v8, v10

    const/4 v10, 0x3

    const/4 v12, 0x4

    .line 3187
    :goto_14
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v13

    if-eqz v13, :cond_2d

    const/4 v13, 0x0

    goto :goto_15

    :cond_2d
    move v13, v8

    :goto_15
    invoke-virtual {v1, v13}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v21

    .line 3188
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v13

    if-eqz v13, :cond_2e

    const/4 v13, 0x0

    goto :goto_16

    :cond_2e
    move v13, v8

    :goto_16
    invoke-virtual {v1, v13}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v22

    .line 3190
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/am/ActivityManagerService;->isPendingBroadcastPackageLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "MARsPolicyManager"

    .line 3191
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has pending broadcast, skip to freeze"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_19

    .line 3195
    :cond_2f
    :try_start_4
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3196
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v1, :cond_30

    .line 3197
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/am/FreecessController;->makePkgIdleIfNeeded(I)V

    .line 3198
    :cond_30
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v17

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v18

    const-string v19, "LEV"

    const/16 v20, 0x2

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/FreecessController;->freezePackage(ILjava/lang/String;IZZ)Z

    move-result v1

    goto :goto_17

    :cond_31
    const/4 v1, 0x0

    :goto_17
    if-nez v1, :cond_32

    .line 3204
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_19

    .line 3207
    :cond_32
    :goto_18
    :try_start_5
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetpossibleLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-static {v5, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 3208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    aget-object v13, v16, v3

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v16, v3

    .line 3210
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v3, v8

    :goto_19
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_33
    const/4 v12, 0x4

    .line 3213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3216
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    const/4 v10, 0x0

    .line 3217
    :goto_1a
    :try_start_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_38

    .line 3218
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3219
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-virtual {v0, v6, v8, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    if-eqz v6, :cond_36

    .line 3222
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 3223
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v5

    if-ne v5, v12, :cond_34

    .line 3224
    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 3225
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 3226
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 3227
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 3228
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 3229
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 3230
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 3231
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    .line 3232
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3235
    :cond_34
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v5

    const/4 v8, 0x2

    if-le v5, v8, :cond_37

    .line 3236
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3238
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_35

    .line 3239
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v5, v13, v14, v6}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3241
    :cond_35
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v5, :cond_37

    const-string v5, "MARsPolicyManager"

    .line 3242
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add mMARsRestrictedPackages "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " level : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " policy --"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_36
    const/4 v8, 0x2

    :cond_37
    :goto_1b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1a

    .line 3246
    :cond_38
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3248
    array-length v4, v11

    if-lez v4, :cond_39

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/server/am/FreecessController;->destroySocketsForTargetUids([I)V

    .line 3250
    :cond_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3a

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_3a
    if-nez v3, :cond_3b

    if-eqz v2, :cond_3c

    :cond_3b
    const-string v1, "LEV"

    move-object/from16 v2, v16

    .line 3253
    invoke-virtual {v0, v2, v9}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void

    :catchall_1
    move-exception v0

    .line 3246
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 3136
    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method public updateBackupServicePkg(IZ)V
    .locals 7

    .line 879
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 885
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-string v1, "BackupService"

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)Z

    :cond_1
    const-string v0, "DEV"

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupService uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isStart="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 884
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateDisableCandidateInfo(Ljava/util/List;)Ljava/util/List;
    .locals 10

    .line 5500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    .line 5502
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 5504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5505
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5506
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v2

    .line 5507
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5508
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5510
    :cond_0
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 5511
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v5, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5512
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    const/4 v5, 0x4

    if-ge v3, v5, :cond_1

    .line 5513
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v3

    .line 5514
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    const/4 v9, 0x7

    .line 5513
    invoke-virtual {v3, v9, v6, v7, v8}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 5515
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5516
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5517
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5518
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5519
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5520
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 5521
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5522
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5526
    :cond_1
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5529
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_3
    return-object v1
.end method

.method public final updateDoNotDisableInfo(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 5470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5473
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5474
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v2

    .line 5475
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5476
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5478
    :cond_0
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 5479
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v5, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    .line 5481
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5482
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 5484
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5485
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5486
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5487
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5488
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5489
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 5490
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5491
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5493
    :cond_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5495
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_4
    return-object v1
.end method

.method public updateFasState(Ljava/lang/String;II)V
    .locals 1

    .line 2127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 2131
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz p0, :cond_1

    const/16 v0, 0x46

    .line 2132
    invoke-interface {p0, v0, p2, p1, p3}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateFasState exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateForegroundPackageToPkgStatus(Ljava/lang/String;IIZ)V
    .locals 0

    .line 845
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter p1

    if-eqz p4, :cond_0

    .line 847
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 849
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateFromMARsMainThread()V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ""

    const-string v2, "[FRZ]"

    const-string v3, "[FAS]"

    const-string v4, "[FOS]"

    const-string v5, "[DIS]"

    .line 1807
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "[FRZ]"

    const-string v4, "[FAS]"

    const-string v5, "[FOS]"

    const-string v6, "[DIS]"

    .line 1808
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 1810
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "MARsPolicyManager"

    const-string v1, "Now manual mode is on, we will not update anything!"

    .line 1811
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1815
    :cond_0
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_1

    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "updateFromMARsThread"

    .line 1816
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1819
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1823
    :goto_0
    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v8, v10, :cond_17

    .line 1824
    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    const/4 v11, 0x0

    .line 1825
    :goto_1
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_16

    .line 1826
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/MARsPackageInfo;

    .line 1828
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_2

    .line 1832
    :cond_2
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v13

    const/16 v14, 0x100

    if-ne v13, v14, :cond_3

    goto :goto_2

    .line 1836
    :cond_3
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_4

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v13

    if-eqz v13, :cond_4

    :goto_2
    move-wide/from16 v18, v3

    move v13, v8

    goto/16 :goto_b

    .line 1840
    :cond_4
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v13

    const/16 v15, 0x8

    const/4 v7, 0x1

    if-nez v13, :cond_9

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v13

    if-eq v13, v15, :cond_9

    const/16 v13, 0x2000

    .line 1841
    invoke-virtual {v0, v13, v12}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x10

    .line 1842
    invoke-virtual {v12, v13}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    if-nez v9, :cond_5

    move v9, v7

    .line 1844
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v14

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v14

    .line 1845
    new-instance v13, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v13

    .line 1846
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v13

    .line 1847
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "1"

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v13, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v13

    .line 1848
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "1"

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v13, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v13

    .line 1849
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v15

    if-ne v15, v7, :cond_8

    .line 1850
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    .line 1849
    :goto_5
    invoke-virtual {v13, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v13

    .line 1851
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v13

    .line 1852
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v13

    .line 1853
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v13

    .line 1854
    invoke-virtual {v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v13

    .line 1855
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move v13, v8

    .line 1860
    iget-wide v7, v0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    const-wide/16 v16, 0x0

    cmp-long v7, v7, v16

    if-eqz v7, :cond_11

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_11

    iget-wide v7, v0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    sub-long v7, v3, v7

    .line 1861
    iget-boolean v15, v0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v15, :cond_a

    iget-wide v14, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    goto :goto_6

    :cond_a
    const-wide/32 v14, 0x5265c00

    :goto_6
    cmp-long v7, v7, v14

    if-lez v7, :cond_11

    .line 1862
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v7

    .line 1863
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    move-wide/from16 v18, v3

    const/4 v3, 0x7

    .line 1862
    invoke-virtual {v7, v3, v8, v14, v15}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_b

    .line 1864
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    aget-object v8, v2, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    goto/16 :goto_b

    :cond_b
    const/16 v3, 0x8

    .line 1867
    invoke-virtual {v0, v3, v12}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v9, :cond_c

    const/4 v9, 0x1

    .line 1869
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 1870
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1871
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1872
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "1"

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1873
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "1"

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1874
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_f

    .line 1875
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    .line 1874
    :goto_9
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 1876
    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1877
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1878
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1879
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 1880
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1882
    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    if-nez v3, :cond_15

    const/4 v3, 0x1

    .line 1883
    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 1884
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v3

    const-string v4, "deepsleepdismiss"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v7}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_b

    .line 1887
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    aget-object v7, v2, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    goto/16 :goto_b

    :cond_11
    move-wide/from16 v18, v3

    .line 1893
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1894
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_13

    const/16 v3, 0x400

    .line 1895
    invoke-virtual {v0, v3, v12}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1896
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_13

    .line 1897
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1898
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1899
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "1"

    goto :goto_a

    :cond_12
    const-string v4, "0"

    :goto_a
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1900
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1901
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1902
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1903
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1904
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1905
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1906
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 1907
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    :cond_13
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_14

    goto :goto_b

    .line 1917
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    :cond_15
    :goto_b
    add-int/lit8 v11, v11, 0x1

    move v8, v13

    move-wide/from16 v3, v18

    goto/16 :goto_1

    :cond_16
    move-wide/from16 v18, v3

    move v13, v8

    add-int/lit8 v8, v13, 0x1

    goto/16 :goto_0

    .line 1922
    :cond_17
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_18

    const-string v3, "LVU"

    .line 1925
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_19
    return-void

    :catchall_0
    move-exception v0

    .line 1922
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V
    .locals 0

    .line 4097
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetfasType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4098
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetstate(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 4099
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4100
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 4101
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4102
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetmaxLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 4103
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 4104
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setIsInRestrictedBucket(Z)V

    .line 4105
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableReason(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    return-void
.end method

.method public final updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .locals 0

    .line 4085
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputfasType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4086
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputstate(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4087
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 4088
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4089
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4090
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputmaxLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4091
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 4092
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getIsInRestrictedBucket()Z

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 4093
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableReason(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    return-void
.end method

.method public updateMARsTargetPackages(Ljava/util/ArrayList;)V
    .locals 6

    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 1251
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v3

    .line 1252
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1254
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1255
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V

    .line 1256
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->deletePkgInfoInMARs(Ljava/util/ArrayList;)V

    .line 1257
    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mInitDisabledPackage:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1258
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mInitDisabledPackage:Z

    .line 1259
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    :cond_0
    const/4 p1, 0x0

    .line 1263
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1264
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1265
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1266
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "added_from_mars_auto_specific"

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->disablePackageForSpecific(Ljava/lang/String;ILjava/lang/String;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1271
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 1272
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    const-string p1, "deepsleepspecific"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    const-string p0, "MARsPolicyManager"

    .line 1274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateMARsTargetPackages mMARsTargetPackages.size-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 1252
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateResetTime()V
    .locals 9

    .line 1512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1515
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 1516
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 1517
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1518
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_0

    .line 1520
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1521
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1522
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1523
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1524
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1525
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    .line 1527
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1531
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "MARsPolicyManager"

    const-string/jumbo v1, "updateResetTime"

    .line 1532
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 1531
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z
    .locals 7

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4939
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 4943
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    move-result v0

    .line 4944
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v2

    .line 4945
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    if-ne v2, v6, :cond_2

    const-string v0, "deleted_from_user_manual"

    .line 4985
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    .line 4987
    :cond_2
    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    if-ne v2, v6, :cond_4

    .line 4979
    invoke-virtual {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->updateDisableCandidateInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne v2, v5, :cond_d

    .line 4981
    invoke-virtual {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->updateDoNotDisableInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-ne v2, v6, :cond_6

    .line 4950
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->sleepPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-ne v2, v5, :cond_7

    .line 4952
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 4954
    :cond_7
    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-ne v2, v6, :cond_e

    const-string v0, "added_from_anomaly_manual"

    .line 4958
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4959
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->disablePackageListForSpecific(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string v0, "added_from_mars_auto_specific"

    .line 4960
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "added_from_mars_manual_specific"

    .line 4961
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 4968
    :cond_a
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->disablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 4962
    :cond_b
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->removeInDozeAllowList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4963
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->disablePackageListForSpecific(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 4965
    :cond_c
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/MARsHandler;->sendSpecificDisableMsgToMainHandler(Ljava/util/List;)V

    :cond_d
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_e
    if-ne v2, v5, :cond_f

    .line 4971
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 4973
    :cond_f
    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_10

    .line 4991
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 4992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->appRestrictionInfoToString(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " f: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SEP"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 4993
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_10

    move v1, v6

    :cond_10
    :goto_3
    return v1
.end method

.method public updateSpecificPolicyTargetPackages(Ljava/util/ArrayList;II)V
    .locals 5

    const/4 v0, 0x0

    .line 2185
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2186
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2188
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 2189
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v3, v1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2191
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p2, v3, :cond_0

    .line 2193
    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    :cond_0
    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 2196
    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    :cond_1
    const/16 v3, 0xa

    if-ne p2, v3, :cond_2

    .line 2199
    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    .line 2203
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
