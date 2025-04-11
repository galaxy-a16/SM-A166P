.class public Lcom/android/server/am/FreecessController;
.super Ljava/lang/Object;
.source "FreecessController.java"


# static fields
.field public static DEFAULT_RECV_BUFSIZE:I = 0x0

.field public static IS_MINIMIZE_OLAF_LOCK:Z = false

.field public static IS_MINOR_PROJECT:Z = false

.field public static IS_PILOT_PROJECT:Z = false

.field public static IS_READ_ACCT_FILE_ERROR_PREVENTION:Z = false

.field public static IS_SUPPORT_CALM_MODE:Z = false

.field public static IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z = false

.field public static NETLINK_KFREECESS:I = 0x0

.field public static TAG:Ljava/lang/String; = "FreecessController"

.field public static final mCountry:Ljava/lang/String;

.field public static mPlatform:Ljava/lang/String;

.field public static productModel:Ljava/lang/String;

.field public static sProcessFreezerEnabled:Z


# instance fields
.field public final FREECESS_DEFAULT_CONFIG_TRUE:I

.field public FREECESS_ENHANCEMENT:Z

.field public FREECESS_LRS_ENABLED:Z

.field public final FREECESS_PACKET_ADD_UID_CMD:I

.field public final FREECESS_PACKET_CLR_UID_CMD:I

.field public final FREECESS_PACKET_DEL_UID_CMD:I

.field public final INVALID_USERID:I

.field public final MOD_BINDER:I

.field public final MOD_CFB:I

.field public final MOD_PKG:I

.field public final MOD_SIG:I

.field public final MSG_LOOPBACK:I

.field public final MSG_TO_KERN:I

.field public calmModeFilterList:Ljava/util/Set;

.field public cntFailFreeze:I

.field public cntFailUnfreeze:I

.field public cntFailUnfreezePilot:I

.field public filterList:Ljava/util/Set;

.field public lastUpdateTimeProcessAllowList:J

.field public mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

.field public final mCalmModeDefaultAllowList:Ljava/util/Set;

.field public mCalmModeEnabled:Z

.field public mCarModeOn:Z

.field public mConfigFreecess:I

.field public mContext:Landroid/content/Context;

.field public mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public mEmergencyModeOn:Z

.field public mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public final mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

.field public final mFreezeExcludePackages:Ljava/util/Set;

.field public mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public mFrozenPidList:Ljava/util/HashSet;

.field public mGPSAllowList:Ljava/util/List;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsDumpstateWorking:Z

.field public mIsFreecessEnable:Z

.field public mIsFreecessSkipTimeEnabled:Z

.field public mIsKernelSupportFreecess:Z

.field public mIsOLAFEnabled:Z

.field public mIsQuickFreezeEnabled:Z

.field public mIsScreenOnFreecessEnabled:Z

.field public mIsSmartSwitchWorking:Z

.field public mKilledTimeInterval:J

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mLocationManager:Landroid/location/ILocationManager;

.field public mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mMapFrozenUidPidList:Ljava/util/HashMap;

.field public mMismatchFlag:Z

.field public mMonitorFreezedList:Ljava/util/ArrayList;

.field public mNMs:Landroid/os/INetworkManagementService;

.field public mOLAFAllowListForDebug:Ljava/util/ArrayList;

.field public final mOLAFAllowPackages:Ljava/util/Set;

.field public mOLAFBlockList:Ljava/util/ArrayList;

.field public mOLAFOn:Z

.field public mOlafTargetPkg:Ljava/lang/String;

.field public mOlafTargetUserId:I

.field public mPendingBlocklistForGPS:Ljava/util/ArrayList;

.field public mPendingIntents:Ljava/util/ArrayList;

.field public mPendingIntentsIdle:Ljava/util/ArrayList;

.field public mPidUnfreezeEnabled:Z

.field public mProcessAllowListContains:Ljava/util/ArrayList;

.field public mProcessAllowListEndsWith:Ljava/util/ArrayList;

.field public mProcessAllowListEquals:Ljava/util/ArrayList;

.field public mProcessAllowListStartsWith:Ljava/util/ArrayList;

.field public mProcessObserver:Landroid/app/IProcessObserver;

.field public mRecordingEndTime:J

.field public mRecordingStartTime:J

.field public mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public mRestrictionFlagFromDC:I

.field public mScreenOn:Z

.field public mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

.field public final mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

.field public mSkipTriggerLcdOnFreeze:Z

.field public final mSsrmAllowPackages:Ljava/util/Set;

.field public mUidIdleCheck:Z

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public olafUfzList:Ljava/util/Set;

