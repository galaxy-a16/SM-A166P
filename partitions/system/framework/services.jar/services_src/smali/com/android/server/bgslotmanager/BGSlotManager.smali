.class public Lcom/android/server/bgslotmanager/BGSlotManager;
.super Ljava/lang/Object;
.source "BGSlotManager.java"


# static fields
.field public static BONUS_MAX_CACHED_APPS_PER_SWAP:I

.field public static HRT_MaxCached_Enable:Z

.field public static final IS_CHINA_MODEL:Z

.field public static MAX_CACHED_APPS:I

.field public static MAX_EMPTY_APPS:I

.field public static MIN_CACHED_APPS:I

.field public static MIN_EMPTY_APPS:I

.field public static STATIC_MAX_EMPTY_FOR_OVER_8GB:I


# instance fields
.field public BGSlotState:I

.field public final CHN_REDUCE_CACHED:I

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public originCachedMax:I

.field public originCachedMin:I

.field public originEmptyMax:I

.field public originEmptyMin:I


# direct methods
.method public static bridge synthetic -$$Nest$msetBonusMaxCachedAppsPerSwap(Lcom/android/server/bgslotmanager/BGSlotManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBonusMaxCachedAppsPerSwap()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "dha_cached_min"

    const-string v1, "4"

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    const-string v0, "dha_cached_max"

    const-string v1, "16"

    .line 29
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    const-string v0, "dha_empty_min"

    const-string v1, "8"

    .line 31
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    const-string v0, "dha_empty_max"

    const-string v1, "24"

    .line 33
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    const/4 v0, 0x0

    .line 35
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    const-string v0, "dha_empty_limit"

    const-string v1, "32"

    .line 37
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->STATIC_MAX_EMPTY_FOR_OVER_8GB:I

    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    .line 40
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    const-string v0, "dha_hrt_max_enable"

    const-string/jumbo v1, "true"

    .line 44
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "reduce_chn_cached_max"

    const-string v1, "0"

    .line 41
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    .line 47
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 48
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 49
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 50
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 58
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    return-void
.end method


# virtual methods
.method public final changeBGSlot()V
    .locals 9

    .line 99
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 100
    iget v1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 101
    iget v2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 107
    iget v3, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v4, v3, 0x1

    if-lez v4, :cond_1

    .line 109
    div-int/lit8 v1, v2, 0x2

    iget v4, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    if-le v1, v4, :cond_0

    .line 110
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v1, 0x2

    :cond_1
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    if-lez v4, :cond_2

    const/4 v4, -0x4

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    const/4 v6, 0x4

    and-int/2addr v3, v6

    if-lez v3, :cond_3

    const/16 v2, 0x10

    move v4, v5

    move v0, v6

    .line 124
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before ChangeBGSlot CachedMax: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", CachedMin: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", EmptyMax: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "DynamicHiddenApp_BGSlotManager"

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v0, v4

    .line 127
    sget v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    add-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    add-int/2addr v1, v5

    .line 128
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    add-int/2addr v2, v5

    .line 129
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After ChangeBGSlot CachedMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->updateDefaultCachedMAX()V

    return-void
.end method

.method public initBGSlotManager(Lcom/android/server/am/DynamicHiddenApp;J)V
    .locals 3

    .line 62
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 63
    sget-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    if-eqz v0, :cond_0

    .line 64
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iget v2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 65
    sget v1, Lcom/android/server/am/BGProtectManager;->dha_keepempty_chn_key:I

    sput v1, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is china model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicHiddenApp_BGSlotManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x1800

    cmp-long p2, p2, v0

    if-lez p2, :cond_1

    .line 69
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    sget p3, Lcom/android/server/bgslotmanager/BGSlotManager;->STATIC_MAX_EMPTY_FOR_OVER_8GB:I

    if-ge p2, p3, :cond_1

    .line 70
    sput p3, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 73
    :cond_1
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput p2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 74
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput p2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 75
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput p2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 76
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput p2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    const-string p0, "cur_trim_cached_num"

    const-string p2, "0"

    .line 78
    invoke-static {p0, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string p3, "cur_trim_empty_num"

    .line 79
    invoke-static {p3, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 78
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/DynamicHiddenApp;->setCurTrimProcesses(II)V

    return-void
.end method

.method public initBGSlotManagerPostBoot()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBonusMaxCachedAppsPerSwap()V

    return-void
.end method

.method public restoreFromCameraBGSlot()V
    .locals 1

    .line 143
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string p0, "DynamicHiddenApp_BGSlotManager"

    const-string v0, "CameraBGSlot Recovered"

    .line 145
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreFromHighResBGSlot()V
    .locals 1

    .line 154
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 155
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string p0, "DynamicHiddenApp_BGSlotManager"

    const-string v0, "HighResBGSlot Recovered"

    .line 156
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreFromHomeHubBGSlot()V
    .locals 1

    .line 165
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 166
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string p0, "DynamicHiddenApp_BGSlotManager"

    const-string v0, "HomeHubBGSlot Recovered"

    .line 167
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public runSetBonusMaxCachedAppsPerSwapTimer()V
    .locals 7

    .line 187
    new-instance v6, Lcom/android/server/bgslotmanager/BGSlotManager$1;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/bgslotmanager/BGSlotManager$1;-><init>(Lcom/android/server/bgslotmanager/BGSlotManager;JJ)V

    .line 196
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public setBGSlotByRes(II)V
    .locals 1

    .line 171
    sget-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    if-eqz v0, :cond_0

    mul-int/2addr p1, p2

    const p2, 0x384000

    if-lt p1, p2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setHighResBGSlot()V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->restoreFromHighResBGSlot()V

    :goto_0
    return-void
.end method

.method public final setBonusMaxCachedAppsPerSwap()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getSwapsizeGB()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x6

    if-lt v0, v1, :cond_0

    .line 89
    sput v2, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    const/4 v0, 0x2

    .line 91
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 93
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public setCameraBGSlot()V
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 139
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public setHighResBGSlot()V
    .locals 1

    .line 149
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 150
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public setHomeHubBGSlot()V
    .locals 1

    .line 160
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 161
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public setOriginCachedMax(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 201
    sput p1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 202
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_0
    return-void
.end method

.method public setOriginCachedMin(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 208
    sput p1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 209
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_0
    return-void
.end method

.method public setOriginEmptyMax(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 215
    sput p1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 216
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_0
    return-void
.end method

.method public setOriginEmptyMin(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 222
    sput p1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    .line 223
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_0
    return-void
.end method

.method public setTaskSnapshot(II)V
    .locals 12

    const-string/jumbo v0, "max_snapshot_num"

    const-string v1, "0"

    .line 230
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 236
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getPhysicalMemory()I

    move-result p0

    mul-int/2addr p1, p2

    const/4 p2, 0x2

    const/4 v1, 0x3

    .line 239
    filled-new-array {p2, v1, v1, v1}, [I

    move-result-object v2

    const/4 v9, 0x5

    filled-new-array {v1, v9, v1, v1}, [I

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0x8

    filled-new-array {v4, v5, v4, v1}, [I

    move-result-object v6

    const/4 v7, 0x6

    const/16 v8, 0xa

    filled-new-array {v7, v8, v7, v1}, [I

    move-result-object v7

    filled-new-array {v5, v8, v5, v4}, [I

    move-result-object v10

    const/16 v4, 0xc

    filled-new-array {v4, v8, v8, v8}, [I

    move-result-object v11

    const/16 v4, 0x10

    filled-new-array {v4, v8, v8, v8}, [I

    move-result-object v8

    move-object v4, v6

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    filled-new-array/range {v2 .. v8}, [[I

    move-result-object v2

    const-string/jumbo v3, "physical memory: "

    const-string v4, "DynamicHiddenApp_BGSlotManager"

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    const-string/jumbo v6, "start update max task snapshot number"

    .line 251
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x384000

    const/4 v7, 0x1

    if-lt p1, v6, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const v1, 0x1fa400

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v7

    :goto_0
    move p1, v5

    :goto_1
    const/4 v1, 0x7

    if-ge p1, v1, :cond_3

    .line 257
    aget-object v1, v2, p1

    aget v6, v1, v5

    if-ne p0, v6, :cond_2

    .line 258
    aget v5, v1, p2

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update max task snapshot number, physical memory: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current resolution : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v5

    move v5, v7

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v5

    :goto_2
    if-nez v5, :cond_4

    const-string p1, "can not update max task snapshot number, due to unidentified physical memory"

    .line 266
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", current resolution: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move v9, p1

    :goto_3
    move v5, p2

    goto :goto_4

    :cond_5
    const-string p2, "can not update max task snapshot number, due to resolution or physical memory"

    .line 271
    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", resolution: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    move v0, v9

    .line 278
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TaskSnapShot : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CurRes : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotCache;->setMaxSnapshot(I)V

    return-void
.end method

.method public updateDefaultCachedMAX()V
    .locals 4

    .line 179
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    add-int v2, v0, v1

    int-to-float v3, v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    .line 183
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/DynamicHiddenApp;->updateMaxCachedProcessesNum(IF)V

    return-void
.end method
