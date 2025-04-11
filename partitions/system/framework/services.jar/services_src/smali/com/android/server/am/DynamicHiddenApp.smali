.class public Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# static fields
.field public static BORA_POLICY_ENABLE:Z = false

.field public static DEBUG:Z = false

.field public static final IS_HIGH_CAPACITY_RAM:Z

.field public static LMKD_REENTRY_MODE_ENABLE:Z

.field public static LMK_CRITICAL_ADJ:I

.field public static LMK_CRITICAL_UPGRADE:Z

.field public static LMK_CUSTOM_SW_LIMIT:I

.field public static LMK_CUSTOM_TM_LIMIT:I

.field public static LMK_DEBUG:Z

.field public static LMK_DOWNGRADE_PRESSURE:I

.field public static LMK_ENABLE_CMARBINFREE_SUB:Z

.field public static LMK_ENABLE_REENTRY_LMK:Z

.field public static LMK_ENABLE_UPGRADE_CRIADJ:Z

.field public static LMK_ENABLE_USERSPACE_LMK:Z

.field public static LMK_FREELIMIT_ENABLE:Z

.field public static LMK_FREELIMIT_VAL:I

.field public static LMK_KILL_HEAVIEST_TASK:Z

.field public static LMK_KILL_TIMEOUT_MS:I

.field public static LMK_LOW_ADJ:I

.field public static LMK_LOW_MEM_KEEP_ENABLE:Z

.field public static LMK_LOW_RAM_DEVICE:Z

.field public static LMK_MEDIUM_ADJ:I

.field public static LMK_PSI_CRITICAL_TH:I

.field public static LMK_PSI_LOW_TH:I

.field public static LMK_PSI_MEDIUM_TH:I

.field public static LMK_UPGRADE_PRESSURE:I

.field public static LMK_USE_MINFREE_LEVELS:Z

.field public static final MAX_NEVERKILLEDAPP_NUM:I

.field public static PICKED_ADJ_ENABLE:Z

.field public static alliedProtectedProcList:Ljava/util/ArrayList;

.field public static lastTime:J

.field public static mLMKArray:Ljava/lang/String;

.field public static mLMKScale:F

.field public static final mTotalMemMb:J

.field public static max_neverkilledapp_num_12g:I

.field public static max_neverkilledapp_num_16g:I

.field public static max_neverkilledapp_num_8g:I

.field public static max_neverkilledapp_num_default:I

.field public static reentryCount:I

.field public static reentryMap:Ljava/util/HashMap;

.field public static sHH_AMSExceptionEnable:Z

.field public static sPkgDecoder:Ljava/util/Base64$Decoder;


# instance fields
.field public final ACTION_DEFAULT_HOME_CHANGE:Ljava/lang/String;

.field public final ACTION_DOCK_EVENT:Ljava/lang/String;

.field public final ACTION_DOCK_STATE:Ljava/lang/String;

.field public ActiveLaunchCount:I

.field public ActiveLaunchLimit:I

.field public ActiveLaunchSlot:Ljava/util/ArrayList;

.field public final EXTRA_HOME_HUB_MODE:Ljava/lang/String;

.field public HomeHubState:Z

.field public MlLaunchCount:I

.field public MlLaunchSlot:Ljava/util/ArrayList;

.field public final PACKAGE_NAME_HOMEHUB:Ljava/lang/String;

.field public final TAG_HH:Ljava/lang/String;

.field public isReentryMode:Z

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mBGProtectManager:Lcom/android/server/am/BGProtectManager;

.field public final mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

.field public mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mContext:Landroid/content/Context;

.field public mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

.field public mGenAIReclaimMode:Lcom/android/server/am/GenAIReclaimMode;