.field public olafUnfreezeEstimatedTime:Ljava/lang/Long;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFreecessManagedPackages(Lcom/android/server/am/FreecessController;)Lcom/android/server/am/FreecessPkgMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrozenPidList(Lcom/android/server/am/FreecessController;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsScreenOnFreecessEnabled(Lcom/android/server/am/FreecessController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/am/FreecessController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSkipTriggerLcdOnFreeze(Lcom/android/server/am/FreecessController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidIdleCheck(Lcom/android/server/am/FreecessController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "sys.config.mars_pilot_project"

    const/4 v1, 0x1

    .line 169
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    const-string/jumbo v0, "sys.config.mars_min_olaf_lock"

    .line 170
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    const/4 v0, 0x0

    .line 177
    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    const/4 v2, 0x0

    .line 181
    sput-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string/jumbo v3, "ro.product.model"

    .line 183
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v4, "SM-G98"

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "SM-G99"

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string v5, "SM-N98"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINOR_PROJECT:Z

    .line 187
    :cond_0
    sget-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string v5, "SM-A32"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_READ_ACCT_FILE_ERROR_PREVENTION:Z

    .line 189
    :cond_1
    sget-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string v4, "SM-S91"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string v4, "SM-S92"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    :cond_2
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    .line 192
    :cond_3
    sget-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string v4, "SM-A5560"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 227
    :cond_4
    sput-boolean v0, Lcom/android/server/am/FreecessController;->sProcessFreezerEnabled:Z

    .line 4259
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    const/16 v0, 0x1b

    .line 4385
    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    .line 4386
    sput-object v2, Lcom/android/server/am/FreecessController;->mPlatform:Ljava/lang/String;

    const-string/jumbo v0, "ro.board.platform"

    const-string v1, ""

    .line 4388
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessController;->mPlatform:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v1, "mt"

    .line 4389
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1f

    .line 4390
    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    :cond_5
    const/16 v0, 0x9c

    .line 4473
    sput v0, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_ADD_UID_CMD:I

    const/4 v1, 0x1

    .line 131
    iput v1, p0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_DEL_UID_CMD:I

    const/4 v2, 0x2

    .line 132
    iput v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_CLR_UID_CMD:I

    .line 134
    iput v1, p0, Lcom/android/server/am/FreecessController;->MSG_LOOPBACK:I

    .line 135
    iput v2, p0, Lcom/android/server/am/FreecessController;->MSG_TO_KERN:I

    .line 137
    iput v1, p0, Lcom/android/server/am/FreecessController;->MOD_BINDER:I

    .line 138
    iput v2, p0, Lcom/android/server/am/FreecessController;->MOD_SIG:I

    const/4 v2, 0x3

    .line 139
    iput v2, p0, Lcom/android/server/am/FreecessController;->MOD_PKG:I

    const/4 v2, 0x4

    .line 140
    iput v2, p0, Lcom/android/server/am/FreecessController;->MOD_CFB:I

    .line 153
    iput v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_DEFAULT_CONFIG_TRUE:I

    const-wide/32 v2, 0x493e0

    .line 155
    iput-wide v2, p0, Lcom/android/server/am/FreecessController;->mKilledTimeInterval:J

    .line 157
    new-instance v2, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v2}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 159
    new-instance v2, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v2}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 160
    new-instance v2, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v2}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 161
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    .line 163
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 200
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessSkipTimeEnabled:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    const-string/jumbo v2, "sys.config.mars_freecess_lrs"

    .line 208
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 210
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 212
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    const-string v2, "4"

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/FreecessController;->mConfigFreecess:I

    .line 216
    iput v0, p0, Lcom/android/server/am/FreecessController;->mRestrictionFlagFromDC:I

    .line 217
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 219
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 221
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 222
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 223
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 234
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    const-wide/16 v1, 0x0

    .line 235
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 237
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getSsrmAllowPackages()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    .line 238
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getOLAFAllowPackages()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowPackages:Ljava/util/Set;

    .line 239
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getFreezeExcludePackages()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 242
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getPendingIntentList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 243
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getPendingIntentIdleList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 244
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getPendingBlockListForGPS()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    .line 251
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getFilterList()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/Set;

    .line 252
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getOlafUfzList()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    .line 254
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getCalmModefilterList()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/Set;

    const/16 v3, -0xa

    .line 261
    iput v3, p0, Lcom/android/server/am/FreecessController;->INVALID_USERID:I

    .line 262
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 264
    iput v3, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    .line 2902
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2904
    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/com/android/server/am/mars/database/MARsListManager;->getCalmModeDefaultList()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/Set;

    const/4 v3, 0x0

    .line 2905
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 3343
    new-instance v4, Lcom/android/server/am/FreecessController$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/FreecessController$2;-><init>(Lcom/android/server/am/FreecessController;)V

    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 3387
    new-instance v4, Lcom/android/server/am/FreecessController$3;

    invoke-direct {v4, p0}, Lcom/android/server/am/FreecessController$3;-><init>(Lcom/android/server/am/FreecessController;)V

    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mUidObserver:Landroid/app/IUidObserver;

    .line 4020
    iput-wide v1, p0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    .line 4021
    iput-wide v1, p0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    .line 4395
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 4396
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/FreecessController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/FreecessController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/FreecessController;
    .locals 1

    .line 277
    invoke-static {}, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/FreecessController;

    move-result-object v0

    return-object v0
.end method

.method public static printUnfreezeCounts(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2

    .line 4244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4245
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4248
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRestrictedPackages(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 3

    .line 3864
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_0

    .line 3865
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRestrictedPackages uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3867
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3868
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3870
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

.method public addUidToReleaseRestrictionList(I)V
    .locals 3

    .line 3855
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    monitor-enter v0

    .line 3856
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3857
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3858
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3859
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_1

    .line 3860
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to release restriction list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 3858
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public cancelCalmMode()V
    .locals 10

    .line 2989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2990
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 2991
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 2992
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 2993
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 2994
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result v6

    .line 2995
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    goto :goto_1

    .line 3001
    :cond_0
    iget-boolean v6, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v6, :cond_2

    .line 3002
    iput-boolean v3, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    goto :goto_2

    :cond_1
    :goto_1
    const-string v6, "CalmMode"

    .line 2996
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 2997
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3005
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3006
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessHandler;->removeCalmModeFreezeMsg()V

    .line 3007
    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 3008
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictListForCalmMode(Ljava/lang/StringBuilder;)V

    return-void

    :catchall_0
    move-exception p0

    .line 3005
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final checkFgsPkgSkipToFreeze(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 5

    .line 1499
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result v0

    .line 1500
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ") is important[fg-service]"

    const-string v4, "("

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 1501
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isImportantFGSTypeBySys(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1502
    :cond_0
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 1507
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public checkFrozenBinder(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1648
    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "FBException"

    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final checkImportantPackage(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 4

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1517
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v0

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is important[!isUidIdle]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1525
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1526
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1527
    monitor-exit v0

    return v1

    .line 1528
    :cond_1
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1529
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 1530
    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1531
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    const/16 v3, 0xf

    invoke-virtual {v0, v3, p0, v2, p1}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1535
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is important["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 1531
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final cleanPacketMonitoredUids()V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 1681
    invoke-virtual {p0, v2, v0, v1, v0}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v0

    if-lez v0, :cond_1

    .line 1683
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1684
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 1685
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1687
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1689
    :cond_1
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v0, "cleanPacketMonitoredUids Exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public clearTargetPkgForOLAF()V
    .locals 2

    .line 2538
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 2539
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    const/16 v0, -0xa

    .line 2540
    iput v0, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    return-void
.end method

.method public final closeSocketNetLink(Ljava/io/FileDescriptor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4448
    :try_start_0
    invoke-static {p1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4450
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public closeSocketsForFreecessFirewallChain()V
    .locals 5

    .line 1574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1576
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "network_management"

    .line 1577
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1580
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_1

    :try_start_0
    const-string v2, "fw_oem_deny_1"

    const/4 v3, 0x7

    .line 1582
    invoke-interface {p0, v3, v2}, Landroid/os/INetworkManagementService;->closeSocketsForFreecess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1584
    :try_start_1
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured while closeSocketsForFreecessFirewallChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1586
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1587
    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public configPacketMonitoredUid(ILjava/lang/String;I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1655
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v0

    if-lez v0, :cond_1

    .line 1657
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1659
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p1, "RegException"

    .line 1663
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .line 2790
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    if-eqz p1, :cond_0

    .line 2791
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "[OLAF] "

    .line 2792
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 2795
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "[IMP] "

    .line 2796
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public convertUnfreezeTypeToReason(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "default"

    goto :goto_0

    :cond_0
    const-string p0, "SmartSwitch"

    goto :goto_0

    :cond_1
    const-string p0, "BugReport"

    :goto_0
    return-object p0
.end method

.method public final covertLcdOnFreezedState(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "Unknown"

    goto :goto_0

    :cond_0
    const-string p0, "Frozen"

    goto :goto_0

    :cond_1
    const-string p0, "Freezeable"

    goto :goto_0

    :cond_2
    const-string p0, "Initial"

    :goto_0
    return-object p0
.end method

.method public deletePacketMonitoredUid(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 1668
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v0

    if-lez v0, :cond_1

    .line 1670
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1671
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1674
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1676
    :cond_1
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string p1, "deletePacketMonitoredUid Exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public deleteRemovedPackage(Ljava/lang/String;I)V
    .locals 3

    .line 815
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 816
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "PkgRemoved"

    .line 818
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 820
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 821
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroySocketsForTargetUids([I)V
    .locals 0

    .line 0
    return-void
.end method

.method public dumpFreecess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3929
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    .line 3931
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    :try_start_0
    const-string v4, "FREECESS STATE"

    .line 3932
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "-FreecessEnabled : "

    .line 3933
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Y"

    goto :goto_0

    :cond_0
    const-string v4, "N"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "-KernelSupport : "

    .line 3934
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    if-eqz v4, :cond_1

    const-string v4, "Y"

    goto :goto_1

    :cond_1
    const-string v4, "N"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " -FreecessEnhancementEnabled : "

    .line 3935
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Y"

    goto :goto_2

    :cond_2
    const-string v4, "N"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " -ChinaPolicyEnabled : "

    .line 3936
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v2, "Y"

    goto :goto_3

    :cond_3
    const-string v2, "N"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -NewPILOT : "

    .line 3937
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v2, :cond_4

    const-string v2, "Y"

    goto :goto_4

    :cond_4
    const-string v2, "N"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -Mimimize_OLAF_lock : "

    .line 3938
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    if-eqz v2, :cond_5

    const-string v2, "Y"

    goto :goto_5

    :cond_5
    const-string v2, "N"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -QuickFreezeEnabled : "

    .line 3939
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Y"

    goto :goto_6

    :cond_6
    const-string v2, "N"

    :goto_6
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -PidUfzEnabled : "

    .line 3940
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->isPidUfzEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Y"

    goto :goto_7

    :cond_7
    const-string v2, "N"

    :goto_7
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -LRsEnabled : "

    .line 3943
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    if-eqz v2, :cond_8

    const-string v2, "Y"

    goto :goto_8

    :cond_8
    const-string v2, "N"

    :goto_8
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -AUFAllowBucketSize : "

    .line 3944
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " -cntFail(FZ/UFZ/UFZ_P) : "

    .line 3945
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ""

    .line 3947
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "ACTIVITY MANAGER Freecess (dumpsys activity freecess)"

    .line 3949
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "mFreecessManagedPackages --- size "

    .line 3951
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3952
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "%-9s%-6s%-5s%-4s%-2s|%s %s"

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Uid"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Share"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "Idle"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "Top"

    const/4 v10, 0x3

    aput-object v6, v5, v10

    const-string v6, "S"

    const/4 v11, 0x4

    aput-object v6, v5, v11

    .line 3954
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->getDumpUnfreezeTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x5

    aput-object v6, v5, v12

    const-string v6, "Pkg"

    const/4 v13, 0x6

    aput-object v6, v5, v13

    .line 3953
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v7

    .line 3955
    :goto_9
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_10

    .line 3956
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v7

    .line 3957
    :goto_a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v6, v14, :cond_f

    .line 3958
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/FreecessPkgStatus;

    if-nez v14, :cond_9

    move v7, v13

    goto :goto_f

    :cond_9
    const-string v15, "%-9d%3s%5s%5s%3s |%s %s"

    new-array v13, v4, [Ljava/lang/Object;

    .line 3960
    iget v4, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 3961
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v13, v7

    iget-object v4, v14, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v4, :cond_a

    const-string v4, "Y"

    goto :goto_b

    :cond_a
    const-string v4, "-"

    :goto_b
    aput-object v4, v13, v8

    .line 3962
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v4

    iget v7, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "Y"

    goto :goto_c

    :cond_b
    const-string v4, "-"

    :goto_c
    aput-object v4, v13, v9

    .line 3963
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v4

    iget v7, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidTop(I)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "Y"

    goto :goto_d

    :cond_c
    const-string v4, "-"

    :goto_d
    aput-object v4, v13, v10

    .line 3964
    iget-object v4, v14, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v4, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v4, :cond_d

    const-string v4, "F"

    goto :goto_e

    .line 3965
    :cond_d
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v4

    iget v7, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "R"

    goto :goto_e

    :cond_e
    const-string v4, "-"

    :goto_e
    aput-object v4, v13, v11

    iget-object v4, v14, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 3966
    invoke-virtual {v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->dumpUfzContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v12

    iget-object v4, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v7, 0x6

    aput-object v4, v13, v7

    .line 3960
    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v6, v6, 0x1

    move v13, v7

    const/4 v4, 0x7

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_f
    move v7, v13

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x7

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_10
    const/4 v2, 0x0

    .line 3971
    :goto_10
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 3972
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v5, 0x0

    .line 3973
    :goto_11
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 3974
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/FreecessPkgStatus;

    .line 3975
    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->hasUnfreezeAbuseHistory()Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_12

    .line 3976
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "since "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->getInitialStateTime()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has abuse unfreeze "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 3977
    invoke-virtual {v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->getUnfreezeAbuseDetections()Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ---last abnormal time: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 3978
    invoke-virtual {v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->getLastUnfreezeAbuseTime()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3976
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_13
    const-string/jumbo v2, "mFreezedPackages --- size "

    .line 3982
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3983
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    const/4 v2, 0x0

    .line 3984
    :goto_13
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_15

    .line 3985
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v5, 0x0

    .line 3986
    :goto_14
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 3987
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/FreecessPkgStatus;

    const-string v7, "-FZT "

    .line 3990
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v9, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "-UFZT "

    .line 3993
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v9, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedTime:J

    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "-UFZR "

    .line 3996
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "%10s"

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, v6, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-object v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "-UserId "

    .line 3998
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "%3d"

    new-array v9, v8, [Ljava/lang/Object;

    iget v10, v6, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "-Pkg "

    .line 4000
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ""

    .line 4001
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    :cond_15
    const-string/jumbo v2, "mMonitorFreezedList --- size "

    .line 4005
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4006
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    const/4 v11, 0x0

    .line 4007
    :goto_15
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_16

    const-string v2, "%d "

    new-array v4, v8, [Ljava/lang/Object;

    .line 4008
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_16
    const-string v0, ""

    .line 4011
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4013
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4015
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz v0, :cond_17

    .line 4016
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v1, "Freecess"

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    .line 4013
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dumpFreecessCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string/jumbo v1, "list"

    const/4 v10, 0x1

    .line 4024
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4025
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_0
    const-string v1, "freecess"

    .line 4027
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eqz v1, :cond_5

    .line 4028
    array-length v1, v9

    if-ge v1, v11, :cond_1

    .line 4029
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpMARsCommand(freecess ) !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v9, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    invoke-virtual {v0, v12}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    const-string v1, "MARstest -- freecess enabled has turned to false"

    .line 4031
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "on"

    .line 4033
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    .line 4034
    aget-object v2, v9, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4035
    invoke-virtual {v0, v10}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "0"

    .line 4036
    aget-object v2, v9, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4037
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpMARsCommand(freecess off) ! +   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v9, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 4039
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    const-string v2, "Debug"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {v0, v12}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "off"

    .line 4042
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    .line 4043
    aget-object v2, v9, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4044
    invoke-virtual {v0, v10}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_0

    :cond_4
    const-string v1, "0"

    .line 4045
    aget-object v2, v9, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4047
    invoke-virtual {v0, v12}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    :cond_5
    :goto_0
    const-string/jumbo v1, "netd"

    .line 4052
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "on"

    .line 4053
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_6

    .line 4055
    :try_start_0
    invoke-virtual {v0, v2, v10}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    .line 4056
    aget-object v1, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 4057
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    .line 4058
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpMARsCommand(netd on)uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4060
    :catch_0
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v2, "dumpMARsCommand(netd on) parseInt error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "off"

    .line 4062
    aget-object v3, v9, v13

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4064
    :try_start_1
    aget-object v1, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 4065
    invoke-virtual {v0, v2, v12}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    .line 4066
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpMARsCommand(netd off)uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4068
    :catch_1
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v2, "dumpMARsCommand(netd off) parseInt error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    const-string/jumbo v1, "olaf"

    .line 4073
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "on"

    .line 4074
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4075
    iput-boolean v10, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v1, "off"

    .line 4076
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4077
    iput-boolean v12, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_4

    :cond_9
    const-string v1, "debug"

    .line 4078
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4079
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v1, v10

    sput-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 4080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "olaf debugging mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "on"

    goto :goto_2

    :cond_a
    const-string/jumbo v2, "off"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " now!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v1, "enter"

    .line 4081
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4082
    aget-object v1, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->enterOLAF(I)V

    goto/16 :goto_4

    :cond_c
    const-string v1, "exit"

    .line 4083
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4084
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    goto/16 :goto_4

    :cond_d
    const-string v1, "allowlist"

    .line 4085
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "add"

    .line 4086
    aget-object v2, v9, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_e

    .line 4087
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    const-string/jumbo v1, "remove"

    .line 4088
    aget-object v3, v9, v11

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4089
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    const-string v1, "clear"

    .line 4090
    aget-object v2, v9, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4091
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_10
    const-string/jumbo v1, "list"

    .line 4092
    aget-object v2, v9, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4094
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    const-string v1, ""

    .line 4096
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    :goto_4
    const-string/jumbo v1, "qkfz"

    .line 4101
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "switch"

    .line 4102
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4103
    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    xor-int/2addr v1, v10

    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    goto :goto_5

    :cond_13
    const-string/jumbo v1, "on"

    .line 4104
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4105
    iput-boolean v10, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    goto :goto_5

    :cond_14
    const-string/jumbo v1, "off"

    .line 4106
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4107
    iput-boolean v12, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 4110
    :cond_15
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quick fz is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "on"

    goto :goto_6

    :cond_16
    const-string/jumbo v2, "off"

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " now!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_17
    const-string v1, "frz"

    .line 4113
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4114
    aget-object v2, v9, v13

    const/4 v3, 0x0

    const-string v4, "force"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/FreecessController;->freezePackage(Ljava/lang/String;ILjava/lang/String;IZZ)Z

    :cond_18
    const-string/jumbo v1, "ufz"

    .line 4117
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4118
    aget-object v1, v9, v13

    const-string v2, "force"

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_19
    const-string/jumbo v1, "lrs"

    .line 4122
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "on"

    .line 4123
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4124
    invoke-virtual {v0, v10}, Lcom/android/server/am/FreecessController;->setLRsEnabled(Z)V

    const-string/jumbo v1, "lrs set enable"

    .line 4125
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_1a
    const-string/jumbo v1, "off"

    .line 4126
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4127
    invoke-virtual {v0, v12}, Lcom/android/server/am/FreecessController;->setLRsEnabled(Z)V

    const-string/jumbo v1, "lrs set disable"

    .line 4128
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    :goto_7
    const-string/jumbo v1, "uid_idle"

    .line 4132
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4133
    array-length v1, v9

    if-ge v1, v11, :cond_1c

    .line 4134
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getUidIdleCheckMode()Z

    move-result v1

    xor-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 4135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MARstest -- uid idle check mode has turned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getUidIdleCheckMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_1c
    const-string/jumbo v1, "on"

    .line 4137
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4138
    invoke-virtual {v0, v10}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    goto :goto_8

    :cond_1d
    const-string/jumbo v1, "off"

    .line 4139
    aget-object v2, v9, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4140
    invoke-virtual {v0, v12}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    :cond_1e
    :goto_8
    const-string/jumbo v1, "window"

    .line 4145
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4146
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 4149
    :try_start_2
    aget-object v2, v9, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4150
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_1f

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_1f

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v10

    goto :goto_9

    :cond_1f
    move v3, v12

    .line 4153
    :goto_9
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpMARsCommand(window) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ishasFloatingWindow:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_b

    .line 4155
    :catch_2
    :try_start_3
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v3, "dumpMARsCommand(window) parseInt error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    :goto_a
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_c

    :goto_b
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_20
    :goto_c
    const-string/jumbo v1, "mfsr"

    .line 4160
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v12

    .line 4161
    :goto_d
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 4162
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v3, v12

    .line 4163
    :goto_e
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 4164
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 4165
    iget-object v4, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->dumpCmd(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_22
    const-string/jumbo v1, "startrecording"

    .line 4170
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    :cond_23
    const-string v1, "endrecording"

    .line 4174
    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    .line 4176
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 4178
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    const-wide/16 v13, 0x40

    if-eqz v1, :cond_24

    const-string v1, "getFrozenTimeForAllPackages"

    .line 4179
    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4181
    :cond_24
    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v15

    .line 4182
    :try_start_5
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v7

    move v6, v12

    .line 4183
    :goto_f
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_29

    .line 4184
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v4, :cond_27

    .line 4185
    iget-object v1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-eqz v1, :cond_27

    .line 4186
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_25

    .line 4187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrozenTimeFor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4189
    :cond_25
    iget-object v1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v2, v0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    iget-wide v13, v0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    iget-boolean v5, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v5, :cond_26

    iget-boolean v5, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-nez v5, :cond_26

    move/from16 v21, v10

    goto :goto_10

    :cond_26
    move/from16 v21, v12

    :goto_10
    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v19, v13

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->compute(JJZ)V

    .line 4191
    iget-object v1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->getUidRunningTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 4192
    iget-object v1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->getFrozenTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4193
    iget-object v1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->getUnfreezeCounts()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 p1, v11

    long-to-double v10, v13

    move-wide/from16 v19, v13

    long-to-double v12, v2

    .line 4194
    iget-object v1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-object v14, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    iget v5, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move-object/from16 v1, p0

    move-wide v8, v2

    move-wide v2, v10

    move-object v10, v4

    move v11, v5

    move-wide v4, v12

    move v12, v6

    move-object v6, v14

    move-object v13, v7

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/FreecessController;->getFrozenProportion(DDLcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;I)D

    move-result-wide v1

    .line 4197
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/FreecessController;->printUnfreezeCounts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 4198
    iget-object v4, v10, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%.5f"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4199
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v19

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4200
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4202
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_28

    const-wide/16 v3, 0x40

    .line 4203
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_11

    :cond_27
    move-object v13, v7

    move-object v5, v11

    move v2, v12

    move v12, v6

    :cond_28
    :goto_11
    add-int/lit8 v6, v12, 0x1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move v12, v2

    move-object v11, v5

    move-object v7, v13

    const/4 v10, 0x1

    const-wide/16 v13, 0x40

    goto/16 :goto_f

    :cond_29
    move-object v5, v11

    move v2, v12

    .line 4206
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4208
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_2a

    const-wide/16 v3, 0x40

    .line 4209
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4211
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v6, v0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v6, v0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    iget-wide v6, v0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    sub-long/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4212
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_12

    :catchall_1
    move-exception v0

    .line 4206
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_2b
    move v2, v12

    :goto_12
    const-string v1, "debugrecord"

    const/4 v3, 0x1

    .line 4215
    aget-object v3, p3, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4216
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 4217
    :try_start_7
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v0

    move v12, v2

    .line 4218
    :goto_13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_2d

    .line 4219
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v2, :cond_2c

    .line 4220
    iget-object v3, v2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-eqz v3, :cond_2c

    .line 4221
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-object v2, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    invoke-virtual {v2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->printAllEvents()V

    :cond_2c
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 4225
    :cond_2d
    monitor-exit v1

    goto :goto_14

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_2e
    :goto_14
    return-void
.end method

.method public enterOLAF(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2477
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/FreecessController;->enterOLAF(Ljava/lang/String;II)V

    return-void
.end method

.method public enterOLAF(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "com.sec.android.app.camera"

    .line 2483
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2485
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->enterOLAF(Ljava/lang/String;II)V

    return-void
.end method

.method public final enterOLAF(Ljava/lang/String;II)V
    .locals 5

    .line 2489
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2492
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 2495
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "com.google.android.youtube"

    .line 2499
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "com.jingdong.app.mall"

    .line 2502
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-eqz p3, :cond_8

    const/16 v0, 0x64

    if-ge p3, v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x1388

    if-le p3, v0, :cond_6

    move p3, v0

    .line 2512
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 2513
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter v2

    .line 2514
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_7

    .line 2515
    monitor-exit v2

    return-void

    .line 2516
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 2517
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2520
    :cond_8
    :goto_0
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_9

    .line 2521
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter OLAF! pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mills: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 p3, 0x1

    .line 2524
    iput-boolean p3, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    .line 2526
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ZLjava/lang/String;I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public exitOLAF()V
    .locals 5

    .line 2545
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_0

    .line 2546
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Exit OLAF!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez v0, :cond_1

    return-void

    .line 2551
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_2

    return-void

    .line 2554
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter v0

    .line 2555
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_3

    .line 2556
    monitor-exit v0

    return-void

    .line 2557
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->removeOLAFTimeOutMsg()V

    .line 2562
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ZLjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 2557
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final formatDateTime(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    .line 4252
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%23s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4253
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4254
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4255
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    const/4 v1, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v10, v1, :cond_0

    move/from16 v22, v13

    goto :goto_0

    :cond_0
    move/from16 v22, v14

    :goto_0
    const-string v1, "default"

    .line 2273
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    .line 2277
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 2278
    :try_start_0
    iget-boolean v2, v8, Lcom/android/server/am/FreecessPkgStatus;->isKilledByChimera:Z

    if-eqz v2, :cond_2

    .line 2279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v8, Lcom/android/server/am/FreecessPkgStatus;->killedTime:J

    sub-long/2addr v2, v4

    iget-wide v4, v0, Lcom/android/server/am/FreecessController;->mKilledTimeInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2280
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKilledBy Chimera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    monitor-exit v1

    return v14

    .line 2283
    :cond_1
    iput-boolean v14, v8, Lcom/android/server/am/FreecessPkgStatus;->isKilledByChimera:Z

    const-wide/16 v2, 0x0

    .line 2284
    iput-wide v2, v8, Lcom/android/server/am/FreecessPkgStatus;->killedTime:J

    .line 2288
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_3

    .line 2289
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "monitored size exception(64)..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    monitor-exit v1

    return v14

    .line 2292
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/FreecessPkgStatus;->isFreezeProtected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2294
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It has not been able to freeze yet. name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v22, :cond_4

    .line 2296
    iget v1, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2297
    iput v13, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2300
    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v2, :cond_4

    .line 2301
    invoke-virtual {v0, v1, v13, v9, v8}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    :cond_4
    return v14

    .line 2305
    :cond_5
    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-instance v7, Lcom/android/server/am/FreecessController$1;

    invoke-direct {v7, v0, v15}, Lcom/android/server/am/FreecessController$1;-><init>(Lcom/android/server/am/FreecessController;[Ljava/lang/String;)V

    move-object/from16 v1, p0

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZLcom/android/server/am/FreecessController$checkResultCallback;)Z

    move-result v1

    .line 2313
    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    aget-object v4, v15, v14

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/FreecessController;->isSkipFrozen(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v14

    :cond_6
    if-eqz v1, :cond_9

    .line 2316
    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateFreezeState(JLjava/lang/String;)V

    .line 2317
    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean v13, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    .line 2318
    iput-boolean v13, v8, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    .line 2319
    iput v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2320
    iput-boolean v11, v8, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 2321
    iput-boolean v12, v8, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 2323
    invoke-virtual {v0, v8, v13}, Lcom/android/server/am/FreecessController;->updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 2325
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 2326
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    :cond_7
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FZ : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    const/16 v3, 0x1a

    iget v4, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    if-eqz v12, :cond_8

    .line 2331
    iget v2, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2, v14}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 2332
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 2336
    :cond_8
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    .line 2337
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2339
    :cond_9
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FZ error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2342
    iget-object v3, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "FZ-fail"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateUnfreezeState(JLjava/lang/String;)V

    .line 2343
    iget-object v3, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean v14, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    .line 2345
    :cond_a
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UFZ : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") because failed to freeze, success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    if-eqz v1, :cond_e

    .line 2349
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v15

    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v4, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v5, -0x1

    if-eqz v11, :cond_c

    move/from16 v19, v13

    goto :goto_2

    :cond_c
    move/from16 v19, v5

    :goto_2
    if-eqz v1, :cond_d

    move/from16 v20, v13

    goto :goto_3

    :cond_d
    move/from16 v20, v5

    :goto_3
    const/16 v21, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v15 .. v23}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    .line 2355
    iget v2, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessController;->addUidToReleaseRestrictionList(I)V

    .line 2356
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget v2, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(ZI)V

    :cond_e
    return v1

    :catchall_0
    move-exception v0

    .line 2292
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public freezeBgPackageLocked(Ljava/lang/String;I)V
    .locals 12

    .line 1938
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 1945
    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v5

    .line 1946
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v6

    .line 1950
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v7

    .line 1954
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->isReceivingTouchEvent(I)Z

    move-result v1

    .line 1962
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ActivityManagerService;->isPendingBroadcastPackageLocked(I)Z

    move-result v2

    .line 1966
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 1967
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1969
    monitor-exit v9

    return-void

    .line 1972
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/server/am/FreecessController;->checkFgsPkgSkipToFreeze(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1973
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has important Fg-service , skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1975
    monitor-exit v9

    return-void

    :cond_3
    const-string v3, "com.samsung.android.spay"

    .line 1978
    iget-object v4, v10, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "com.samsung.android.app.sreminder"

    iget-object v4, v10, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_2

    .line 1983
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v4, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v4, :cond_5

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v3, :cond_5

    .line 1984
    invoke-virtual {p0, v10}, Lcom/android/server/am/FreecessController;->overrideOlafForBgFreeze(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 1985
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is OLAF FZed, override it with bg fz."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    monitor-exit v9

    return-void

    .line 1989
    :cond_5
    iget-object v3, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v3, :cond_6

    monitor-exit v9

    return-void

    .line 1992
    :cond_6
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    iget-object v4, v10, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v11, v10, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4, v11}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1993
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not MARs target, skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1995
    monitor-exit v9

    return-void

    :cond_7
    if-eqz v0, :cond_8

    .line 1999
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has floating or onScreen window, skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2001
    monitor-exit v9

    return-void

    :cond_8
    if-eqz v1, :cond_9

    .line 2005
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has Touch Event, skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2007
    monitor-exit v9

    return-void

    :cond_9
    if-eqz v2, :cond_a

    .line 2011
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has pending broadcast, skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2013
    monitor-exit v9

    return-void

    :cond_a
    const-string v3, "Bg"

    const/4 v4, 0x3

    move-object v1, p0

    move-object v2, v10

    .line 2016
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2018
    iget-object p0, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean v8, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 2019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    goto :goto_1

    .line 2021
    :cond_b
    iget-object v1, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean v7, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 2022
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2023
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    iget v2, v10, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, v10, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    if-eqz p0, :cond_d

    :cond_c
    move v7, v8

    :cond_d
    invoke-virtual {v1, v2, v3, v7}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Z)V

    .line 2025
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_e

    .line 2028
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string v0, "FRZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void

    .line 1979
    :cond_f
    :goto_2
    :try_start_1
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1980
    monitor-exit v9

    return-void

    :catchall_0
    move-exception p0

    .line 2025
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .locals 9

    .line 3014
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v0

    .line 3016
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3021
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3025
    :cond_1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 3029
    :cond_2
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 3033
    :cond_3
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v6, 0x12

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_4

    return v2

    .line 3039
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v8

    .line 3040
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v7

    const/4 v6, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 3041
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    .line 3043
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 3045
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FZ"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method public final freezeForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .locals 8

    .line 2831
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    goto :goto_0

    .line 2834
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2838
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZLcom/android/server/am/FreecessController$checkResultCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2841
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    .line 2843
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_2

    .line 2844
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLAF FZ : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2846
    :cond_1
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2847
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    .line 2848
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    :cond_2
    :goto_1
    return v0
.end method

.method public final freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 2804
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPkgStatus;->isFreezeProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OLAF"

    .line 2811
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->freezeForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    .line 2813
    iput p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2814
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean p2, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 2819
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    .line 2820
    :cond_1
    iput p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2821
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2822
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2823
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    const/4 v0, 0x4

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2824
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    const/16 v0, 0x1c

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2826
    :cond_2
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    .line 2827
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    .line 2805
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_9

    .line 2806
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip olaf fz for <"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "null"

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">: fzed="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v0

    :goto_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", protect="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPkgStatus;->isFreezeProtected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public freezePackage(ILjava/lang/String;IZZ)Z
    .locals 10

    .line 2115
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isReceivingTouchEvent(I)Z

    move-result v0

    .line 2127
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 2128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v4

    const/4 p1, 0x1

    if-eqz v4, :cond_2

    .line 2129
    iget-object v3, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    .line 2131
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " has Touch Event, skip to freeze"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    iput p1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2133
    monitor-exit v2

    return v1

    .line 2136
    :cond_1
    iget-object v0, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 2137
    iget v9, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 2138
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 2139
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v9, v1

    .line 2141
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 2143
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v0, v9, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_4
    return v1

    :catchall_0
    move-exception p0

    .line 2141
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public freezePackage(Ljava/lang/String;ILjava/lang/String;IZZ)Z
    .locals 8

    .line 2095
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2099
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2100
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2101
    iget-object v2, v3, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v2, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-nez v2, :cond_1

    .line 2102
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, p0

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2103
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v1

    .line 2105
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 2107
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    .line 2105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public freezeTargetProcess(Ljava/lang/String;I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    const-string v0, "android.app.stubs"

    .line 3908
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.app.cts."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return p0

    .line 3912
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 4

    .line 879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/sys/fs/cgroup/uid_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 880
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 886
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 887
    aget-object v2, p2, v1

    const-string/jumbo v3, "pid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cgroup.procs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 889
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/am/FreecessController;->readAcctFile(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getCalmModeAllowList(Ljava/util/ArrayList;)Lcom/android/server/am/FreecessPkgMap;
    .locals 6

    .line 2956
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 2958
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2960
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const-string v3, ", "

    .line 2962
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2963
    array-length v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 2964
    aget-object v3, v1, v3

    .line 2966
    :try_start_0
    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2968
    :catch_0
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v4, "CalmMode parseInt error!"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2971
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFreecessEnabled()Z
    .locals 0

    .line 399
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    return p0
.end method

.method public getFreecessEnabledConfig()Z
    .locals 3

    .line 325
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFreecessEnabledConfig mIsKernelSupportFreecess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    return p0
.end method

.method public getFreecessEnhancementEnabledState()Z
    .locals 0

    .line 440
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    return p0
.end method

.method public final getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    .line 720
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 722
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 724
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    .line 710
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->sizeByUserId()I

    move-result v1

    if-lez v1, :cond_0

    .line 712
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 714
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFrozenProportion(DDLcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;I)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    div-double p1, p3, p1

    :goto_0
    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, p1, p3

    if-lez p3, :cond_2

    .line 4233
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "calculation error. "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p4, "was frozen more than running time"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MARsFreezeStateRecord"

    invoke-static {p4, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    if-nez p3, :cond_1

    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    if-eqz p3, :cond_2

    .line 4235
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "From "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p6, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    invoke-direct {p6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, " to "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p6, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    invoke-direct {p6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, "("

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/am/FreecessController;->mRecordingEndTime:J

    iget-wide v2, p0, Lcom/android/server/am/FreecessController;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms)"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    invoke-virtual {p5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->printAllEvents()V

    :cond_2
    return-wide p1
.end method

.method public getIsDumpstateWorking()Z
    .locals 0

    .line 651
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    return p0
.end method

.method public getIsSmartSwitchWorking()Z
    .locals 0

    .line 659
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    return p0
.end method

.method public getLRsEnabled()Z
    .locals 0

    .line 574
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    return p0
.end method

.method public getMonitorPacketFlag(I)Z
    .locals 2

    .line 1927
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_2

    .line 1928
    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 7

    .line 777
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v1, :cond_1

    .line 780
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v3, p1, :cond_1

    .line 781
    monitor-exit v0

    return-object v1

    :cond_0
    move-object v1, v2

    .line 784
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    .line 788
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 789
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    .line 790
    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    const-string v4, ".cts"

    .line 791
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v2

    .line 796
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v4, 0x100f

    int-to-long v4, v4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 797
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v4

    .line 798
    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v3, p1, v6, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_3

    .line 799
    :try_start_2
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 800
    iput-object v1, v5, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, v5

    goto :goto_1

    .line 801
    :cond_3
    :goto_0
    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 802
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, p1, v3, v5}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 804
    monitor-exit v0

    move-object v1, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_1
    move-exception p0

    .line 807
    :goto_1
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageStatus() failed to create ps "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    .line 784
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public final getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ".cts"

    .line 739
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 742
    :cond_0
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 743
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->sizeByUserId()I

    move-result v2

    if-lez v2, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v0, :cond_1

    .line 746
    monitor-exit v1

    return-object v0

    .line 749
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_3

    .line 757
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x100f

    int-to-long v3, v3

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 758
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 759
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 760
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v4

    .line 761
    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-direct {v5, p1, v3, p2, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 762
    :try_start_2
    iget-object p2, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz p2, :cond_2

    iput-object p2, v5, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 763
    :cond_2
    monitor-enter v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 764
    :try_start_3
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p2, v3, p1, v5}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    .line 766
    monitor-exit v1

    move-object v0, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception p0

    .line 769
    :goto_0
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackageStatus() failed to create ps "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    .line 749
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public getPidProcessName(I)Ljava/lang/String;
    .locals 5

    .line 690
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/comm"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 692
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 699
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 701
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 695
    :goto_0
    :try_start_3
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 699
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 701
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_1

    .line 699
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 701
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 704
    :cond_1
    :goto_4
    throw p0
.end method

.method public getRestrictNetworkFlag(I)Z
    .locals 0

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    .line 1933
    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getRestrictedPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    .line 730
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 732
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 734
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScreenOnFreecessEnabled()Z
    .locals 0

    .line 3272
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    return p0
.end method

.method public getScreenOnState()Z
    .locals 0

    .line 3293
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    return p0
.end method

.method public getUidIdleCheckMode()Z
    .locals 1

    .line 3283
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleLcdOnResetState(Ljava/lang/String;I)V
    .locals 4

    .line 3696
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3697
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3698
    monitor-exit v0

    return-void

    .line 3700
    :cond_0
    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p2, v1, :cond_3

    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p2, p0, :cond_2

    .line 3709
    iput v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3710
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3711
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/16 p2, 0x1c

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    goto :goto_2

    .line 3713
    :cond_2
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    goto :goto_2

    .line 3701
    :cond_3
    :goto_0
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p2, p2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz p2, :cond_4

    .line 3703
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v2, "UidActive"

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 3705
    :cond_4
    iput v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3707
    :goto_1
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3715
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

.method public handleResetAllPreAction()V
    .locals 4

    .line 3746
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@*** unFreezeAllPackages for watchdog : Start thread for preaction unfreezing!!! cntFail(FZ/UFZ/UFZ_P) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3748
    new-instance v2, Lcom/android/server/am/FreecessController$4;

    const-string v3, "MARsWatchdogUnfreezer"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/server/am/FreecessController$4;-><init>(Lcom/android/server/am/FreecessController;Ljava/lang/String;J)V

    .line 3766
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public handleResetAllState(Ljava/lang/String;)V
    .locals 5

    .line 3733
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@*** unFreezeAllPackages for watchdog : Start reset all state unfreezing!!! - MARs FW Side (reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SoftReset"

    .line 3735
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3736
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 3737
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    .line 3738
    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3740
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unfreezeAllPackages(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->resetFreecessStateForLcdOnFreeze()V

    .line 3742
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@*** unFreezeAllPackages for watchdog : End reset all state unfreezing!!! - MARs FW Side (reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleUnfreezeActivePackages(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "screenOn-widget"

    .line 3770
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3771
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezeWidgetPackages(Ljava/lang/String;)V

    goto :goto_0

    .line 3773
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezeActivePackages(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleUnfreezeRequestFocusPackage()V
    .locals 3

    .line 3779
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3780
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    .line 3781
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRequestFocusPkg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3783
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3785
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3786
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v2, "has Focus"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 3783
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 282
    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 286
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 287
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 288
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 289
    iget p1, p0, Lcom/android/server/am/FreecessController;->mConfigFreecess:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 290
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/am/FreecessHandler;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public initSendRecvMsgNetLink()Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4402
    :try_start_0
    sget v2, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    invoke-static {v2}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 4403
    invoke-static {v2}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 4404
    invoke-static {}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->getFreecessNetlinkMessageSize()I

    move-result v2

    sput v2, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-gt v3, v4, :cond_3

    .line 4407
    invoke-static {v2, v3, v1, v1, v1}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    move-result-object v6

    .line 4408
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    const/4 v7, 0x0

    array-length v8, v6

    const-wide/16 v9, 0x1f4

    invoke-static/range {v5 .. v10}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v4

    if-gez v4, :cond_0

    .line 4410
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->closeSocketNetLink(Ljava/io/FileDescriptor;)V

    .line 4411
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 4413
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v3, "initSendRecvMsgNetLink sendMessage error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4416
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    sget v5, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    const-wide/16 v6, 0x1f4

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 4417
    invoke-static {v4}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4419
    iget v5, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    const/high16 v6, 0x10000000

    if-eq v5, v6, :cond_1

    .line 4420
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    .line 4422
    :cond_1
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v5, :cond_2

    .line 4423
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSendRecvNetlink type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mod:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " src_portid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dst_portid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " target_uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cmd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4437
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4438
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->closeSocketNetLink(Ljava/io/FileDescriptor;)V

    .line 4439
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    :goto_1
    return v1
.end method

.method public isCalmModeOnoff()Z
    .locals 0

    .line 3128
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    return p0
.end method

.method public isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 3089
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3092
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowPackages:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 3095
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 3098
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    return v0

    .line 3102
    :cond_4
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object p0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v3, 0x12

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->filter(Ljava/lang/String;III)I

    move-result p0

    const/4 p1, 0x2

    if-ne p1, p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public isFreecessTarget(I)Z
    .locals 1

    .line 4627
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4628
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4629
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 4630
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isFreezedByLcdOnPolicy(Ljava/lang/String;I)Z
    .locals 1

    .line 1861
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1862
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1863
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz p0, :cond_1

    .line 1864
    :cond_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1866
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 1867
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isFreezedPackage(I)Z
    .locals 1

    .line 1841
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1842
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1843
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz p0, :cond_0

    .line 1844
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1846
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 1847
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isFreezedPackage(Ljava/lang/String;I)Z
    .locals 1

    .line 1831
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1832
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1833
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz p0, :cond_0

    .line 1834
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1836
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 1837
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isFrozenByCalmMode(I)Z
    .locals 2

    .line 3115
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3118
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3119
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3121
    iget-boolean p0, p0, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    monitor-exit v0

    return p0

    .line 3123
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isImportantFGSTypeBySys(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 1

    if-eqz p1, :cond_0

    const p0, 0x40001e21

    .line 1490
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    .line 1491
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has important fgs type according Google fg Api , skip to freeze it. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1438
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;Z)Z

    move-result p0

    return p0
.end method

.method public isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;Z)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_6

    .line 1443
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->targetSdkVersion:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    if-eqz v0, :cond_1

    .line 1444
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    if-eqz v0, :cond_0

    .line 1445
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1446
    sget-object p2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " china model lcd on , freeze fgs app exclude important task. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    return v2

    .line 1456
    :cond_1
    iget-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    if-eqz p2, :cond_2

    return v2

    .line 1459
    :cond_2
    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1462
    :cond_3
    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    if-eqz p2, :cond_4

    .line 1463
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is doing GC, skip to freeze it."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1467
    :cond_4
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object p2

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p2, p1}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->isInBTAllowList(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    return v2

    :cond_6
    return p0
.end method

.method public isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z
    .locals 1

    .line 1475
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1476
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1478
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1480
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

.method public isInGPSAllowList(I)Z
    .locals 0

    .line 1421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1422
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMARsTargetDeferrable(ILjava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 8

    .line 464
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 465
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v6

    .line 466
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result v7

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isFreecessTarget(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p4, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 472
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->isPendingIntent(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isFreezedPackage(I)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz v6, :cond_1

    if-eqz v6, :cond_2

    .line 475
    iget-boolean p2, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-nez p2, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    const-string p2, "broadcast"

    .line 476
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageFreezed(Ljava/lang/String;I)Z
    .locals 2

    .line 2080
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2081
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2082
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2083
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2085
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-nez p0, :cond_1

    const/4 v1, 0x1

    .line 2087
    :cond_1
    monitor-exit v0

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPackageRestricted(Ljava/lang/String;I)Z
    .locals 2

    .line 2060
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2061
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2062
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2063
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2065
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-nez p1, :cond_1

    const-string p1, "Signal"

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 2067
    :cond_2
    monitor-exit v0

    :cond_3
    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPacketMonitoredApp(I)Z
    .locals 1

    .line 1728
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1729
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1730
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1731
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

.method public isPendingIntent(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z
    .locals 4

    .line 484
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    .line 485
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result v1

    .line 486
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p5, :cond_0

    .line 488
    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p5, :cond_0

    .line 489
    invoke-virtual {p5}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    move p5, v2

    goto :goto_0

    :cond_0
    move p5, v3

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v0, :cond_5

    .line 492
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_5

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    if-eqz p5, :cond_4

    .line 499
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "broadcast"

    .line 500
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    return v3

    :cond_4
    return v2

    :cond_5
    return v3
.end method

.method public isPidUfzEnabled()Z
    .locals 0

    .line 395
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    return p0
.end method

.method public final isPkgRunningService(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 923
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 924
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 925
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProcessFrozen(I)Z
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v0

    .line 914
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 915
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 917
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

.method public isQuickFreezeEnabled()Z
    .locals 0

    .line 391
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    return p0
.end method

.method public final isReceivingTouchEvent(I)Z
    .locals 0

    .line 1920
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-eqz p0, :cond_0

    .line 1921
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->isUidTouched(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSkipFrozen(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    const-string p0, "default"

    .line 2260
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2261
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_0

    .line 2262
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pkgName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public kernelFreecessReport(Lcom/android/server/am/mars/netlink/StructFreeCessMsg;)V
    .locals 10

    .line 4503
    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 4526
    :cond_0
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->reportCFBUid(I)V

    goto :goto_1

    .line 4522
    :cond_1
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->reportPacketUid(I)V

    goto :goto_1

    .line 4517
    :cond_2
    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/FreecessController;->reportSignal(II)V

    goto :goto_1

    .line 4507
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "mismatch"

    goto :goto_0

    .line 4511
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v7, v0

    move v9, v1

    const/4 v3, 0x0

    .line 4513
    iget v4, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    iget v5, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    iget v6, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    iget v8, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/FreecessController;->reportBinderUid(IIIILjava/lang/String;II)V

    :goto_1
    return-void
.end method

.method public killPkgForCalmMode(ILjava/lang/String;)Z
    .locals 2

    .line 3065
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3071
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3072
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3074
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v1

    .line 3076
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 3078
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3079
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v1, "CalmMode"

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/am/FreecessController;->killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 3076
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 3110
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "CalmMode"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V

    .line 3111
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/MARsPolicyManager;->addRestrictListForCalmMode(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public lcdOnFreezePackage(Ljava/lang/String;I)V
    .locals 1

    .line 3791
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_0

    .line 3792
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3793
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->freezeBgPackageLocked(Ljava/lang/String;I)V

    .line 3794
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 3614
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3615
    :try_start_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3616
    monitor-exit v0

    return-void

    .line 3618
    :cond_0
    iget p4, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p5, 0x3

    if-eq p1, p5, :cond_1

    goto :goto_0

    :cond_1
    if-ne p4, v1, :cond_3

    .line 3629
    iput p5, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-ne p4, p1, :cond_3

    if-nez p5, :cond_3

    .line 3623
    iput v1, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3633
    :cond_3
    :goto_0
    iget p1, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 3634
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public makePkgIdleForLcdOn(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 6

    .line 3568
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3570
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ", "

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v1

    iget v3, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p5, :cond_2

    .line 3571
    sget-boolean p5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p5, :cond_1

    .line 3572
    sget-object p5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to make pkg idle for fz: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    :cond_1
    iget-object p5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p5, v1, p3}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V

    .line 3575
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result p5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "<"

    if-eqz p5, :cond_4

    :try_start_2
    iget-object p5, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p5, p2}, Lcom/android/server/am/FreecessController;->isPkgRunningService(Ljava/lang/String;I)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 3578
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_3

    .line 3579
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "> is still ES after making idle, scheduling retry."

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    :cond_3
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessHandler;->sendMakePkgIdleMsg(Ljava/lang/String;IILjava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string p5, ""

    const/4 v3, 0x0

    .line 3582
    invoke-virtual {p0, p5, p2, v3}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 3583
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_5

    .line 3584
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> Service stopped, continue."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    :cond_5
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/FreecessHandler;->sendChangeToFrozenMsg(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3589
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "makePkgIdleForLcdOn Exception : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public makePkgIdleIfNeeded(I)V
    .locals 5

    .line 3596
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3597
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3598
    monitor-exit v0

    return-void

    .line 3599
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 3600
    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 3601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3603
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3604
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_1

    .line 3605
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to make pkg idle: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3609
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "makePkgIdleIfNeeded Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 3601
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public matchFreezeState(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    .line 1871
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1872
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    .line 1873
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/FreecessController;->matchFreezeStateLocked(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1874
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final matchFreezeStateLocked(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1887
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eq p2, v0, :cond_1

    return p0

    :cond_1
    if-eqz p3, :cond_2

    .line 1889
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eq p2, p3, :cond_2

    return p0

    :cond_2
    if-eqz p4, :cond_3

    .line 1891
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p1, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eq p2, p1, :cond_3

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public onFreezeChanged(ZLjava/util/ArrayList;)V
    .locals 0

    .line 1155
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1156
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessHandler;->sendReportToBroadcastQueueMsg(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onFreezeStateChanged(ZI)V
    .locals 4

    .line 3832
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    if-nez v0, :cond_0

    .line 3833
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 3834
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/AlarmManagerInternal;->onFreezeStateChanged(ZI)V

    .line 3837
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getLRsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3839
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "location"

    .line 3840
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 3842
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-eqz v0, :cond_2

    .line 3843
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->onFreezeStateChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3846
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while setLRs("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 3851
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->addUidToReleaseRestrictionList(I)V

    :cond_3
    return-void
.end method

.method public onUnfreeze(Ljava/lang/String;IIZZ)V
    .locals 10

    .line 1897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1901
    :try_start_0
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-virtual {v3, v4, p3}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    if-eqz p5, :cond_0

    const/4 v3, 0x1

    .line 1904
    invoke-virtual {p0, p3, v3}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1907
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1910
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    if-eqz p4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    return-void

    :catchall_0
    move-exception v0

    .line 1907
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1908
    throw v0
.end method

.method public final overrideOlafForBgFreeze(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3492
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v2

    .line 3493
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v3

    .line 3495
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 3496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 3497
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 3498
    iput-boolean v7, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    :cond_0
    const/4 v6, 0x3

    .line 3500
    iput v6, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 3501
    iput v6, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const-string v6, "Bg"

    .line 3502
    iput-object v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedReason:Ljava/lang/String;

    .line 3503
    iput-boolean v5, v1, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    .line 3504
    iput-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 3505
    iput-boolean v3, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 3506
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Olaf2Bg "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "OVR"

    invoke-virtual {v4, v8, v6}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/FreecessController;->updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 3510
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v6, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3511
    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v6, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v8, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v8, v1}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3513
    :cond_1
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FZ : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), reason: Bg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v4

    const/16 v6, 0x1a

    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    if-eqz v3, :cond_2

    .line 3516
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v3, v7}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 3517
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    .line 3520
    :cond_2
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v6, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3521
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v6, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v1}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    :cond_3
    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v4, "Bg(override)"

    invoke-virtual {v3, v6, v7, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateFreezeState(JLjava/lang/String;)V

    .line 3524
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v11, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-eqz v2, :cond_4

    move v12, v5

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    move v12, v2

    :goto_0
    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    .line 3530
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessController;->addUidToReleaseRestrictionList(I)V

    .line 3531
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v5, v3}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(ZI)V

    .line 3534
    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->postFreezeWatchDog(I)Z

    return-void
.end method

.method public final postFreezeWatchDog(I)Z
    .locals 5

    .line 3638
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3639
    iget-object v2, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v2, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 3645
    :cond_0
    iget-object p1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 3648
    iget-object v2, v0, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 3649
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3650
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3655
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3656
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_3

    packed-switch p1, :pswitch_data_0

    const-string p1, "WD-PostCheck"

    goto :goto_1

    :pswitch_0
    const-string p1, "WD-RunningLogcat"

    goto :goto_1

    :pswitch_1
    const-string p1, "WD-ForegroundAdj"

    goto :goto_1

    :pswitch_2
    const-string p1, "WD-StartProcess"

    goto :goto_1

    :pswitch_3
    const-string p1, "WD-LaunchingProvider"

    goto :goto_1

    :pswitch_4
    const-string p1, "WD-ReceivingIntent"

    goto :goto_1

    :pswitch_5
    const-string p1, "WD-ExecutingService"

    goto :goto_1

    :pswitch_6
    const-string p1, "WD-AlreadyDied"

    .line 3685
    :goto_1
    iget v1, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 3686
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_2

    .line 3687
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freecess WD bites! u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Reason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    return v1

    .line 3640
    :cond_4
    :goto_2
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postFreezeWatchDog: u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not fzed, return."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public postMonitoringFrozenProcs()V
    .locals 9

    .line 1161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1164
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 1165
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1168
    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    if-nez v5, :cond_1

    .line 1169
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1173
    :cond_1
    iget-wide v5, v4, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x9c4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1177
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->getReasonProcShouldNotBeFrozen(Lcom/android/server/am/ProcessRecord;)I

    move-result v5

    if-lez v5, :cond_0

    packed-switch v5, :pswitch_data_0

    .line 1202
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "Post-Monitoring"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_0

    .line 1199
    :pswitch_0
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "RunningLogcat"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_0

    .line 1196
    :pswitch_1
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "ForegroundAdj"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_0

    .line 1193
    :pswitch_2
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "StartProcess"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_0

    .line 1190
    :pswitch_3
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "LaunchingProvider"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_0

    .line 1187
    :pswitch_4
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "ReceivingIntent"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_0

    .line 1184
    :pswitch_5
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "ExecutingService"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_0

    .line 1181
    :pswitch_6
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "AlreadyDied"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    .line 1210
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->sendProcPostMonitoringMsg()V

    .line 1212
    :cond_4
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_5

    .line 1213
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postMonitoringFrozenProcs() numProcessNeedToCheck is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public protectFreezePackage(ILjava/lang/String;J)Z
    .locals 2

    .line 1814
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1815
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1817
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    .line 1818
    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 1820
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    move p3, p0

    .line 1823
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 1825
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    iget-object p4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p4, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1
    return p3

    :catchall_0
    move-exception p0

    .line 1823
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z
    .locals 3

    .line 1794
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1795
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1797
    invoke-virtual {v1, p4, p5}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    .line 1798
    iget-object p4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p4, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    .line 1800
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    move p4, p0

    .line 1803
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 1805
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1
    return p4

    :catchall_0
    move-exception p0

    .line 1803
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public quickFreezeForCalmMode(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 2977
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2978
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2980
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2982
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2985
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

.method public final readAcctFile(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 6

    const/4 v0, 0x0

    .line 840
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 841
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 843
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 844
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_0

    move v3, v4

    .line 848
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 850
    :cond_1
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_READ_ACCT_FILE_ERROR_PREVENTION:Z

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    if-nez v3, :cond_2

    const-string/jumbo p3, "pid_"

    .line 852
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v4

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 853
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 854
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot get pid from uid. but bring it in a different way. pid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 868
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    .line 862
    :goto_1
    :try_start_3
    sget-object p2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred when reading "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 866
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_4
    move-exception p0

    .line 860
    :goto_2
    :try_start_5
    sget-object p2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t read "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 866
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 868
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 871
    :cond_4
    :goto_5
    throw p0
.end method

.method public readSysfs()V
    .locals 14

    const-string v0, ":"

    const-string v1, "e = "

    const/4 v2, 0x0

    .line 4265
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/system/ssrm_local_freecess"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4266
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 4267
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 4268
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 4269
    array-length v5, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 4270
    aget-object v5, v2, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, ""

    if-eqz v5, :cond_1

    :try_start_2
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v7

    :goto_1
    const/4 v8, 0x1

    .line 4271
    aget-object v9, v2, v8

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move-object v9, v7

    .line 4272
    :goto_2
    aget-object v2, v2, v6

    if-eqz v2, :cond_3

    move-object v7, v2

    :cond_3
    const-string v2, "ALL"

    .line 4273
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "Enhance_Switch"

    const-string v10, "@"

    const-string v11, "Switch"

    const-string v12, "WL"

    const-string v13, "1"

    if-eqz v2, :cond_9

    .line 4274
    :try_start_3
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v7, :cond_0

    .line 4276
    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 4278
    array-length v5, v2

    :goto_3
    if-ge v4, v5, :cond_0

    aget-object v6, v2, v4

    if-eqz v6, :cond_4

    .line 4279
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 4280
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4284
    :cond_5
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4285
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4286
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    move v4, v8

    .line 4287
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto/16 :goto_0

    .line 4288
    :cond_7
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4289
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4290
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v2

    if-eqz v2, :cond_8

    move v4, v8

    .line 4291
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->setFreeceeEnhanceEnabled(Z)V

    goto/16 :goto_0

    .line 4293
    :cond_9
    sget-object v2, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4294
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v7, :cond_0

    .line 4296
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 4297
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 4299
    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 4301
    array-length v5, v2

    :goto_4
    if-ge v4, v5, :cond_0

    aget-object v6, v2, v4

    if-eqz v6, :cond_a

    .line 4302
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 4303
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4308
    :cond_b
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4309
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4310
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    move v4, v8

    .line 4311
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto/16 :goto_0

    .line 4312
    :cond_d
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4313
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4314
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v2

    if-eqz v2, :cond_e

    move v4, v8

    .line 4315
    :cond_e
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->setFreeceeEnhanceEnabled(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 4328
    :cond_f
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    .line 4331
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_9

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v2, v3

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_3
    move-exception p0

    .line 4324
    :goto_6
    :try_start_5
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_10

    .line 4328
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 4331
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_5
    move-exception p0

    .line 4322
    :goto_7
    :try_start_7
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_10

    .line 4328
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception p0

    .line 4331
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_10
    :goto_8
    return-void

    :goto_9
    if-eqz v2, :cond_11

    .line 4328
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    .line 4331
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    :cond_11
    :goto_a
    throw p0
.end method

.method public recoverFreezerStateIfTHAWED()V
    .locals 6

    .line 341
    new-instance p0, Ljava/io/File;

    const-string v0, "/dev/freezer/frozen/freezer.state"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 p0, 0x0

    .line 347
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 349
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freezer.state == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const-string v3, "THAWED"

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "FROZEN"

    const-string v0, "UTF-8"

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 353
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    .line 360
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz p0, :cond_3

    .line 367
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, p0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_2
    move-object p0, v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_3
    move-object p0, v0

    .line 356
    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t read or write /dev/freezer/frozen/freezer.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    .line 360
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 362
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 367
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_6
    return-void

    :catchall_2
    move-exception p0

    :goto_7
    if-eqz v1, :cond_4

    .line 360
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_8
    if-eqz v2, :cond_5

    .line 367
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 372
    :cond_5
    :goto_9
    throw p0

    .line 343
    :cond_6
    :goto_a
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "recoverFreezerStateIfTHAWED error: file doesn\'t exist or can\'t write"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recvNetLinkAction()V
    .locals 4

    .line 4478
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 4479
    sget v1, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    const-wide v2, 0x12a05f200L

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4480
    invoke-static {v0}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4482
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v1, :cond_0

    .line 4483
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecvNetlink type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " src_portid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dst_portid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " target_uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->kernelFreecessReport(Lcom/android/server/am/mars/netlink/StructFreeCessMsg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4498
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerFreecessTrigger()V
    .locals 5

    .line 296
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 302
    :cond_0
    invoke-static {}, Lcom/android/server/am/FreecessTrigger;->getInstance()Lcom/android/server/am/FreecessTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessTrigger;->init(Landroid/content/Context;)V

    const-string v0, "input"

    .line 305
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 307
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    const/4 v1, 0x1

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    :cond_1
    return-void
.end method

.method public releaseFreezedAppPid(I)V
    .locals 6

    .line 1218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1219
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1220
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1222
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1224
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1228
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v4, :cond_1

    .line 1229
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v5, "CustomFrequencyManagerService"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CustomFrequencyManager;

    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1231
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    const-string v0, "freeze"

    .line 1232
    invoke-virtual {p0, p1, v3, v0}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 1234
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UFZ error : pid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (when app died or watchdog half)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1236
    :cond_2
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UFZ : release pid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (when app died or watchdog half)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1240
    throw p0

    :catchall_1
    move-exception p0

    .line 1224
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public releaseRestriction(I)V
    .locals 3

    .line 3885
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    monitor-enter v0

    .line 3886
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3887
    monitor-exit v0

    return-void

    .line 3888
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3889
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3890
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_1

    .line 3891
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release restriction for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    :cond_1
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(ZI)V

    return-void

    :catchall_0
    move-exception p0

    .line 3889
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeBgTriggerMsg()V
    .locals 1

    .line 3337
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_0

    .line 3338
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "removeBgTriggerMsg...."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    :cond_0
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    return-void
.end method

.method public removeRestrictedPackages(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 3

    .line 3874
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_0

    .line 3875
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRestrictedPackages uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3877
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3878
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 3880
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

.method public reportAsyncBinder(IIIILjava/lang/String;I)V
    .locals 5

    const-string v0, ""

    if-eqz p5, :cond_c

    .line 1742
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1743
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 1746
    iget-object v0, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1747
    iget v3, v2, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 1749
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "free_buffer_full"

    .line 1750
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p4, v1, :cond_3

    :cond_2
    const-string/jumbo v1, "mismatch"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3
    const-string p1, "Binder(1)-"

    .line 1751
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    if-eqz v4, :cond_5

    .line 1754
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binder(1)-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_1

    .line 1757
    :cond_5
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1759
    iget-object p4, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p4

    .line 1760
    :try_start_1
    iget-object p5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p5, :cond_6

    iget-object p5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_6
    iget p5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v2, p5}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(Ljava/lang/String;I)Z

    move-result p5

    if-eqz p5, :cond_7

    .line 1761
    sget-object p5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "u="

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not mars target, try google freezer ufz p="

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/16 p2, 0x19

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 1764
    :cond_7
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1766
    :cond_8
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ProcessRecord of p="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not found or not target of FAS."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 1770
    :cond_9
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p3

    const/16 v1, 0x9

    invoke-virtual {p3, v1, v2, v2, p5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 1771
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binder(1)-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    .line 1773
    :cond_a
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p3

    const/16 v1, 0x11

    invoke-virtual {p3, v1, v2, v2, p5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1774
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidForegroundService(I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1775
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binder(1)-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_b
    if-eqz v4, :cond_c

    .line 1779
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p3

    const/16 v1, 0x1c

    invoke-virtual {p3, v1, v0, v2, p5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1780
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binder(1)-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    .line 1749
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 1784
    :cond_c
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_d

    .line 1785
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string p3, "ABI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final reportBinderUid(IIIILjava/lang/String;II)V
    .locals 7

    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p7

    .line 4542
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/FreecessController;->reportAsyncBinder(IIIILjava/lang/String;I)V

    goto :goto_0

    .line 4544
    :cond_0
    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz p3, :cond_1

    .line 4546
    sget-object p3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive binder-module info(callerPid:"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",uid:"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",code:"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",interfaceToken:"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",flag:"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") from kernel"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "Binder(0)"

    .line 4549
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 4552
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final reportCFBUid(I)V
    .locals 3

    .line 4581
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_0

    .line 4582
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive cfb-module info(uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from kernel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "Cfb"

    .line 4584
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4587
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void
.end method

.method public final reportPacketUid(I)V
    .locals 3

    .line 4557
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_0

    .line 4558
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive packet-module info(uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from kernel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isFrozenByCalmMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Packet"

    .line 4563
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void
.end method

.method public reportProcessFreezableChangedLocked(Ljava/util/ArrayList;)V
    .locals 3

    .line 4337
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4338
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4340
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 4341
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4342
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_1
    return-void
.end method

.method public final reportSignal(II)V
    .locals 5

    .line 1695
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_0

    .line 1696
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive signal-module info(uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from kernel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_0
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1701
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v0

    .line 1702
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1703
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1704
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1705
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    move v1, v2

    goto :goto_0

    .line 1710
    :cond_1
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pid ufz error: Process id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not frozen or doesn\'t belong to uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const-string v0, ""

    .line 1716
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0

    if-lez p2, :cond_4

    .line 1717
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    .line 1719
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isPidUfzEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const-string v0, "Signal"

    .line 1720
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->unFreezePackageForProc(IILjava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p2, "Signal"

    const-wide/16 v0, 0x3e8

    .line 1723
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)Z

    :goto_2
    return-void
.end method

.method public reportSocketResult(Z)V
    .locals 2

    .line 4567
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_0

    .line 4568
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Receive socket exception from kernel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 4571
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 4572
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 4573
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 4574
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    if-eqz p1, :cond_1

    .line 4576
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->registerFreecessTrigger()V

    :cond_1
    return-void
.end method

.method public final resetFreecessStateForLcdOnFreeze()V
    .locals 4

    .line 3719
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_2

    .line 3720
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3721
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 3722
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3723
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 3725
    iput v3, v2, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3728
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
    return-void
.end method

.method public sendFreecessMsg2kernel(IIII)I
    .locals 8

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 4462
    :try_start_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    move-result-object v3

    .line 4464
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    .line 4465
    array-length v5, v3

    const-wide/16 v6, 0x1f4

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4468
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public final sendFreecessSignal(III)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "/dev/freezer/thaw/cgroup.procs"

    .line 1364
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_1
    const-string p1, "/dev/freezer/frozen/cgroup.procs"

    .line 1367
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1341
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZLcom/android/server/am/FreecessController$checkResultCallback;)Z

    move-result p0

    return p0
.end method

.method public final sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZLcom/android/server/am/FreecessController$checkResultCallback;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "/dev/freezer/thaw/cgroup.procs"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    .line 1349
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;ZLcom/android/server/am/FreecessController$checkResultCallback;)Z

    move-result p1

    .line 1350
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->releaseRestriction(I)V

    move p0, p1

    goto :goto_0

    :cond_1
    const-string v4, "/dev/freezer/frozen/cgroup.procs"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    .line 1353
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;ZLcom/android/server/am/FreecessController$checkResultCallback;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public setCarModeOnState(Z)V
    .locals 0

    .line 420
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    return-void
.end method

.method public setEmergencyModeOnState(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    return-void
.end method

.method public final setFirewallChainEnabled(IZ)V
    .locals 3

    .line 1610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1611
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "network_management"

    .line 1612
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1615
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_1

    .line 1617
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1619
    :try_start_1
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured while setFirewallChainEnabled: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1621
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1622
    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public setFreeceeEnhanceEnabled(Z)V
    .locals 0

    .line 436
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    return-void
.end method

.method public setFreecessEnableForDump(Z)V
    .locals 1

    .line 594
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 598
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 600
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    return-void
.end method

.method public setFreecessEnableForSmartSwitch(Z)V
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    :cond_1
    const/4 v0, 0x2

    .line 610
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    return-void
.end method

.method public setFreecessEnableForSpecificReason(ZI)V
    .locals 4

    .line 614
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->convertUnfreezeTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v3, "ON"

    goto :goto_0

    :cond_0
    const-string v3, "OFF"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FRZ"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setOLAFEnabled(Z)V

    .line 624
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 626
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p0

    if-nez p0, :cond_3

    .line 627
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    goto :goto_1

    .line 630
    :cond_1
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    .line 632
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p2

    if-nez p2, :cond_2

    .line 633
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsHandler;->removeMessages(I)V

    .line 636
    :cond_2
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 640
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Lcom/android/server/am/FreecessHandler;->removeMessages(I)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setOLAFEnabled(Z)V

    .line 645
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 646
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setFreecessEnabled(Z)V
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 383
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez p1, :cond_0

    const-string p1, "DisableFC"

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFreecessPolicyFromSCPM(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "true"

    .line 4592
    :try_start_0
    new-instance v1, Lcom/android/server/am/FreecessPolicy;

    invoke-direct {v1}, Lcom/android/server/am/FreecessPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    .line 4593
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4595
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    const-string/jumbo v2, "master_switch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/am/FreecessPolicy;->setMasterSwitch(Z)V

    const-string p1, "freeze_enhanced_mode"

    .line 4597
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4598
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/FreecessPolicy;->setQuickFreezeEnabled(Z)V

    .line 4599
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/server/am/FreecessPolicy;->setLessUnfreezeEnabled(Z)V

    const-string p1, "freeze_timeout"

    .line 4601
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4602
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessPolicy;->setQuickFreezeCheckTime(I)V

    .line 4603
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreecessPolicy;->setQuickFreezeIntervalTime(I)V

    const-string p1, "google_freeze_timeout"

    .line 4605
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4606
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreecessPolicy;->setGoogleFreezeTime(I)V

    const-string p1, "google_freezer_exemption_list"

    .line 4608
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4609
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 4610
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessPolicy;->addGoogleFreezeExemptionPackage(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4612
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPolicy;->getMasterSwitch()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 4613
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPolicy;->getQuickFreezeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 4614
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPolicy;->getLessUnfreezeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 4615
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPolicy;->getQuickFreezeCheckTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/FreecessHandler;->setQuickFrecessCheckTime(I)V

    .line 4616
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPolicy;->getQuickFreezeIntervalTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/FreecessHandler;->setQuickFrecessIntervalTime(I)V

    .line 4617
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p1, p1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPolicy;->getGoogleFreezeTime()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->setFreezerDebounceTimeout(J)V

    .line 4618
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPolicy;->getGoogleFreezeExemptionList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4619
    invoke-static {}, Lcom/android/server/am/mars/database/MARsExemptionManager;->getInstance()Lcom/android/server/am/mars/database/MARsExemptionManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessPolicy;->getGoogleFreezeExemptionList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsExemptionManager;->setExemptionList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4622
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFreecessPolicyFromSCPM Exception error!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setFreezeExcludeList(Ljava/util/ArrayList;)V
    .locals 7

    .line 3314
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    monitor-enter v0

    .line 3315
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3316
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3317
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3318
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    invoke-static {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3321
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3322
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 3323
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3324
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3325
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v3, :cond_2

    .line 3327
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3328
    iput-boolean v1, v3, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 3329
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3333
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 3321
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setIsDoingGC(IZ)V
    .locals 1

    .line 678
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 679
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 681
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    goto :goto_0

    .line 682
    :cond_0
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 684
    :cond_1
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

.method public setIsDumpstateWorking(Z)V
    .locals 0

    .line 655
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    return-void
.end method

.method public setIsSmartSwitchWorking(Z)V
    .locals 0

    .line 663
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    return-void
.end method

.method public setLRsEnabled(Z)V
    .locals 0

    .line 570
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    return-void
.end method

.method public setOLAFBlockList(Ljava/lang/String;)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setOLAFEnabled(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    return-void
.end method

.method public setPendingBlocklistForGPS(Ljava/lang/String;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 532
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setPendingIntentList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "block"

    .line 516
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "blockchn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const-string v0, "idle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 526
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public declared-synchronized setProcessAllowList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    const-string v0, "equals"

    .line 540
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    if-eqz p2, :cond_8

    .line 542
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 543
    monitor-exit p0

    return-void

    .line 544
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "contains"

    .line 546
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    if-eqz p2, :cond_8

    .line 548
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 549
    monitor-exit p0

    return-void

    .line 550
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "startsWith"

    .line 552
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    if-eqz p2, :cond_8

    .line 554
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_5

    .line 555
    monitor-exit p0

    return-void

    .line 556
    :cond_5
    :try_start_3
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v0, "endsWith"

    .line 558
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 559
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    if-eqz p2, :cond_8

    .line 560
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_7

    .line 561
    monitor-exit p0

    return-void

    .line 562
    :cond_7
    :try_start_4
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/FreecessController;->lastUpdateTimeProcessAllowList:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 539
    :cond_9
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setRestrictionFlagFromDC(I)V
    .locals 0

    .line 407
    iput p1, p0, Lcom/android/server/am/FreecessController;->mRestrictionFlagFromDC:I

    .line 408
    invoke-static {}, Lcom/android/server/am/FreecessTrigger;->getInstance()Lcom/android/server/am/FreecessTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessTrigger;->registerReceiverForEnhancedFreecess()V

    return-void
.end method

.method public setScreenOnFreecessEnabled(Z)V
    .locals 1

    .line 3276
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eq v0, p1, :cond_0

    .line 3277
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    .line 3278
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    :cond_0
    return-void
.end method

.method public setScreenOnState(Z)V
    .locals 7

    .line 3297
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz p1, :cond_0

    .line 3298
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_0

    .line 3299
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3300
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 3301
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string v4, "TopApp-ScreenOn"

    const-wide/16 v5, 0x2710

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    .line 3302
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->unfreezeWallPaperPackage()V

    :cond_0
    return-void
.end method

.method public setUidIdleCheckMode(Z)V
    .locals 2

    .line 3287
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 3288
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p1, :cond_0

    .line 3289
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FRECESS DEBUGGING MODE CHANGED ! Uid Idle Checking will be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setWakeLockEnableDisable(Ljava/lang/String;IZZ)V
    .locals 2

    .line 3807
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_0

    .line 3808
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 3811
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManagerInternal;->setWakeLockEnableDisable(IZ)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3814
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const-string p3, "disable"

    goto :goto_0

    :cond_1
    const-string p3, "enable"

    :goto_0
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " frozen app ("

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") wakelock."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne v0, p3, :cond_5

    const-string p3, "Wakelock"

    if-eqz p4, :cond_4

    .line 3817
    iget-boolean p4, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz p4, :cond_3

    return-void

    .line 3821
    :cond_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 3823
    :cond_4
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result p4

    if-nez p4, :cond_5

    .line 3825
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public shouldDropServiceRestart(Ljava/lang/String;I)Z
    .locals 2

    .line 2040
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2041
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2042
    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2043
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2045
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-nez p1, :cond_1

    const-string p1, "Signal"

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 2047
    :cond_1
    monitor-exit v0

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 6

    if-eq p1, p2, :cond_0

    .line 3539
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->covertLcdOnFreezedState(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->covertLcdOnFreezedState(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    goto :goto_0

    .line 3561
    :cond_1
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessHandler;->sendLcdOnFreezeTriggerMsg(Ljava/lang/String;I)V

    goto :goto_0

    .line 3553
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3554
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget v3, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v5, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessHandler;->sendMakePkgIdleMsg(Ljava/lang/String;IILjava/lang/String;Z)V

    goto :goto_0

    .line 3557
    :cond_3
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFrozenMsg(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 3542
    :cond_4
    invoke-virtual {p0, p4}, Lcom/android/server/am/FreecessController;->checkImportantPackage(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 3545
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p4, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFreezeableMsg(Ljava/lang/String;IZLjava/lang/String;)V

    goto :goto_0

    .line 3547
    :cond_5
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFreezeableMsg(Ljava/lang/String;IZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public triggerCalmMode(Ljava/util/ArrayList;)V
    .locals 11

    const/4 v0, 0x1

    .line 2908
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2910
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    if-eqz p1, :cond_0

    .line 2913
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getCalmModeAllowList(Ljava/util/ArrayList;)Lcom/android/server/am/FreecessPkgMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 2916
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2917
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2919
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_1

    .line 2920
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object p1

    .line 2923
    :cond_1
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2924
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->setUsingAudioList(Z)V

    .line 2926
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 2927
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 2928
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 2929
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2932
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2933
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v9, :cond_4

    .line 2934
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has window surface, skip to freeze CalmMode"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v9, "CalmMode First trigger"

    .line 2939
    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2940
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v9, :cond_3

    .line 2941
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2942
    :cond_3
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v9, v9, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2943
    iput-boolean v0, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2946
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2947
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->setUsingAudioList(Z)V

    .line 2949
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string p1, "CalmMode "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2946
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public triggerLcdOnFreeze(ILjava/lang/String;)V
    .locals 5

    .line 3456
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getUidIdleCheckMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 3457
    :goto_1
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    .line 3458
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 3459
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v3, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    if-nez v3, :cond_2

    .line 3460
    monitor-exit v2

    return-void

    .line 3462
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 3467
    :cond_3
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Z)V

    goto :goto_3

    .line 3463
    :cond_4
    :goto_2
    iget p1, v3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    if-ne p1, v1, :cond_5

    const-string/jumbo p2, "uidIdle"

    .line 3464
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 3469
    :cond_5
    :goto_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public triggerOLAF(Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2576
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v1, v8}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Ljava/lang/String;I)V

    .line 2579
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-string v8, "activity"

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2581
    sget-boolean v7, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    const-wide/16 v8, 0x40

    if-eqz v7, :cond_0

    const-string v7, "Trigger OLAF"

    .line 2582
    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2584
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2586
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v10, :cond_1

    .line 2587
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object v7

    .line 2590
    :cond_1
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2594
    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    const/4 v13, 0x0

    if-eqz v10, :cond_18

    .line 2595
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2596
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 2598
    :try_start_0
    iget-object v15, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v15}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v15

    .line 2599
    :goto_0
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v13, v8, :cond_2

    .line 2600
    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2601
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2603
    :cond_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2605
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2606
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/FreecessPkgStatus;

    .line 2607
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    if-eqz v13, :cond_15

    .line 2608
    :try_start_1
    iget-object v15, v13, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-nez v15, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz v15, :cond_4

    .line 2611
    iget-boolean v15, v15, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v15, :cond_4

    .line 2612
    monitor-exit v14

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 2614
    iget-object v15, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    iget v15, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v15, v2, :cond_5

    .line 2615
    monitor-exit v14

    goto :goto_2

    .line 2618
    :cond_5
    iget-object v15, v13, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 2619
    monitor-exit v14

    :goto_2
    move-wide/from16 v17, v5

    move-object/from16 v16, v10

    goto/16 :goto_7

    .line 2623
    :cond_6
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v15

    iget-object v11, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v13, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    move-object/from16 v16, v10

    const/4 v10, 0x4

    invoke-virtual {v15, v11, v12, v10}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2624
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v10, :cond_7

    .line 2625
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip isInPolicyExceptionList app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_7
    monitor-exit v14

    :goto_3
    move-wide/from16 v17, v5

    goto/16 :goto_7

    .line 2630
    :cond_8
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2631
    iget-object v10, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultHomePackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2632
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_9

    .line 2633
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip to freeze prev app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_9
    monitor-exit v14

    goto :goto_3

    .line 2638
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_c

    iget-object v10, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2639
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_b

    .line 2640
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has window surface, skip to freeze"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_b
    monitor-exit v14

    goto :goto_3

    .line 2645
    :cond_c
    iget-boolean v10, v13, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    if-eqz v10, :cond_e

    .line 2646
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_d

    .line 2647
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " olaf allowlist, skip to freeze"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_d
    monitor-exit v14

    goto/16 :goto_3

    .line 2652
    :cond_e
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget-object v11, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget v11, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    goto/16 :goto_5

    .line 2660
    :cond_f
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v10

    iget v11, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidTop(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2662
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is top app, skip to freeze"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    monitor-exit v14

    goto/16 :goto_3

    .line 2666
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v13, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-eqz v10, :cond_11

    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eqz v10, :cond_11

    .line 2667
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BG freezed, skip OLAF freeze for ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    monitor-exit v14

    goto/16 :goto_3

    .line 2671
    :cond_11
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v10

    iget-object v11, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v13, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v15, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move-wide/from16 v17, v5

    const/16 v5, 0xb

    invoke-virtual {v10, v5, v11, v12, v15}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_12

    .line 2673
    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 2675
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    :goto_4
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v8

    const-wide/16 v10, 0x1

    cmp-long v5, v5, v10

    if-ltz v5, :cond_16

    .line 2681
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 2682
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v8, v5

    goto :goto_7

    :cond_13
    :goto_5
    move-wide/from16 v17, v5

    .line 2653
    :try_start_2
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_14

    .line 2654
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " olaf debug allowlist, skip to freeze"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    :cond_14
    monitor-exit v14

    goto :goto_7

    :cond_15
    :goto_6
    move-wide/from16 v17, v5

    move-object/from16 v16, v10

    .line 2609
    monitor-exit v14

    :cond_16
    :goto_7
    move-object/from16 v10, v16

    move-wide/from16 v5, v17

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 2677
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_17
    move-wide/from16 v17, v5

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    .line 2603
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_18
    move-wide/from16 v17, v5

    .line 2686
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 2688
    :try_start_4
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v6

    .line 2689
    :goto_8
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v13, v8, :cond_26

    .line 2690
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2691
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-eqz v9, :cond_19

    iget-boolean v9, v9, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v9, :cond_19

    goto :goto_9

    :cond_19
    if-eqz v1, :cond_1a

    .line 2694
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget v9, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v9, v2, :cond_1a

    goto :goto_9

    .line 2698
    :cond_1a
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v9, :cond_1c

    :goto_9
    const/4 v12, 0x4

    :cond_1b
    :goto_a
    const/16 v15, 0xb

    goto/16 :goto_c

    .line 2703
    :cond_1c
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 2704
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v9, :cond_1b

    .line 2705
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip isInPolicyExceptionList app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2710
    :cond_1d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 2711
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-eqz v9, :cond_1e

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultHomePackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 2712
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v9, :cond_1b

    .line 2713
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip to freeze prev app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2718
    :cond_1e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1f

    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 2719
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v9, :cond_1b

    .line 2720
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has window surface, skip to freeze"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2725
    :cond_1f
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    if-eqz v9, :cond_20

    .line 2726
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v9, :cond_1b

    .line 2727
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " olaf allowlist, skip to freeze"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2732
    :cond_20
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget v10, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    goto :goto_b

    .line 2740
    :cond_21
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v9

    iget v10, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidTop(I)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 2742
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is top app, skip to freeze"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2746
    :cond_22
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v14, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v15, 0xb

    invoke-virtual {v9, v15, v10, v11, v14}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_23

    .line 2748
    invoke-virtual {v0, v8, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    goto :goto_c

    .line 2750
    :cond_23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_24
    :goto_b
    const/16 v15, 0xb

    .line 2733
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v9, :cond_25

    .line 2734
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " olaf debug allowlist, skip to freeze"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    .line 2753
    :cond_26
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2756
    :goto_d
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 2757
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_27

    goto :goto_e

    .line 2763
    :cond_27
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    goto :goto_e

    .line 2767
    :cond_28
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v8

    .line 2770
    :try_start_5
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v9

    invoke-virtual {v9, v7, v5}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2771
    invoke-virtual {v0, v7, v5}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v7

    if-eqz v7, :cond_29

    .line 2773
    invoke-virtual {v0, v7, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 2776
    :cond_29
    monitor-exit v8

    goto :goto_e

    :catchall_2
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 2779
    :cond_2a
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_2b

    const-wide/16 v5, 0x40

    .line 2780
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 2782
    :cond_2b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OLAF "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    move-wide/from16 v6, v17

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2783
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/FreecessController;->convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 2782
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->sendOLAFTimeOutMsg(J)V

    return-void

    :catchall_3
    move-exception v0

    .line 2753
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public turnOnOffFreecessMonitor(Z)V
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setFreecessEnabled(Z)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    return-void
.end method

.method public final unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z
    .locals 12

    const-string v0, "Packet"

    .line 2367
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 2370
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v2, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v2, :cond_f

    .line 2372
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->isPidUfzEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2373
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const-string v4, "Signal"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->sendUnpendingScheduleServiceRestartMsg(IZ)V

    .line 2376
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-eqz v2, :cond_2

    .line 2377
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v2, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v2, :cond_1

    .line 2378
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OLAF:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    return v1

    :cond_1
    if-eqz p3, :cond_2

    .line 2380
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    if-eqz p3, :cond_2

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 2381
    iput-boolean v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 2384
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-object p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    return v1

    .line 2389
    :cond_2
    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {p0, p3, v2, v4, v5}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result p3

    const-string v2, "("

    if-eqz p3, :cond_c

    .line 2392
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateUnfreezeState(JLjava/lang/String;)V

    .line 2393
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    .line 2394
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2396
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UFZ"

    invoke-virtual {v0, v6, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Watchdog_HALF"

    .line 2398
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "UFZ : "

    if-nez v0, :cond_4

    const-string v0, "Watchdog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2401
    :cond_3
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), reason: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2399
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), FZ-time:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v7, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :goto_1
    iget-object v7, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v9, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-boolean v10, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iget-boolean v11, p1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/FreecessController;->onUnfreeze(Ljava/lang/String;IIZZ)V

    .line 2406
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 2407
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 2410
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_5

    .line 2411
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2412
    iput v5, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2413
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2414
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v4, "CalmMode"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 2416
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v2, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-nez v2, :cond_6

    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    if-eqz v0, :cond_a

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2417
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2418
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v2, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2419
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    if-eqz v2, :cond_8

    .line 2420
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    move v3, v5

    :goto_2
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    goto :goto_3

    .line 2422
    :cond_8
    iput v5, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    goto :goto_3

    .line 2425
    :cond_9
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2428
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v2, :cond_b

    .line 2429
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-virtual {p0, v0, v2, p2, p1}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    goto :goto_4

    .line 2431
    :cond_a
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2434
    :cond_b
    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/FreecessController;->updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 2436
    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-wide/16 v7, 0x5dc

    move-object v3, p0

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    .line 2438
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 2439
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    .line 2443
    iget-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    if-eqz p0, :cond_d

    .line 2444
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    .line 2451
    :cond_d
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UFZ error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    move v1, p3

    :cond_f
    return v1
.end method

.method public final unFreezeActionForPid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2458
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2459
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2462
    iput-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    const/4 p0, 0x1

    .line 2463
    iput-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->isPidFreezed:Z

    .line 2464
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PROC: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " <u="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", p="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UFZ"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unFreezeActivePackages(Ljava/lang/String;)V
    .locals 7

    .line 2188
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2190
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2191
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 2192
    iget-object v5, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v5, v5, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v5

    iget v6, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2193
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2196
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

.method public unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 3052
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3055
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 3058
    :cond_0
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_1

    .line 3059
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalmMode UFZ : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public unFreezeForOLAF(Ljava/lang/String;)V
    .locals 13

    .line 3171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3174
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_0

    .line 3175
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OLAF unfreeze for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Unfreeze OLAF"

    .line 3176
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3179
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3180
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 3182
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 3183
    :goto_0
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 3184
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3186
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3189
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 3190
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    if-eqz v8, :cond_b

    .line 3191
    :try_start_1
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-nez v10, :cond_3

    goto/16 :goto_4

    .line 3194
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eqz v10, :cond_4

    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    if-nez v10, :cond_4

    .line 3195
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BG freezed, skip OLAF unfreeze for ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    monitor-exit v9

    goto :goto_1

    .line 3200
    :cond_4
    iget-boolean v10, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v10, :cond_5

    .line 3201
    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v10, :cond_5

    .line 3203
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean v7, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    const/4 v10, 0x3

    .line 3204
    iput v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 3205
    iput v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3206
    monitor-exit v9

    goto :goto_1

    .line 3214
    :cond_5
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 3215
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v10, :cond_6

    .line 3217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OLAF:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v10, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3218
    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 3221
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":nMARsTG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v10, v7}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3223
    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 3226
    :cond_7
    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    if-eqz v10, :cond_8

    .line 3228
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-object v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    invoke-virtual {p0, v8, v10}, Lcom/android/server/am/FreecessController;->unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    .line 3229
    iput-boolean v7, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    goto :goto_2

    .line 3233
    :cond_8
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v10, :cond_9

    .line 3234
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OLAF:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v10, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3238
    :cond_9
    :goto_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3240
    :cond_a
    :goto_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 3244
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    goto/16 :goto_1

    .line 3192
    :cond_b
    :goto_4
    :try_start_2
    monitor-exit v9

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    .line 3240
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 3249
    :cond_c
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v2, :cond_d

    .line 3250
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3252
    :cond_d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const-string v3, "UFA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OLAF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result p1

    if-nez p1, :cond_f

    move p1, v7

    .line 3256
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 3257
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v0, :cond_e

    .line 3259
    iget v2, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;)V

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 3265
    :cond_f
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter p1

    const-wide/16 v0, 0x0

    .line 3266
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 3267
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3268
    iput-boolean v7, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    return-void

    :catchall_1
    move-exception p0

    .line 3267
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 3186
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public unFreezePackage(ILjava/lang/String;)V
    .locals 5

    .line 2164
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2165
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2167
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 2168
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v4, 0x1

    .line 2169
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move p0, v1

    move v3, p0

    .line 2171
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    .line 2173
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v2, v3, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 2171
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unFreezePackage(Ljava/lang/String;)V
    .locals 5

    .line 2178
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2180
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2181
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 2182
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2184
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

.method public unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 2150
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2151
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2152
    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 2153
    invoke-virtual {p0, v1, p3, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    .line 2154
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 2156
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 2154
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unFreezePackageForProc(IILjava/lang/String;)V
    .locals 3

    .line 2236
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2237
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 2238
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isPidUfzEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2239
    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/am/FreecessController;->unFreezeActionForPid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2241
    invoke-virtual {p0, v1, p3, p1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 2242
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

.method public unFreezeSpecialPackage(ILjava/lang/String;)V
    .locals 5

    .line 2215
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2216
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2218
    monitor-exit v0

    return-void

    .line 2219
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2220
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 2222
    :cond_1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2223
    monitor-exit v0

    return-void

    .line 2224
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 2225
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2226
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2227
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2228
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2229
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/16 v4, 0x1c

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2230
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-virtual {p0, v2, v1, p2, p1}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 2232
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unFreezeWidgetPackages(Ljava/lang/String;)V
    .locals 10

    .line 2200
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2202
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2203
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 2204
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v8, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v9, 0x4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->filter(Ljava/lang/String;III)I

    move-result v5

    if-lez v5, :cond_0

    .line 2206
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2209
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

.method public unRestrictPackage(I)V
    .locals 1

    .line 2246
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2247
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getRestrictedPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2249
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->cancelRestrictState()V

    .line 2251
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

.method public unfreezeAllPackages(Ljava/lang/String;)V
    .locals 0

    .line 2470
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 2472
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->cleanPacketMonitoredUids()V

    return-void
.end method

.method public unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .locals 4

    .line 2857
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2860
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    .line 2861
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2862
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2863
    iput v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2865
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 2867
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2868
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2870
    :cond_1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v2, v2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UFZ"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_2

    .line 2873
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OLAF UFZ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 2879
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2882
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    .line 2883
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2884
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2885
    iput v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2887
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 2891
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget p3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2893
    :cond_1
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_2

    .line 2894
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OLAF UFZ : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .locals 12

    const-string v0, "Packet"

    .line 3133
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3135
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v1

    const-string v2, "("

    if-eqz v1, :cond_2

    .line 3138
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    .line 3139
    iput-boolean v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 3141
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OLAF:P-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v4, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UFZ"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v7, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-boolean v8, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iget-boolean v9, p1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/FreecessController;->onUnfreeze(Ljava/lang/String;IIZZ)V

    .line 3145
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3146
    iput v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3149
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3150
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 3152
    :cond_1
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_4

    .line 3153
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OLAF Pending UFZ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 3157
    iget-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    if-eqz p0, :cond_3

    .line 3158
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    .line 3165
    :cond_3
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UFZ error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public unfreezeWallPaperPackage()V
    .locals 3

    .line 3308
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getWallpaperPackage()Ljava/lang/String;

    move-result-object p0

    .line 3309
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getWallpaperUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3310
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string v2, "WallPaper"

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public unpendingScheduleServiceRestartUid(IZ)V
    .locals 0

    .line 2363
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->unpendingScheduleServiceRestart(IZ)V

    return-void
.end method

.method public updateAbnormalAppFirewall(IZ)V
    .locals 3

    .line 1569
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAbnormalAppFirewall uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", allow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    return-void
.end method

.method public updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1376
    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1377
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    monitor-enter v0

    .line 1378
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludePackages:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1379
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 1381
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1384
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowPackages:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1385
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 1388
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowPackages:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1389
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    :cond_4
    return-void
.end method

.method public final updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V
    .locals 1

    .line 1627
    iget p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1635
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    goto :goto_0

    .line 1632
    :cond_1
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    goto :goto_0

    .line 1629
    :cond_2
    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iput-boolean p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    :goto_0
    return-void
.end method

.method public final updateFreezedUidFirewall(IZ)V
    .locals 6

    .line 1543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1545
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "network_management"

    .line 1546
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1549
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_2

    const-string v2, "NET"

    const-string v3, ","

    const/4 v4, 0x7

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 1552
    :try_start_0
    invoke-interface {p0, v4, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 1553
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UFZ] "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1554
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, v2, p0}, Lcom/android/server/am/MARsPolicyManager;->addNetDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 1556
    invoke-interface {p0, v4, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 1557
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FRZ] "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1558
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, v2, p0}, Lcom/android/server/am/MARsPolicyManager;->addNetDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1561
    :try_start_1
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured while updateFreezedUidFirewall: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1563
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1564
    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public updateRunningLocationPackages()V
    .locals 4

    .line 1394
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1395
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1399
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "location"

    .line 1400
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-eqz v0, :cond_3

    .line 1404
    invoke-interface {v0}, Landroid/location/ILocationManager;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1406
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1408
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1416
    :catch_0
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v0, "failed to updateRunningLocationPackages!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public updateTargetPkgForOLAF(ZLjava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2531
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2532
    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    .line 2533
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    :cond_0
    return-void
.end method

.method public final writeDevFile(Ljava/lang/String;II)Z
    .locals 8

    .line 1244
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1258
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "/dev/freezer/thaw/cgroup.procs"

    .line 1259
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 1260
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v3

    .line 1261
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1262
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1264
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1265
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz p1, :cond_3

    .line 1266
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter p1

    .line 1267
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1268
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1269
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1270
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 1271
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1273
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    :cond_2
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1279
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_6

    .line 1281
    iput-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1282
    iput-wide v0, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1283
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 1264
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    const-string p2, "/dev/freezer/frozen/cgroup.procs"

    .line 1285
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1287
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter p1

    .line 1288
    :try_start_3
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1289
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1291
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p2, p2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz p2, :cond_5

    .line 1292
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2, p3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1294
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/PerProcessNandswap;

    move-result-object v2

    .line 1295
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v6, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1297
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v7

    .line 1298
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p2

    .line 1294
    invoke-virtual {v2, v3, v6, v7, p2}, Lcom/android/server/chimera/PerProcessNandswap;->onProcessFrozen(ILjava/lang/String;IZ)V

    .line 1308
    :cond_5
    monitor-exit p1

    move p1, v4

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_6
    :goto_2
    move p1, v5

    .line 1311
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1314
    :try_start_4
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez p2, :cond_7

    .line 1315
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v6, "CustomFrequencyManagerService"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/CustomFrequencyManager;

    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1317
    :cond_7
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string v6, "freeze"

    invoke-virtual {p2, p3, p1, v6}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1319
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, -0x1

    if-eqz p1, :cond_8

    if-eq p2, v2, :cond_8

    .line 1323
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1325
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1326
    iput-wide v0, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1327
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eq p2, v2, :cond_9

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    return v4

    :catchall_3
    move-exception p0

    .line 1319
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1320
    throw p0
.end method

.method public final writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;ZLcom/android/server/am/FreecessController$checkResultCallback;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v0, p4

    move-object/from16 v4, p6

    const-string v5, "/dev/freezer/frozen/cgroup.procs"

    .line 941
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "/dev/freezer/thaw/cgroup.procs"

    .line 942
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v5, v7

    .line 946
    :goto_0
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz p3, :cond_1

    .line 950
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 951
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 955
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 958
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v0, :cond_5

    if-nez v5, :cond_5

    .line 959
    iget-object v10, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v10

    .line 960
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 961
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 962
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 963
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 964
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 965
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :cond_4
    monitor-exit v10

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    iget-object v10, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v8, v0}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v10

    if-eqz v10, :cond_8

    const-string v0, ""

    packed-switch v10, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const-string v0, "BTOP"

    goto :goto_4

    :pswitch_1
    const-string v0, "RL"

    goto :goto_4

    :pswitch_2
    const-string v0, "FG"

    goto :goto_4

    :pswitch_3
    const-string v0, "SP"

    goto :goto_4

    :pswitch_4
    const-string v0, "LP"

    goto :goto_4

    :pswitch_5
    const-string v0, "RI"

    goto :goto_4

    :pswitch_6
    const-string v0, "ES"

    goto :goto_4

    :pswitch_7
    const-string v0, "AD"

    :goto_4
    if-eqz v4, :cond_6

    .line 1006
    invoke-interface {v4, v0}, Lcom/android/server/am/FreecessController$checkResultCallback;->freezeSkipFrozen(Ljava/lang/String;)V

    :cond_6
    return v7

    :cond_7
    const/4 v0, 0x0

    :cond_8
    move-object v4, v0

    .line 1012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1016
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, -0x1

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1018
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v5, :cond_b

    .line 1020
    iget-boolean v15, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v15, :cond_9

    .line 1021
    sget-object v15, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object/from16 p4, v14

    :try_start_3
    const-string v14, "UFZ : "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "), cached_pid: Y"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    move-object/from16 p4, v14

    .line 1022
    :goto_6
    iget-object v7, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 1023
    :try_start_4
    iget-object v14, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1024
    iget-object v14, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1026
    :cond_a
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1027
    :try_start_5
    iget-object v6, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_c

    const/4 v7, 0x0

    .line 1029
    iput-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1030
    iput-wide v10, v6, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1031
    iget-object v6, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    goto :goto_7

    :catchall_1
    move-exception v0

    .line 1026
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_b
    move-object/from16 p4, v14

    .line 1034
    :cond_c
    :goto_7
    iget-object v6, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v6, :cond_d

    .line 1035
    iget-object v6, v1, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v7, "CustomFrequencyManagerService"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/CustomFrequencyManager;

    iput-object v6, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1037
    :cond_d
    iget-object v6, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string v7, "freeze"

    invoke-virtual {v6, v0, v5, v7}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    const/4 v7, -0x1

    if-ne v6, v7, :cond_e

    .line 1039
    :try_start_8
    sget-object v7, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to set Freeze. uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", isFreeze="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", cached_pid: Y"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget v7, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    const/4 v14, 0x1

    add-int/2addr v7, v14

    iput v7, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    .line 1041
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    const-string v14, "DEV"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move/from16 p6, v6

    :try_start_9
    const-string v6, "cntFailUnfreezePilot="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", fpid="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 p6, v6

    :goto_8
    move/from16 v16, p6

    goto :goto_a

    :cond_e
    move/from16 p6, v6

    :goto_9
    move/from16 v16, p6

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 p4, v14

    .line 1045
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    move-object/from16 v14, p4

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1048
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v16, 0x0

    .line 1051
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1052
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v5, :cond_16

    .line 1055
    iget-boolean v14, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v14, :cond_11

    .line 1056
    sget-object v14, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p4, v0

    const-string v0, "FZ : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_11
    move-object/from16 p4, v0

    .line 1057
    :goto_d
    iget-object v14, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 1058
    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1059
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_12

    .line 1062
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1064
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/PerProcessNandswap;

    move-result-object v9

    .line 1065
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v15

    move-object/from16 p6, v4

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-wide/from16 v17, v12

    :try_start_c
    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1067
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v12

    .line 1068
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    .line 1064
    invoke-virtual {v9, v15, v4, v12, v0}, Lcom/android/server/chimera/PerProcessNandswap;->onProcessFrozen(ILjava/lang/String;IZ)V

    goto :goto_e

    :cond_12
    move-object/from16 p6, v4

    move-wide/from16 v17, v12

    .line 1078
    :goto_e
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v0, :cond_15

    .line 1079
    iget-object v4, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1080
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1081
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    :cond_13
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1083
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1084
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_14
    monitor-exit v4

    goto :goto_f

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0

    .line 1087
    :cond_15
    :goto_f
    monitor-exit v14

    const/4 v0, 0x0

    goto :goto_12

    :catchall_3
    move-exception v0

    move-wide/from16 v17, v12

    :goto_10
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_10

    :cond_16
    move-object/from16 p4, v0

    move-object/from16 p6, v4

    move-wide/from16 v17, v12

    .line 1089
    iget-boolean v0, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_17

    .line 1090
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UFZ : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_17
    iget-object v4, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1092
    :try_start_10
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1094
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    .line 1096
    :goto_11
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1097
    :try_start_11
    iget-object v4, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_19

    const/4 v9, 0x0

    .line 1099
    iput-boolean v9, v4, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1100
    iput-wide v10, v4, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1101
    iget-object v4, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :cond_19
    :goto_12
    iget-object v4, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v4, :cond_1a

    .line 1105
    iget-object v4, v1, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v9, "CustomFrequencyManagerService"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CustomFrequencyManager;

    iput-object v4, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1107
    :cond_1a
    iget-object v4, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string v9, "freeze"

    invoke-virtual {v4, v6, v5, v9}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_1e

    .line 1109
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to set Freeze. uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", isFreeze="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1c

    .line 1111
    iget v0, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cntFailFreeze="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fpid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (pids"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1117
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const-string v3, "DEV"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1121
    :cond_1c
    iget v9, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    const/4 v12, 0x1

    add-int/2addr v9, v12

    iput v9, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 1122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cntFailUnfreeze="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", uid="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", fpid="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (pids"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1123
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1124
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    .line 1125
    :cond_1d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") hasPidInFrozenPidList="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1126
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v9

    const-string v12, "DEV"

    invoke-virtual {v9, v12, v6}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v0, :cond_1e

    if-nez v7, :cond_1e

    const/4 v7, 0x1

    :cond_1e
    move-object/from16 v0, p4

    move/from16 v16, v4

    move-wide/from16 v12, v17

    move-object/from16 v4, p6

    goto/16 :goto_c

    :catchall_5
    move-exception v0

    .line 1096
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_19

    :cond_1f
    move-object/from16 p6, v4

    move-wide/from16 v17, v12

    move/from16 v4, v16

    .line 1134
    :goto_15
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1137
    invoke-virtual {v1, v5, v8}, Lcom/android/server/am/FreecessController;->onFreezeChanged(ZLjava/util/ArrayList;)V

    if-eqz v5, :cond_21

    .line 1140
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1141
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    .line 1142
    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1143
    iput-wide v10, v2, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1144
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_20
    const/4 v3, 0x1

    .line 1146
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->sendProcPostMonitoringMsg()V

    goto :goto_17

    :cond_21
    const/4 v3, 0x1

    :goto_17
    if-nez v7, :cond_22

    const/4 v1, -0x1

    if-eq v4, v1, :cond_22

    move v6, v3

    goto :goto_18

    :cond_22
    const/4 v6, 0x0

    :goto_18
    return v6

    :catchall_7
    move-exception v0

    move-wide/from16 v17, v12

    .line 1134
    :goto_19
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1135
    throw v0

    :cond_23
    move v1, v7

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
