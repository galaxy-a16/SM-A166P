.class public Lcom/android/server/am/BGProtectManager;
.super Ljava/lang/Object;
.source "BGProtectManager.java"


# static fields
.field public static final BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

.field public static final CAMERA_GUARD_ARRAY:[Ljava/lang/String;

.field public static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field public static final DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

.field public static final DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

.field public static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field public static final LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

.field public static final PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

.field public static WEBVIEW_ADJ_THRESHOLD:I

.field public static addProtect:Z

.field public static allowListCleared:Z

.field public static beks_package_key_bit:I

.field public static dha_MLexcept_map:Ljava/util/ArrayList;

.field public static dha_amsexcept_map:Ljava/util/HashMap;

.field public static dha_cameraguard_map:Ljava/util/HashMap;

.field public static dha_keep_onlyact_key:I

.field public static dha_keepchimera_key:I

.field public static dha_keepempty_chn_key:I

.field public static dha_keepempty_key:I

.field public static dha_keepempty_key_knox:I

.field public static dha_keepempty_map:Ljava/util/HashMap;

.field public static dha_neverkillexcept_key:I

.field public static dha_neverkillexcept_map:Ljava/util/HashMap;

.field public static forceKillHeavyProcess1:Ljava/lang/String;

.field public static forceKillHeavyProcess2:Ljava/lang/String;

.field public static forceKillHeavyProcess3:Ljava/lang/String;

.field public static forceKillHeavyProcessList:Ljava/util/ArrayList;

.field public static mAMSExceptionEnable:Z

.field public static mCameraGuardEnable:Z

.field public static final mTotalMemMb:J

.field public static sBEKS_processList:Ljava/util/ArrayList;

.field public static sProvider_lifeguard_key:I

.field public static sProvider_lifeguard_memory_TH:I


# instance fields
.field public AMSExceptionProviderUpgradeAdjEnable:Z

.field public BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

.field public CLEANUP_WEBVIEW_ENABLE:Z

.field public DIALER_EXCEPTION_TH:I

.field public NEVERKILL_SQETOOL_ENABLE:Z

.field public NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

.field public NapProcessSlotLimit:I

.field public PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

.field public PICKED_ADJ_TIME_LIMIT:I

.field public doKillRestrict:Z

.field public forceKillHeavyProcessLimit:I

.field public mContext:Landroid/content/Context;

.field public mDhaKeepEmptyEnable:I

.field public mDhaKeepEmptyEnableKnox:I

.field public mKnoxAMSExceptionEnable:Z

.field public mPlatform:Ljava/lang/String;

.field public recentActivityProcessLimit:I

.field public recentActivityProcessList:Ljava/util/ArrayList;

.field public removeContactExceptList:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 30
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    const-string v0, "ams_exception_enable"

    const-string/jumbo v1, "true"

    .line 44
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    const/16 v0, 0x398

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "webview_adj_th"

    invoke-static {v2, v0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->WEBVIEW_ADJ_THRESHOLD:I

    const-string v0, "camera_guard_enable"

    .line 68
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    const-string v0, "beks_key"

    const-string v1, "31"

    .line 70
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->beks_package_key_bit:I

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    const-string v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5jYWxlbmRhcg=="

    .line 79
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "Y29tLnNlYy5hbmRyb2lkLmdhbGxlcnkzZA=="

    .line 80
    invoke-static {v14}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 81
    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    .line 82
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="

    .line 83
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v16, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAubm90ZXM="

    .line 84
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    .line 85
    invoke-static {v7}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UmVzZXJ2ZWQ="

    .line 86
    invoke-static {v8}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SU5DQUxMVUk="

    .line 87
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v17, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    .line 88
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "TU1T"

    .line 89
    invoke-static {v12}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Y29tLmJhaWR1LkJhaWR1TWFw"

    .line 90
    invoke-static {v13}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 91
    invoke-static {v8}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v18

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    const-string v1, "YW5kcm9pZC5wcm9jZXNzLmFjb3Jl"

    .line 95
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "Q09OVEFDVFM="

    .line 96
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v1, "RElBTEVS"

    .line 97
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v1, "SE9NRUhVQg=="

    .line 98
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v7

    const-string v1, "YW5kcm9pZC5wcm9jZXNzLm1lZGlh"

    .line 99
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, "Q01I"

    .line 100
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v9

    const-string v1, "QklYQlk="

    .line 101
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v4 .. v10}, [[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    const-string v1, "Y29tLmdvb2dsZS5wcm9jZXNzLmdhcHBz"

    .line 105
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5tb2JpbGVzZXJ2aWNl"

    .line 106
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "Y29tLm9zcC5hcHAuc2lnbmlu"

    .line 107
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "Y29tLmdvb2dsZS5wcm9jZXNzLmdzZXJ2aWNlcw=="

    .line 108
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLnByb3ZpZGVyLmJhZGdl"

    .line 109
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "Y29tLnNhbXN1bmcuaXBzZXJ2aWNl"

    .line 110
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zb3VuZGFsaXZl"

    .line 111
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94OnNlYXJjaA=="

    .line 112
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcjpwcml2aWxlZ2VkX3Byb2Nlc3Mw"

    .line 113
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v1, "Y29tLnZlcml6b24ubWVzc2FnaW5nLnZ6bXNncw=="

    .line 114
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v1, "Y29tLmFuZHJvaWQucHJvdmlkZXJzLmNhbGVuZGFy"

    .line 115
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zY2xvdWQ="

    .line 116
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zYW1zdW5ncGFzcw=="

    .line 117
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucmVtaW5kZXI="

    .line 118
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucm91dGluZXM="

    .line 119
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    filled-new-array/range {v18 .. v32}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    const-string v1, "Y29tLnNhbGFiLmFjdA=="

    .line 123
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    const-string/jumbo v4, "plat"

    filled-new-array {v2, v3, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC50aW55bQ=="

    .line 124
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v3, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v5, "Y29tLnNlYy5hZWNtb25pdG9y"

    .line 125
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v6, v3, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "RkFDVE9SWQ=="

    .line 126
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    filled-new-array {v5, v3, v6, v6}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v4, v3}, [[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcw=="

    .line 130
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    const-string/jumbo v5, "priv"

    filled-new-array {v2, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcy5wZXJzaXN0ZW50"

    .line 131
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v4, v1, v5}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5teWZpbGVz"

    .line 135
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "Y29tLmFuZHJvaWQuc2V0dGluZ3M="

    .line 137
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v14}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 139
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5tZXNzYWdpbmc="

    .line 140
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jbG9ja3BhY2thZ2U="

    .line 143
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 144
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    .line 148
    invoke-static {v14}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->CAMERA_GUARD_ARRAY:[Ljava/lang/String;

    const-string v0, "Y29tLnNhbXN1bmcuYWRhcHRpdmVicmlnaHRuZXNzZ28="

    .line 152
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YW5kcm9pZC5zeXN0ZW0="

    .line 153
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zbWFydGZhY2U="

    .line 154
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y29tLnNhbXN1bmcuYW5kcm9pZC5iaW8uZmFjZS5zZXJ2aWNl"

    .line 155
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

    const-string v0, "Y29tLmtpbG9vLnN1YndheXN1cmY="

    .line 158
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess1:Ljava/lang/String;

    const-string v0, "Y29tLmF2YXN0LmFuZHJvaWQubW9iaWxlc2VjdXJpdHk="

    .line 159
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess2:Ljava/lang/String;

    const-string v0, "Y29tLnNreXBlLnJhaWRlcg=="

    .line 160
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess3:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess1:Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess2:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess3:Ljava/lang/String;

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessList:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    const-string v0, "dha_pwhl_key"

    const-string v1, "512"

    .line 182
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    const-string v0, "dha_pwhl_key_knox"

    const-string v1, "1539"

    .line 183
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    .line 184
    sget v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dha_pwhl_chn_key"

    invoke-static {v1, v0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_chn_key:I

    const-string v0, "dha_chimerawhl_key"

    const-string v1, "0"

    .line 185
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepchimera_key:I

    const-string v0, "dha_onlyact_key"

    .line 186
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keep_onlyact_key:I

    const-string v0, "dha_neverkill_key"

    .line 187
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_key:I

    const-string v0, "add_protect"

    const-string v1, "false"

    .line 188
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->addProtect:Z

    const-string/jumbo v0, "plg_memory_th"

    const-string v1, "4096"

    .line 190
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    const-string/jumbo v0, "plg_key"

    const-string v1, "3"

    .line 191
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.board.platform"

    const-string v1, ""

    .line 35
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BGProtectManager;->mPlatform:Ljava/lang/String;

    const-string/jumbo v0, "remove_contact_except_list"

    const-string v1, "false"

    .line 37
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    const-string v0, "dha_pallowlist_enable"

    const-string v2, "1"

    .line 40
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    const-string v0, "dha_knox_plist_enable"

    const-string v2, "0"

    .line 42
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    const-string/jumbo v0, "provider_upgrade_adj"

    .line 46
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    const-string v0, "dha_cached_min"

    const-string v2, "4"

    .line 48
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessLimit:I

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->doKillRestrict:Z

    const-string v0, "ams_knoxexpt_enable"

    const-string/jumbo v2, "true"

    .line 52
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    const-string v0, "dha_dialer_except_th"

    const-string v3, "3072"

    .line 54
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    const-string v0, "cleanup_webview_enable"

    .line 56
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    const-string/jumbo v0, "picked_adj_tm"

    const-string v3, "1800000"

    .line 60
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    const-string/jumbo v0, "neverkill_sqetool_enable"

    .line 64
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    const-string v0, "beks_enable"

    .line 66
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    const-string v0, "bora_cached_num"

    const-string v1, "3"

    .line 72
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v0, 0x1

    .line 179
    iput v0, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    return-void
.end method

.method public static isAMSExceptionProcess(Ljava/lang/String;)I
    .locals 1

    .line 738
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static isCameraGuardProcess(Ljava/lang/String;)Z
    .locals 1

    .line 743
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDhaKeepEmptyProcess(Ljava/lang/String;)I
    .locals 1

    .line 733
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static isNeverKillExceptionProcess(Lcom/android/server/am/ProcessRecord;)I
    .locals 2

    .line 748
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 750
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    invoke-virtual {v1, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->validate(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 751
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 774
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I
    .locals 3

    .line 757
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check webview name : "

    const-string v2, "DynamicHiddenApp_BGProtectManager"

    if-eqz v0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "check hostingname webview : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "check hostingname webview : null "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x2

    return p0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, ":sandboxed_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v0, "com.sec.android.app.sbrowser"

    .line 766
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x6

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public IsAllowListCleared()Z
    .locals 0

    .line 827
    sget-boolean p0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    return p0
.end method

.method public IsForceKillHeavyProcess(Ljava/lang/String;)Z
    .locals 0

    .line 690
    sget-boolean p0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    if-nez p0, :cond_0

    .line 691
    sget-object p0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public IsProtected(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    .line 697
    sget-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    .line 698
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_1

    :cond_0
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_2

    if-ge p0, v1, :cond_2

    :cond_1
    return v2

    .line 701
    :cond_2
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0

    .line 707
    :cond_4
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_5

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-eq p0, v3, :cond_5

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 708
    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_6

    :cond_5
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_7

    if-ge p0, v1, :cond_7

    :cond_6
    return v2

    .line 711
    :cond_7
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public addAllowlistList(Z)V
    .locals 14

    if-nez p1, :cond_0

    .line 221
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 222
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 223
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 224
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 226
    :goto_0
    sget-object v2, Lcom/android/server/am/BGProtectManager;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 227
    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v2, v2, v1

    aget-object v5, v2, v0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v3, v5, v2, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_1
    sget-wide v1, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    sget v3, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    move v1, v0

    move v2, v4

    .line 231
    :goto_1
    sget-object v3, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 232
    sget v5, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 233
    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-virtual {p0, v5, v3, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_2
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    move v1, v0

    .line 240
    :goto_2
    sget-object v5, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 241
    sget-object v8, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    aget-object v6, v5, v1

    aget-object v9, v6, v0

    aget-object v6, v6, v4

    .line 244
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v5, v5, v1

    aget-object v11, v5, v3

    aget-object v12, v5, v2

    move-object v7, p0

    .line 241
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/BGProtectManager;->dhaAddNeverKilledPackageName(Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v0

    move v5, v4

    .line 251
    :goto_3
    sget-object v6, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_6

    .line 252
    sget v7, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_key:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_5

    .line 253
    sget-object v9, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    aget-object v7, v6, v1

    aget-object v10, v7, v0

    aget-object v7, v7, v4

    .line 256
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v6, v6, v1

    aget-object v12, v6, v3

    aget-object v13, v6, v2

    move-object v8, p0

    .line 253
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/BGProtectManager;->dhaAddNeverKilledPackageName(Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v1, v0

    move v5, v4

    .line 264
    :goto_4
    sget-object v6, Lcom/android/server/am/BGProtectManager;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_b

    .line 265
    iget v7, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v7, v4, :cond_7

    sget v7, Lcom/android/server/am/BGProtectManager;->dha_keepchimera_key:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_7

    .line 266
    sget-object v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v8, v6, v1

    invoke-virtual {p0, v7, v8, v2, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 268
    :cond_7
    iget v7, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v7, v4, :cond_8

    sget v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_8

    .line 269
    sget-object v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v8, v6, v1

    invoke-virtual {p0, v7, v8, v3, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 271
    :cond_8
    iget v7, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v7, v4, :cond_9

    sget v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_9

    .line 272
    sget-object v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v8, v6, v1

    invoke-virtual {p0, v7, v8, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 274
    :cond_9
    iget v7, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v7, v4, :cond_a

    sget v7, Lcom/android/server/am/BGProtectManager;->dha_keep_onlyact_key:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_a

    .line 275
    sget-object v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v6, v6, v1

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v6, v8, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_a
    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 280
    :cond_b
    :goto_5
    sget-boolean v1, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/server/am/BGProtectManager;->CAMERA_GUARD_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    .line 281
    sget-object v2, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {p0, v2, v1, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method

.method public addBEKSList(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 287
    sget-object p0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 289
    :goto_0
    sget-object v0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 290
    sget v1, Lcom/android/server/am/BGProtectManager;->beks_package_key_bit:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 291
    sget-object v1, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    shl-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addPickedExceptList(Ljava/lang/String;)V
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public appIsPickedProcess(Ljava/lang/String;I)I
    .locals 0

    .line 794
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_&_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 795
    sget-object p1, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 796
    sget-object p1, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I
    .locals 7

    .line 383
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v0, :cond_7

    .line 384
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 385
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-gt v0, v4, :cond_0

    :goto_0
    move v0, v2

    move v4, v3

    goto :goto_1

    .line 387
    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_1

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_5

    goto :goto_0

    .line 392
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    if-eqz v0, :cond_5

    .line 393
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-lt v0, v4, :cond_3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 394
    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-gt v0, v4, :cond_3

    goto :goto_0

    .line 396
    :cond_3
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_4

    move v4, v2

    move v0, v3

    goto :goto_1

    .line 398
    :cond_4
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v3

    move v4, v0

    .line 403
    :goto_1
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_6

    goto :goto_2

    .line 405
    :cond_6
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_8

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v3

    move v4, v0

    .line 413
    :cond_8
    :goto_2
    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    const/4 v6, 0x3

    if-eq v5, v2, :cond_9

    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v5, v2, :cond_a

    :cond_9
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v5, :cond_a

    if-ge v5, v6, :cond_a

    move v4, v2

    :cond_a
    const/4 v5, 0x2

    if-eq v0, v2, :cond_b

    if-eqz v4, :cond_b

    move v0, v5

    .line 420
    :cond_b
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v5

    .line 423
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v4

    if-ne v4, v2, :cond_d

    goto :goto_3

    :cond_d
    move v6, v0

    .line 424
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v6, 0x4

    .line 425
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    if-ne v0, v2, :cond_f

    const/4 v6, 0x5

    .line 428
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isForKeepingCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v6, 0x6

    .line 429
    :cond_10
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    if-ne v0, v2, :cond_11

    const/16 v6, 0x8

    .line 431
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->doKillRestrict:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->IsForceKillHeavyProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 432
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-lt v0, v1, :cond_12

    sget-object v0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess2:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "bg_restriction"

    const/16 v1, 0xd

    .line 433
    invoke-virtual {p1, v0, v1, v5, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 437
    iput-boolean v3, p0, Lcom/android/server/am/BGProtectManager;->doKillRestrict:Z

    :cond_12
    return v6
.end method

.method public clearRecentActivityProcess()V
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dhaAddNeverKilledPackageName(Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 901
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "plat"

    .line 905
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x100000

    if-eqz v0, :cond_1

    move p5, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "priv"

    .line 907
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    const/16 p5, 0x8

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    const-string v0, "RkFDVE9SWQ=="

    .line 911
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 912
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p2, "ro.debuggable"

    const-string p4, "0"

    .line 913
    invoke-static {p2, p4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSemSystemPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_4

    const-string p2, "DynamicHiddenApp_BGProtectManager"

    const-string/jumbo p4, "it\'s debuggable binary!! add FACTORY in allowlist"

    .line 915
    invoke-static {p2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int p2, p5, v1

    const-string p4, "Y29tLnNlYy5mYWNhdGZ1bmN0aW9u"

    .line 920
    invoke-static {p4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Landroid/util/Pair;

    .line 922
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    .line 924
    invoke-static {p4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p0, p4, p2}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Lcom/android/server/am/BGProtectManager;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 919
    invoke-virtual {p1, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "Y29tLnNlYy5mYWN1aWZ1bmN0aW9u"

    .line 927
    invoke-static {p4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Landroid/util/Pair;

    .line 929
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    .line 931
    invoke-static {p4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p0, p4, p2}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Lcom/android/server/am/BGProtectManager;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 926
    invoke-virtual {p1, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "Y29tLnNhbXN1bmcuYW5kcm9pZC5haXJjb21tYW5kbWFuYWdlcg=="

    .line 934
    invoke-static {p4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Landroid/util/Pair;

    .line 936
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v1, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    .line 938
    invoke-static {p4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p0, p4, p2}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Lcom/android/server/am/BGProtectManager;Ljava/lang/String;I)V

    invoke-direct {v0, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 933
    invoke-virtual {p1, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 942
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v1, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    invoke-direct {v1, p0, p4, p5}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Lcom/android/server/am/BGProtectManager;Ljava/lang/String;I)V

    invoke-direct {v0, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public final dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V
    .locals 8

    .line 856
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TU1T"

    .line 857
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q09OVEFDVFM="

    .line 858
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SU5DQUxMVUk="

    .line 859
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RElBTEVS"

    .line 860
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SE9NRUhVQg=="

    .line 861
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "QklYQlk="

    .line 862
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "RkFDVE9SWQ=="

    .line 863
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Q01I"

    .line 864
    invoke-static {v7}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_1

    .line 866
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_0

    .line 868
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 869
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 870
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-boolean p4, p0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    if-nez p4, :cond_3

    .line 871
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 872
    :cond_3
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 873
    sget-wide v0, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    iget p0, p0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 874
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 879
    :cond_4
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5ob21laHVi"

    .line 880
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 881
    :cond_5
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5iaXhieS5hZ2VudA=="

    .line 882
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 883
    :cond_6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 884
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 885
    :cond_7
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string/jumbo p0, "ro.debuggable"

    const-string p4, "0"

    invoke-static {p0, p4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSemSystemPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_8

    const-string p0, "DynamicHiddenApp_BGProtectManager"

    const-string/jumbo p2, "it\'s debuggable binary!! add FACTORY in allowlist"

    .line 887
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Y29tLnNlYy5mYWNhdGZ1bmN0aW9u"

    .line 888
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNlYy5mYWN1aWZ1bmN0aW9u"

    .line 889
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5haXJjb21tYW5kbWFuYWdlcg=="

    .line 890
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 891
    :cond_8
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Y29tLnNhbXN1bmcuY21oOkNNSA=="

    .line 892
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNhbXN1bmcuY21o"

    .line 893
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 895
    :cond_9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_0
    return-void
.end method

.method public final dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 5

    .line 947
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TU1T"

    .line 948
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q09OVEFDVFM="

    .line 949
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SU5DQUxMVUk="

    .line 950
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RElBTEVS"

    .line 951
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Q01I"

    .line 952
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_1

    .line 954
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 956
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 957
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 958
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 959
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 960
    :cond_3
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 961
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 962
    :cond_4
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 963
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 964
    :cond_5
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Y29tLnNhbXN1bmcuY21oOkNNSA=="

    .line 965
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNhbXN1bmcuY21o"

    .line 966
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 968
    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-void
.end method

.method public dumpMLList(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MLList NAP Process name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "  MLList NAP Process name : []"

    .line 1061
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    :goto_0
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 1064
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  MLList AUF Process name : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "Y29tLmFuZHJvaWQuY29udGFjdHM="

    .line 994
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 995
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 1001
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :catch_0
    return-object p0
.end method

.method public final getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "Y29tLmFuZHJvaWQuaW5jYWxsdWk="

    .line 1014
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1015
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 1023
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 1024
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :catch_0
    return-object p0
.end method

.method public final getIndexOfRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "Y29tLmFuZHJvaWQubW1z"

    .line 974
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 975
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 983
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 984
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :catch_0
    return-object p0
.end method

.method public initBGProtectManager(Landroid/content/Context;)V
    .locals 1

    .line 199
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    .line 201
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->addBEKSList(Z)V

    .line 203
    :cond_0
    iput p1, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    return-void
.end method

.method public initBGProtectManagerPostBoot()V
    .locals 2

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    .line 208
    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->addBEKSList(Z)V

    :cond_0
    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string/jumbo v1, "on"

    .line 214
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->removeAllowlistByBUB()V

    :cond_1
    return-void
.end method

.method public isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 802
    iget-boolean p0, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 803
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 804
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 842
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    const/16 v0, 0x352

    if-lt p0, v0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_2

    .line 843
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 844
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 845
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/16 v1, 0xf

    if-ne p0, v1, :cond_1

    :cond_0
    return v0

    .line 848
    :cond_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/16 p1, 0x10

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isContainPickedExceptList(Ljava/lang/String;)Z
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForKeepingCheck(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5

    .line 782
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isForKeeping()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    .line 784
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setIsforKeeping(Z)V

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1

    .line 808
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->IsForceKillHeavyProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessLimit:I

    if-gt p2, p0, :cond_0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 810
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    const/16 p1, 0x398

    if-lt p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProtectedInChimera(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 720
    sget-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    .line 721
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_4

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    .line 723
    :cond_2
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_3

    if-lt p0, v1, :cond_1

    :cond_3
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_4

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v1, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 724
    invoke-virtual {v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v1

    if-eq p0, v1, :cond_4

    goto :goto_0

    .line 726
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    return v2
.end method

.method public final isRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAllowlistByBUB()V
    .locals 3

    .line 309
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string v1, "Q09OVEFDVFM="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 310
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string v1, "RElBTEVS"

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 311
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->removeProviderLifeguardProcs()V

    .line 312
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 313
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public removePickedExceptList(Ljava/lang/String;)V
    .locals 1

    .line 684
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isContainPickedExceptList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final removeProviderLifeguardProcs()V
    .locals 5

    .line 298
    sget-wide v0, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    .line 299
    :goto_0
    sget-object v3, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 300
    sget v4, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 301
    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 446
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 447
    iget v4, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v4, v3, :cond_0

    if-ne v0, v3, :cond_0

    .line 448
    iput v3, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_0

    .line 449
    :cond_0
    iget v4, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v4, v3, :cond_1

    if-ne v0, v2, :cond_1

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    iput v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_0

    .line 451
    :cond_1
    iget p0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne p0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 452
    iput v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_0

    :cond_2
    if-ne p0, v3, :cond_9

    if-ne v0, v1, :cond_9

    .line 454
    iput v1, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_0

    .line 456
    :cond_3
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isAMSExceptionProcess(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v4, :cond_4

    .line 457
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 458
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    .line 459
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    if-eq p0, v4, :cond_7

    if-ne p0, v2, :cond_5

    .line 461
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 462
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    :cond_5
    if-ne p0, v1, :cond_6

    .line 464
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    .line 466
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    .line 468
    :cond_7
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isCameraGuardProcess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 469
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    .line 471
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 472
    iput-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 473
    iput v4, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    :cond_9
    :goto_0
    return-void
.end method

.method public setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 12

    const/4 v0, -0x1

    if-eqz p1, :cond_1f

    .line 519
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 523
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    .line 525
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v3, v4, :cond_1e

    .line 526
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    const/16 v4, 0x10

    const/16 v5, 0x3e7

    const/16 v6, 0x352

    if-lt v3, v6, :cond_7

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    if-gt v3, v5, :cond_7

    .line 527
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const/16 v7, 0x384

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    if-eqz v3, :cond_2

    .line 528
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/16 v8, 0xa

    if-eq v3, v8, :cond_1

    .line 530
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/16 v8, 0xf

    if-ne v3, v8, :cond_3

    :cond_1
    move v2, v4

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 535
    invoke-virtual {v1, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 536
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 539
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    if-eqz v3, :cond_7

    .line 540
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 541
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->IsAllowListCleared()Z

    move-result v3

    if-nez v3, :cond_5

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-ltz v3, :cond_4

    .line 543
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/BGProtectManager;->isContainPickedExceptList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 544
    invoke-static {v3}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 545
    invoke-virtual {v1, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 546
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 547
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->addPickedExceptList(Ljava/lang/String;)V

    const-string v0, "DynamicHiddenApp_BGProtectManager"

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Picked process timeout "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (pid: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 553
    :cond_4
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 554
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 555
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->removePickedExceptList(Ljava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_5
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 559
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 564
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 565
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 566
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 572
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v3, 0x5c

    const/16 v6, 0xc8

    const/16 v7, 0xfa

    const/16 v8, 0x63

    if-lt v0, v7, :cond_d

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-gt v0, v5, :cond_d

    .line 573
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v0, :cond_9

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v9, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v9}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v9

    if-ne v0, v9, :cond_9

    .line 574
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/16 v2, 0x5b

    goto :goto_2

    :cond_8
    const/16 v2, 0x5a

    .line 579
    :cond_9
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 580
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    if-eqz v0, :cond_b

    const-string v0, "android.process.acore"

    .line 581
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.process.media"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 582
    :cond_a
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 583
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 586
    :cond_b
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_c

    move v2, v3

    goto :goto_3

    :cond_c
    move v2, v8

    .line 593
    :cond_d
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v4, 0x320

    const/16 v9, 0x13

    if-lt v0, v4, :cond_13

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-gt v0, v5, :cond_13

    .line 594
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_10

    .line 595
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v0, :cond_f

    .line 596
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    sget v4, Lcom/android/server/am/BGProtectManager;->WEBVIEW_ADJ_THRESHOLD:I

    if-gt v0, v4, :cond_10

    :cond_e
    move v2, v8

    goto :goto_4

    :cond_f
    const/16 v2, 0x62

    .line 604
    :cond_10
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 605
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ne v0, v9, :cond_11

    const/16 v0, 0x61

    :goto_5
    move v2, v0

    goto :goto_6

    .line 609
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    if-nez v0, :cond_12

    .line 610
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ne v0, v9, :cond_12

    const/16 v0, 0x60

    goto :goto_5

    .line 616
    :cond_12
    :goto_6
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_13

    .line 617
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    if-eqz v0, :cond_13

    move v2, v8

    .line 623
    :cond_13
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v0, :cond_16

    .line 624
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_14

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-lt v0, v7, :cond_14

    goto :goto_7

    .line 626
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v3, 0x2bc

    if-ne v0, v3, :cond_15

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v3, 0x96

    goto :goto_7

    .line 628
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->getIndexOfRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    add-int/lit16 v3, v0, 0xb4

    const/16 v0, 0xc7

    if-le v3, v0, :cond_17

    move v3, v0

    goto :goto_7

    :cond_16
    move v3, v2

    .line 634
    :cond_17
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-ge v0, v6, :cond_18

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-ltz v0, :cond_18

    .line 635
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_18

    const/16 v3, 0x5f

    .line 640
    :cond_18
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    if-eqz v0, :cond_1a

    .line 641
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const/16 v2, -0x2bc

    if-nez v0, :cond_19

    .line 642
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_8

    .line 645
    :cond_19
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-lt v0, v4, :cond_1a

    .line 646
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_8

    :cond_1a
    move v8, v3

    .line 652
    :goto_8
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ne v0, v9, :cond_1b

    .line 653
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 v8, 0x5d

    .line 659
    :cond_1b
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->ALLIED_PROC_PROTECTION_LMKD:Z

    if-eqz p0, :cond_1d

    .line 660
    sget-object p0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    monitor-enter p0

    .line 661
    :try_start_0
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v8, 0x8d

    .line 664
    :cond_1c
    monitor-exit p0

    goto :goto_9

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1d
    :goto_9
    move v2, v8

    .line 669
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/DynamicHiddenApp;->checkADJForGenAIReclaimMode(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;)V

    :cond_1e
    return v2

    :cond_1f
    :goto_a
    return v0
.end method

.method public setLmkdProtectFlag(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    .line 479
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isNeverKillExceptionProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 481
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    .line 482
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto/16 :goto_0

    .line 483
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq v0, v2, :cond_4

    .line 485
    iget v2, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v2, v1, :cond_1

    if-ne v0, v1, :cond_1

    .line 486
    iput v1, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_0

    .line 487
    :cond_1
    iget v2, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v2, v1, :cond_2

    if-ne v0, v4, :cond_2

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    iput v4, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_0

    .line 489
    :cond_2
    iget p0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne p0, v1, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 490
    iput v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_0

    :cond_3
    if-ne p0, v1, :cond_a

    if-ne v0, v3, :cond_a

    .line 492
    iput v3, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_0

    .line 494
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_5

    .line 496
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SecIpm] it\'s a ML_TYPE_EMPTYPROCESS protected process "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DynamicHiddenApp_BGProtectManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    goto :goto_0

    .line 499
    :cond_5
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isAMSExceptionProcess(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v2, :cond_6

    .line 501
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 502
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    .line 503
    :cond_6
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    if-eq p0, v2, :cond_9

    if-ne p0, v4, :cond_7

    .line 506
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 507
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    :cond_7
    if-ne p0, v3, :cond_8

    .line 509
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    :cond_8
    const/4 v0, 0x6

    if-ne p0, v0, :cond_a

    .line 511
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_0

    .line 513
    :cond_9
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isCameraGuardProcess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 514
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    :cond_a
    :goto_0
    return-void
.end method

.method public updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V
    .locals 14

    .line 342
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 352
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    const/16 v4, 0xd

    const-string v5, " slots kill a"

    const/16 v6, 0x35c

    const/16 v7, 0x13

    const-wide/16 v8, -0x1

    if-eqz v2, :cond_1

    .line 353
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v2

    if-nez v2, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v10

    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-lez v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 356
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    .line 357
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-lt v2, v7, :cond_0

    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 358
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ML_Kill: over "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v4, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    .line 364
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "app launch time is "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " tmp time is "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "DynamicHiddenApp_BGProtectManager"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 367
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-eqz v2, :cond_2

    const-wide/32 v8, 0x1b7740

    cmp-long v2, v0, v8

    if-lez v2, :cond_2

    .line 368
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-lt v2, v7, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 369
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    if-le v2, v6, :cond_2

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ML_Kill: timeout "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    .line 372
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    :cond_2
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

.method public updatePickedProcessLists(Ljava/util/List;)V
    .locals 1

    .line 332
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 335
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