.field public final mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mProcessList:Lcom/android/server/am/ProcessList;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "dha_lmk_scale"

    const-string v1, "-1"

    .line 63
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string v0, "dha_lmk_array"

    const-string/jumbo v1, "none"

    .line 65
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v0, "enable_picked_adj"

    const-string/jumbo v1, "true"

    .line 67
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    const-string v0, "bora_policy_enable"

    const-string v2, "false"

    .line 69
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    const-string v0, "hh_ams_exception"

    .line 71
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 73
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    const-string/jumbo v0, "neverkill_num_lowram"

    const-string v3, "0"

    .line 96
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_default:I

    const-string/jumbo v0, "neverkill_num_8G"

    const-string v4, "1"

    .line 97
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_8g:I

    const-string/jumbo v0, "neverkill_num_12G"

    const-string v4, "3"

    .line 98
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_12g:I

    const-string/jumbo v0, "neverkill_num_16G"

    const-string v4, "5"

    .line 99
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_16g:I

    .line 104
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v6, 0x2800

    cmp-long v0, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    .line 105
    :goto_0
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    const-wide/16 v8, 0x3000

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    .line 108
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_16g:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x2000

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    .line 110
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_12g:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x1800

    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    .line 112
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_8g:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    .line 114
    :cond_3
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_default:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    :goto_1
    const-string/jumbo v0, "low"

    const-string v4, "1001"

    .line 118
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_ADJ:I

    const-string/jumbo v0, "medium"

    const-string v4, "850"

    .line 119
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_MEDIUM_ADJ:I

    const-string v0, "critical"

    .line 120
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_ADJ:I

    const-string v0, "debug"

    .line 121
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_DEBUG:Z

    const-string v0, "critical_upgrade"

    .line 122
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_UPGRADE:Z

    const-string/jumbo v0, "upgrade_pressure"

    const-string v3, "80"

    .line 123
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    const-string v0, "downgrade_pressure"

    const-string v3, "100"

    .line 124
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    const-string/jumbo v0, "kill_heaviest_task"

    .line 125
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_HEAVIEST_TASK:Z

    const-string/jumbo v0, "ro.config.low_ram"

    .line 126
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_RAM_DEVICE:Z

    const-string/jumbo v0, "kill_timeout_ms"

    .line 128
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    const-string/jumbo v0, "use_minfree_levels"

    .line 129
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    .line 130
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    .line 131
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    const-string v0, "enable_cmarbinfree_sub"

    .line 132
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_CMARBINFREE_SUB:Z

    const-string v0, "enable_upgrade_criadj"

    .line 133
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    const-string v0, "freelimit_enable"

    .line 134
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    .line 135
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    const-string v0, "freelimit_val"

    const-string v1, "11"

    .line 136
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    const-string v0, "custom_sw_limit"

    const-string v1, "500"

    .line 137
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    const-string v0, "custom_tm_limit"

    const-string v1, "1000"

    .line 138
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    const-string/jumbo v0, "psi_low"

    const-string v1, "70"

    .line 139
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_LOW_TH:I

    const-string/jumbo v0, "psi_medium"

    .line 140
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    const-string/jumbo v0, "psi_critical"

    const-string v1, "120"

    .line 141
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    const-string/jumbo v0, "reentry_mode_enable"

    .line 489
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    .line 491
    sput v6, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    const-wide/16 v0, 0x0

    .line 492
    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {v0}, Lcom/android/server/bgslotmanager/CustomEFKManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 50
    new-instance v0, Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-direct {v0}, Lcom/android/server/bgslotmanager/MemInfoGetter;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    .line 51
    new-instance v1, Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-direct {v1, v0}, Lcom/android/server/bgslotmanager/BGSlotManager;-><init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 54
    new-instance v0, Lcom/android/server/am/BGProtectManager;

    invoke-direct {v0}, Lcom/android/server/am/BGProtectManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 86
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    const/4 v1, 0x1

    .line 87
    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    const-string v1, "ActivityManager_HOME_HUB"

    .line 390
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->TAG_HH:Ljava/lang/String;

    const-string v1, "home_hub_mode"

    .line 391
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_HOME_HUB_MODE:Ljava/lang/String;

    const-string v1, "com.samsung.android.homehub"

    .line 392
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->PACKAGE_NAME_HOMEHUB:Ljava/lang/String;

    const-string v1, "android.intent.extra.DOCK_STATE"

    .line 393
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ACTION_DOCK_STATE:Ljava/lang/String;

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 394
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ACTION_DOCK_EVENT:Ljava/lang/String;

    const-string v1, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    .line 395
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ACTION_DEFAULT_HOME_CHANGE:Ljava/lang/String;

    .line 398
    iput-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    .line 493
    iput-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    const/4 v0, 0x0

    .line 702
    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mGenAIReclaimMode:Lcom/android/server/am/GenAIReclaimMode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/DynamicHiddenApp-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/DynamicHiddenApp;-><init>()V

    return-void
