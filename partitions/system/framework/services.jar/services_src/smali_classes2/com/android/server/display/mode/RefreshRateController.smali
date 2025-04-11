.class public Lcom/android/server/display/mode/RefreshRateController;
.super Ljava/lang/Object;
.source "RefreshRateController.java"


# static fields
.field public static mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

.field public static mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static mContext:Landroid/content/Context;

.field public static mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

.field public static mDm:Lcom/android/server/display/mode/DisplayModeDirector;

.field public static mHandler:Landroid/os/Handler;

.field public static mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

.field public static mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mPrimaryDisplayToken:Landroid/os/IBinder;

.field public static mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

.field public static mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# instance fields
.field public mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

.field public mDisplayToken:Landroid/os/IBinder;

.field public mDisplayType:I

.field public mIsSubScreen:Z

.field public mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mRefreshRateModeSetting:Ljava/lang/String;

.field public mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$6rVKmBfQc0K-SvEiqf0qWJ4_JQM(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->lambda$updateRefreshRateMaxLimitTokenLocked$3(Lcom/android/server/display/mode/RefreshRateToken;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8bvAg2vfoYRhVTRPoY1ul_PzqAs(Landroid/os/IBinder;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/mode/RefreshRateController;->lambda$notifyRefreshRateModeLocked$0(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l4ZPJYT3JKOB_Q6ruc--XUvMR70(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->lambda$checkLowRefershRateToken$1(Lcom/android/server/display/mode/RefreshRateToken;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$usUndWChf3-HMKBBvp6NyFnNlKU(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->lambda$checkPassiveModeToken$2(Lcom/android/server/display/mode/RefreshRateToken;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ybk8VbQa6yLyLh-v1JmkPDPoJLY(ILandroid/view/Display$Mode;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/mode/RefreshRateController;->lambda$updateResolutionLocked$4(ILandroid/view/Display$Mode;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayToken(Lcom/android/server/display/mode/RefreshRateController;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmAmbientLux()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmBrightness()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmDm()Lcom/android/server/display/mode/DisplayModeDirector;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmIsWirelessCharging()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmRefreshRateTokenController()Lcom/android/server/display/mode/RefreshRateTokenController;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmVotesStorage()Lcom/android/server/display/mode/VotesStorage;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "refresh_rate_mode"

    .line 81
    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    const/4 v0, 0x1

    .line 82
    iput v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayType:I

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    .line 90
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 153
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 155
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v2, :cond_1

    .line 156
    sget-object v3, Lcom/android/server/display/mode/RefreshRateController;->mPrimaryDisplayToken:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "refresh_rate_mode_cover"

    .line 158
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    const/4 p1, 0x2

    .line 159
    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayType:I

    :cond_1
    if-eqz v2, :cond_2

    .line 163
    iget-boolean p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance(Z)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/IBinder;Lcom/android/server/display/mode/RefreshRateController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method public static getAmbientLuxZone(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mLowAmbientLuxThreshold:I

    int-to-float v0, v0

    cmpl-float v0, v0, p0

    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 128
    :cond_1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighAmbientLuxThreshold:I

    int-to-float v0, v0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static getBrightnessZone(I)I
    .locals 1

    .line 115
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mLowBrightnessThreshold:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 117
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighBrightnessThreshold:I

    if-ge v0, p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Handler;Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/RefreshRateTokenController;)V
    .locals 0

    .line 103
    sput-object p1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 104
    sput-object p0, Lcom/android/server/display/mode/RefreshRateController;->mContext:Landroid/content/Context;

    .line 105
    sput-object p2, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Landroid/os/Handler;

    .line 106
    sput-object p3, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 107
    sput-object p4, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 109
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz p0, :cond_0

    .line 110
    new-instance p0, Lcom/samsung/android/core/SystemHistory;

    const/16 p1, 0x19

    const-string p2, "RefreshRateModeManager"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    sput-object p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$checkLowRefershRateToken$1(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    .line 455
    instance-of p0, p0, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;

    return p0
.end method

.method public static synthetic lambda$checkPassiveModeToken$2(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    .line 460
    instance-of p0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;

    return p0
.end method

.method public static synthetic lambda$notifyRefreshRateModeLocked$0(Landroid/os/IBinder;I)V
    .locals 0

    .line 339
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->notifyHFRmode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static synthetic lambda$updateRefreshRateMaxLimitTokenLocked$3(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    .line 465
    instance-of p0, p0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;

    return p0
.end method

.method public static synthetic lambda$updateResolutionLocked$4(ILandroid/view/Display$Mode;)Z
    .locals 0

    .line 569
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeController(Landroid/os/IBinder;)Lcom/android/server/display/mode/RefreshRateController;
    .locals 1

    if-nez p0, :cond_0

    .line 169
    new-instance p0, Lcom/android/server/display/mode/RefreshRateController$NullController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/RefreshRateController$NullController;-><init>(Landroid/os/IBinder;)V

    return-object p0

    .line 170
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$SwitchableController;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController$SwitchableController;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 172
    :cond_1
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamless()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$SeamlessController;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController$SeamlessController;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 174
    :cond_2
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamlessPlus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 177
    :cond_3
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public checkLowRefershRateToken()Z
    .locals 1

    .line 454
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->getRefreshRateTokens()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;-><init>()V

    .line 455
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public checkPassiveModeToken()Z
    .locals 1

    .line 459
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->getRefreshRateTokens()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda4;-><init>()V

    .line 460
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public compareAndSetAmbientLuxZone(F)Z
    .locals 1

    .line 139
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    move-result p0

    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public compareAndSetBrightnessZone(I)Z
    .locals 0

    .line 135
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public compareAndSetIsWirelessCharging(Z)Z
    .locals 0

    .line 143
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public consumeUpdateRefreshRateMode()Z
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    return p0
.end method

.method public createLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 4

    .line 492
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;-><init>(Lcom/android/server/display/mode/RefreshRateController;)V

    new-instance p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LowRefreshRateToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->build()Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    move-result-object p0

    .line 492
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p0

    return-object p0
.end method

.method public createPassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 4

    .line 472
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;-><init>(Lcom/android/server/display/mode/RefreshRateController;)V

    new-instance p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PassiveModeToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->build()Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    move-result-object p0

    .line 472
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p0

    return-object p0
.end method

.method public createRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 4

    .line 509
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;-><init>(Lcom/android/server/display/mode/RefreshRateController;)V

    new-instance p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateMaxLimitToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->setRefreshRate(I)Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->build()Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    move-result-object p0

    .line 509
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p0

    return-object p0
.end method

.method public createRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 4

    .line 542
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;-><init>(Lcom/android/server/display/mode/RefreshRateController;)V

    new-instance p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateMinLimitToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->setRefreshRate(I)Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo$Builder;->build()Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    move-result-object p0

    .line 542
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p0

    return-object p0
.end method

.method public dumpHistory(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "DisplayModeDirector History"

    .line 298
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    const-string p0, "RefreshRateToken History"

    .line 300
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateTokenController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 310
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PrimaryDisplay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ControllerType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getControllerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RefreshRateMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getRefreshRateModeLocked()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 317
    iget-boolean p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    invoke-static {p1, p2, p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public getControllerType()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "RefreshRateController"

    return-object p0
.end method

.method public getHighSpeedVote()Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 212
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result p0

    int-to-float p0, p0

    .line 211
    invoke-static {v0, p0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0
.end method

.method public getNormalSpeedVote()Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result p0

    int-to-float p0, p0

    .line 205
    invoke-static {v0, p0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0
.end method

.method public getPowerModeOnByDisplayType(I)Ljava/lang/Boolean;
    .locals 0

    .line 181
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public getRefreshRateModeLocked()I
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getSwitchingType()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final getVoteForMode(I)Lcom/android/server/display/mode/Vote;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getHighSpeedVote()Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getNormalSpeedVote()Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0
.end method

.method public isHighBrightnessAmbientLuxZone()Z
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighBrightnessThreshold:I

    .line 443
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mHighAmbientLuxThreshold:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    .line 450
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isLowAmbientLuxZone()Z
    .locals 1

    .line 434
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowBrightnessZone()Z
    .locals 1

    .line 430
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPassiveModeForTypeLocked()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPassiveModeLocked()Z
    .locals 3

    .line 349
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 353
    :cond_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getRefreshRateModeLocked()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 358
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->isPassiveModeForTypeLocked()Z

    move-result p0

    return p0
.end method

.method public isRefreshRateModeChangingLocked()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnknownAmbientLuxZone()Z
    .locals 0

    .line 438
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logBrightnessStateLocked()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public logCurrentStateLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)Z
    .locals 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "Schedule to change allowedModes="

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "Schedule to change HFRmode="

    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 264
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, ", displayToken="

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 269
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/mode/VotesStorage;->dump(Ljava/io/PrintWriter;)V

    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mModeSwitchingType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 273
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlwaysRespectAppRequest: "

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->logModeStateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->logBrightnessStateLocked()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final logModeStateLocked()Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Current Mode "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mReportedRefreshRateMode(toSurfaceFlinger)="

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 287
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateMode(fromSettings)="

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 289
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final notifyRefreshRateModeLocked()Z
    .locals 5

    .line 325
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getRefreshRateModeLocked()I

    move-result v0

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 338
    sget-object v3, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v0}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;-><init>(Landroid/os/IBinder;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->logCurrentStateLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)Z

    :cond_3
    return v1
.end method

.method public onBrightnessChangedLocked(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked(ZZ)V

    return-void
.end method

.method public onBrightnessChangedLocked(ZZ)V
    .locals 3

    .line 406
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    const-string v1, "RefreshRateModeManager"

    if-eqz v0, :cond_0

    .line 407
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSubScreen()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    if-eq v0, v2, :cond_0

    .line 408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "default display was changed!, don\'t need to check passive mode for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 413
    :cond_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 417
    :cond_1
    iget v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayType:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->getPowerModeOnByDisplayType(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onBrightnessChangedLocked returned by powerMode, caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 423
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBrightnessChangedLocked, brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lux="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/RefreshRateController;->updateLfdValueLocked(Z)V

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateController;->updatePassiveLocked(Z)V

    return-void
.end method

.method public onDisplayStateChangeLocked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked(Z)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->onDisplayStateOffLocked()V

    :goto_0
    return-void
.end method

.method public onDisplayStateOffLocked()V
    .locals 0

    .line 0
    return-void
.end method

.method public setPowerModeOnByDisplayType(IZ)V
    .locals 0

    .line 185
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setPrimaryDisplayToken(Landroid/os/IBinder;)V
    .locals 0

    .line 148
    sput-object p1, Lcom/android/server/display/mode/RefreshRateController;->mPrimaryDisplayToken:Landroid/os/IBinder;

    return-void
.end method

.method public updateDefaultDisplayOrOffDisplayLocked()V
    .locals 0

    .line 0
    return-void
.end method

.method public updateLfdValueLocked(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public updatePassiveLocked(Z)V
    .locals 2

    .line 390
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->isPassiveModeLocked()Z

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-ne v1, v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 394
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPassiveMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", brightness="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lux="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", PassiveModeToken="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->checkPassiveModeToken()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RefreshRateModeManager"

    .line 394
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->notifyRefreshRateModeLocked()Z

    .line 398
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateMaxLimitTokenLocked()V

    return-void
.end method

.method public updateRefreshRateMaxLimitTokenLocked()V
    .locals 1

    .line 464
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->getRefreshRateTokens()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;-><init>()V

    .line 465
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/mode/RefreshRateToken;

    if-eqz p0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateToken;->accept()V

    :cond_0
    return-void
.end method

.method public updateRefreshRateModeLocked(Z)V
    .locals 5

    .line 235
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateModeSetting:Ljava/lang/String;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 238
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getRefreshRateModeLocked()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 243
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getSwitchingType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector;->setModeSwitchingType(I)V

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%s"

    .line 247
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x13af11

    .line 246
    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 248
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 249
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateController;->mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 250
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v2, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->getVoteForMode(I)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {p1, v4, v2, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 251
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz p1, :cond_2

    .line 252
    invoke-virtual {p0, v3, v1}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked(ZZ)V

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->notifyRefreshRateModeLocked()Z

    return-void
.end method

.method public updateResolutionLocked(ILandroid/view/DisplayInfo;)V
    .locals 2

    .line 566
    iget p0, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 568
    iget-object p2, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 569
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Display$Mode;

    if-nez p0, :cond_0

    return-void

    .line 573
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p2

    .line 574
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    .line 576
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector;->getVote(II)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    iget v0, v0, Lcom/android/server/display/mode/Vote;->width:I

    if-ne v0, p2, :cond_1

    return-void

    .line 581
    :cond_1
    invoke-static {p2, p0}, Lcom/android/server/display/mode/Vote;->forSize(II)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    .line 582
    sget-object p2, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