.end method

.method public static decodeToStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 524
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    const-string v1, ""

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 532
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/DynamicHiddenApp;
    .locals 1

    .line 175
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    return-object v0
.end method


# virtual methods
.method public IsAllowListCleared()Z
    .locals 0

    .line 442
    sget-boolean p0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    return p0
.end method

.method public IsForceKillHeavyProcess(Ljava/lang/String;)Z
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->IsForceKillHeavyProcess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public activeLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V
    .locals 14

    .line 288
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const-string v3, "ActivityManager"

    const/16 v6, 0xd

    const/16 v7, 0x35c

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    const-wide/16 v10, 0xbb8

    cmp-long v2, v0, v10

    if-lez v2, :cond_1

    .line 297
    sget-wide v10, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v12, 0x2af8

    cmp-long v2, v10, v12

    if-gtz v2, :cond_1

    .line 298
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p0

    if-lt p0, v7, :cond_0

    const-string p0, "AL_Kill : over 3 sec"

    .line 299
    invoke-virtual {p1, p0, v6, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 300
    sget-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AL_Kill : over 3 sec: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    invoke-virtual {p1, v9}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 303
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    goto :goto_0

    .line 306
    :cond_1
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    if-ge v0, v1, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 308
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 309
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active App Launch process < 2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p0

    if-lt p0, v7, :cond_3

    const-string p0, "AL_Kill : over 1 slots"

    .line 312
    invoke-virtual {p1, p0, v6, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 314
    :cond_3
    invoke-virtual {p1, v9}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 315
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    :cond_4
    :goto_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addAllowlistList(Z)V
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    return-void
.end method

.method public addCamListIfIsCameraProcess(Ljava/lang/String;I)V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    if-eqz p0, :cond_0

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->addCamListIfIsCameraProcess(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public addDHAIntentFilter()V
    .locals 3

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.BROADCAST_DHA_DEBUG_ON"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.BROADCAST_SET_DHA_PARAMETER"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/DynamicHiddenApp$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/DynamicHiddenApp$1;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public appIsPickedProcess(Ljava/lang/String;I)I
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bootBGSlotSettingTimer()V
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 633
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->updateParamsFile()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->runBootEFKBoost()V

    .line 642
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->runSetBonusMaxCachedAppsPerSwapTimer()V

    return-void
.end method

.method public checkADJForGenAIReclaimMode(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;)V
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mGenAIReclaimMode:Lcom/android/server/am/GenAIReclaimMode;

    if-nez p0, :cond_0

    return-void

    .line 708
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/GenAIReclaimMode;->checkADJ(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 710
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public clearRecentActivityProcess()V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->clearRecentActivityProcess()V

    return-void
.end method

.method public destroyKeptProcessActivity(Lcom/android/server/am/ProcessRecord;II)Z
    .locals 2

    .line 322
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    if-le p2, p3, :cond_1

    .line 332
    iget p2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 334
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PWHL_KNOX - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in Cached"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string p3, "Convert from hidden to empty knox"

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(IILjava/lang/String;)V

    :cond_1
    return v0
.end method

.method public doDhaBoosterOn(Ljava/lang/String;)V
    .locals 4

    .line 495
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    if-eqz v0, :cond_2

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 497
    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 498
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 503
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    if-nez v0, :cond_2

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_2

    .line 507
    invoke-static {}, Lcom/android/server/am/ProcessList;->setLmkdReentryMode()V

    .line 508
    iput-boolean v1, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    const-string v0, "ActivityManager"

    const-string v1, "Enable ReentryMode"

    .line 509
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 512
    :cond_1
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 513
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 514
    iput-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    .line 520
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {p0, p1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->runDecEFKBoost(Ljava/lang/String;)V

    return-void
.end method

.method public dumpGenAIReclaimMode(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mGenAIReclaimMode:Lcom/android/server/am/GenAIReclaimMode;

    if-nez p0, :cond_0

    return-void

    .line 728
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/GenAIReclaimMode;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 730
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dumpLMKDParameter(Ljava/io/PrintWriter;)V
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    if-eqz p0, :cond_0

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->dumpLMKDParameter(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public dumpMLList(Ljava/io/PrintWriter;)V
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->dumpMLList(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBGProtectManagerInstance()Lcom/android/server/am/BGProtectManager;
    .locals 0

    .line 687
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    return-object p0
.end method

.method public getBGSlotManagerInstance()Lcom/android/server/bgslotmanager/BGSlotManager;
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    return-object p0
.end method

.method public getCachedMax()I
    .locals 0

    .line 647
    sget p0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    return p0
.end method

.method public getCustomEFKManagerInstance()Lcom/android/server/bgslotmanager/CustomEFKManager;
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    return-object p0
.end method

.method public getEmptyMax()I
    .locals 0

    .line 655
    sget p0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    return p0
.end method

.method public getMemInfoGetterInstance()Lcom/android/server/bgslotmanager/MemInfoGetter;
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    return-object p0
.end method

.method public getMemLevel(I)J
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz p0, :cond_0

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public handleDiedProcessForGenAIReclaimMode(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 714
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mGenAIReclaimMode:Lcom/android/server/am/GenAIReclaimMode;

    if-nez p0, :cond_0

    return-void

    .line 718
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/GenAIReclaimMode;->handleDiedProcess(Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 720
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initActiveLaunchParam()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    return-void
.end method

.method public initDHAPostBoot()V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setCameraManagerCallback()V

    .line 194
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v0}, Lcom/android/server/am/BGProtectManager;->initBGProtectManagerPostBoot()V

    .line 195
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/BGSlotManager;->initBGSlotManagerPostBoot()V

    .line 196
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_SET_SWAPTOTAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->addDHAIntentFilter()V

    .line 201
    new-instance v0, Lcom/android/server/am/GenAIReclaimMode;

    invoke-direct {v0, p0}, Lcom/android/server/am/GenAIReclaimMode;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mGenAIReclaimMode:Lcom/android/server/am/GenAIReclaimMode;

    return-void
.end method

.method public initDhaProcessesLocked()V
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initActiveLaunchParam()V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initMLLaunchCountParam()V

    return-void
.end method

.method public initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 1

    .line 179
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    if-nez v0, :cond_1

    .line 180
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 181
    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    .line 183
    :cond_0
    iput-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 184
    new-instance p1, Lcom/android/server/bgslotmanager/BgAppPropManager;

    iget-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-direct {p1, p2, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/DynamicHiddenApp;)V

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    .line 185
    iget-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    sget-wide p2, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/bgslotmanager/BGSlotManager;->initBGSlotManager(Lcom/android/server/am/DynamicHiddenApp;J)V

    .line 186
    iget-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    iget-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/am/BGProtectManager;->initBGProtectManager(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initLMKTh()V

    const/4 p0, 0x1

    .line 188
    sput-boolean p0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    :cond_1
    return-void
.end method

.method public initLMKTh()V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    return-void
.end method

.method public initMLLaunchCountParam()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x0

    .line 359
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    return-void
.end method

.method public isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BGProtectManager;->isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p0

    return p0
.end method

.method public isHomeHubMode(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const-string v0, "get action default home change, extra home hub mode intent"

    const-string v1, "ActivityManager_HOME_HUB"

    .line 401
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, " - value is null"

    if-eqz v3, :cond_3

    const-string/jumbo v5, "ro.product.model"

    const-string v6, ""

    .line 406
    invoke-static {v5, v6}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SM-T270"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    .line 407
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, " - value is "

    if-eqz v4, :cond_1

    const-string v4, "home_hub_mode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    goto :goto_0

    :cond_1
    const-string v4, "android.intent.action.DOCK_EVENT"

    .line 410
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    goto/16 :goto_0

    .line 415
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 422
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    if-eqz p1, :cond_6

    .line 423
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p0, :cond_5

    .line 424
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setHomeHubBGSlot()V

    :cond_5
    const-string/jumbo p0, "update cached,empty max slot due to launcher change to HH"

    .line 426
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 427
    sput-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    goto :goto_1

    .line 429
    :cond_6
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p0, :cond_7

    .line 430
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->restoreFromHomeHubBGSlot()V

    :cond_7
    const-string/jumbo p0, "update cached,empty max slot due to launcher change from HH"

    .line 432
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 433
    sput-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    :goto_1
    return-void
.end method

.method public isHomeHubState()Z
    .locals 0

    .line 663
    iget-boolean p0, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    return p0
.end method

.method public isProtectedInChimera(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isProtectedInChimera(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public killTimeOverEmptyProcess(Lcom/android/server/am/ProcessRecord;IJ)V
    .locals 6

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 363
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    .line 364
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le p2, p0, :cond_0

    .line 365
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v2

    cmp-long p0, v2, p3

    if-gez p0, :cond_0

    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "empty for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide p2

    sub-long/2addr v0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "s"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "empty for too long"

    const/16 v3, 0xd

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p1

    .line 366
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public printAmcCachedEmpty(Ljava/io/PrintWriter;)V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AMC_CUR_MAX_CACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AMC_CUR_MAX_EMPTY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public printAppCompactorEnable(Ljava/io/PrintWriter;)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  APPCOMPACTOR_ENABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebugable:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public printLowMemDectectorEnable(Ljava/io/PrintWriter;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LOWMEMDETECTOR_ENABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->getLowMemDetectorIsAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeAllowlistByBUB()V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->removeAllowlistByBUB()V

    return-void
.end method

.method public resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public setAllowListCleared(Z)V
    .locals 0

    .line 439
    sput-boolean p1, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    return-void
.end method

.method public setBGSlotByRes(II)V
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBGSlotByRes(II)V

    :cond_0
    return-void
.end method

.method public setCameraManagerCallback()V
    .locals 3

    .line 253
    invoke-static {}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->getInstance()Lcom/android/server/bgslotmanager/CameraKillModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 254
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->initCameraKillModeManager(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/DynamicHiddenApp;)V

    return-void
.end method

.method public setCurTrimProcesses(II)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerConstants;->setCurTrimCachedProcesses(I)V

    .line 572
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerConstants;->setCurTrimEmptyProcesses(I)V

    :cond_0
    return-void
.end method

.method public setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public setKpmParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo p0, "ro.slmk.kpm_debug_trigger"

    .line 613
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 614
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    return v0

    :cond_0
    const-string/jumbo p0, "ro.slmk.kpm_policy_trigger"

    .line 617
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 618
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    return v0

    :cond_1
    const-string/jumbo p0, "ro.slmk.kpm_debug_cycles"

    .line 621
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 622
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    return v0

    :cond_2
    const-string/jumbo p0, "ro.slmk.kpm_boot_enable"

    .line 625
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 626
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public setLmkdCameraKillBoost(III)V
    .locals 0

    .line 542
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    return-void
.end method

.method public setLmkdProtectFlagAndCameraProc(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BGProtectManager;->setLmkdProtectFlag(Lcom/android/server/am/ProcessRecord;)V

    .line 259
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/DynamicHiddenApp;->addCamListIfIsCameraProcess(Ljava/lang/String;I)V

    return-void
.end method

.method public setTaskSnapshot(II)V
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/bgslotmanager/BGSlotManager;->setTaskSnapshot(II)V

    :cond_0
    return-void
.end method

.method public updateEmptyRate(F)V
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz p0, :cond_0

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerConstants;->updateEmptyRate(F)V

    :cond_0
    return-void
.end method

.method public updateMaxCachedProcessesNum(IF)V
    .locals 0

    .line 562
    sput p1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 563
    sput p2, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 564
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz p0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcessesNum()V

    :cond_0
    return-void
.end method

.method public updateMaxCachedProcessesNumFHA(I)V
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz p0, :cond_0

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcessesNumFHA(I)V

    :cond_0
    return-void
.end method

.method public updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public updateParamsFile()V
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    if-eqz p0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->updateParamsFile()V

    :cond_0
    return-void
.end method

.method public updateParamsIntent(Landroid/os/Bundle;)V
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    if-eqz p0, :cond_0

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->updateParamsIntent(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public updatePickedProcessLists(Ljava/util/List;)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->updatePickedProcessLists(Ljava/util/List;)V

    return-void
.end method
