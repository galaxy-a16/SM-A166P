.class public Lcom/android/server/display/mode/RefreshRateModeManager;
.super Ljava/lang/Object;
.source "RefreshRateModeManager.java"


# static fields
.field public static mControllerByToken:Ljava/util/HashMap;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

.field public mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

.field public mHandler:Landroid/os/Handler;

.field public mLock:Ljava/lang/Object;

.field public final mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;


# direct methods
.method public static synthetic $r8$lambda$BgEGrQVb3EtPAelaWDumJqAQvu8(Lcom/android/server/display/mode/RefreshRateModeManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->lambda$onLightSensorChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$KsdXMeoEZSvsZjZunYm7uPfmJOg(Lcom/android/server/display/mode/RefreshRateModeManager;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->lambda$registerBrightnessAndStateListener$2(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y0B2fjpwAmYQTVVzVTshH2EaSjA(Ljava/io/PrintWriter;Landroid/os/IBinder;Lcom/android/server/display/mode/RefreshRateController;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/display/mode/RefreshRateModeManager;->lambda$dumpLocked$3(Ljava/io/PrintWriter;Landroid/os/IBinder;Lcom/android/server/display/mode/RefreshRateController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cQfQxxI6vzjBOmFlzdkx6MXy7r8(Lcom/android/server/display/mode/RefreshRateModeManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->lambda$registerBrightnessAndStateListener$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/mode/RefreshRateModeManager;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/mode/RefreshRateModeManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/mode/DisplayModeDirector;Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/display/mode/VotesStorage;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    .line 140
    new-instance v0, Lcom/android/server/display/mode/RefreshRateModeManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateModeManager$1;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    .line 63
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p4, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p3, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/android/server/display/mode/RefreshRateTokenController;

    invoke-direct {v0, p3}, Lcom/android/server/display/mode/RefreshRateTokenController;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p2, p4, p5, v0}, Lcom/android/server/display/mode/RefreshRateController;->init(Landroid/content/Context;Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Handler;Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/RefreshRateTokenController;)V

    .line 67
    new-instance p2, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    invoke-direct {p2, p0, p1, p4}, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->addControllerByDisplayToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$dumpLocked$3(Ljava/io/PrintWriter;Landroid/os/IBinder;Lcom/android/server/display/mode/RefreshRateController;)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      DisplayToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "        "

    .line 282
    invoke-virtual {p2, p0, p1}, Lcom/android/server/display/mode/RefreshRateController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onLightSensorChanged$0()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->onBrightnessChangedLocked()V

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$registerBrightnessAndStateListener$1()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->onBrightnessChangedLocked()V

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$registerBrightnessAndStateListener$2(F)V
    .locals 1

    .line 172
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 173
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/RefreshRateController;->compareAndSetBrightnessZone(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addControllerByDisplayToken(Landroid/os/IBinder;)V
    .locals 3

    .line 114
    sget-object p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    monitor-enter p0

    .line 115
    :try_start_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    .line 117
    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateController;->makeController(Landroid/os/IBinder;)Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v1

    .line 116
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RefreshRateModeManager"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  RefreshRateModeManager"

    .line 278
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mRefreshRateModeByDisplayToken"

    .line 279
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 285
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateController;->dumpHistory(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public getController()Lcom/android/server/display/mode/RefreshRateController;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController(Landroid/os/IBinder;)Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    return-object p0
.end method

.method public getController(Landroid/os/IBinder;)Lcom/android/server/display/mode/RefreshRateController;
    .locals 1

    .line 76
    sget-object p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    monitor-enter p0

    .line 77
    :try_start_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/mode/RefreshRateController;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRefreshRateMode()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->getRefreshRateModeLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logCurrentState(ILcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 271
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/RefreshRateController;->logCurrentStateLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 273
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public observe()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->observe()V

    .line 212
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->registerBrightnessAndStateListener()V

    .line 216
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->registerWirelessChargeReceiver()V

    :cond_1
    return-void
.end method

.method public onBrightnessChangedLocked()V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked(Z)V

    return-void
.end method

.method public onLightSensorChanged(F)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/RefreshRateController;->compareAndSetAmbientLuxZone(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerBrightnessAndStateListener()V
    .locals 3

    const-string v0, "RefreshRateModeManager"

    const-string/jumbo v1, "registerBrightnessAndStateListener"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 171
    new-instance v1, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightness()F

    move-result v2

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    .line 182
    invoke-virtual {v1, v2}, Lcom/android/server/display/mode/RefreshRateController;->compareAndSetBrightnessZone(I)Z

    .line 184
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method

.method public final registerWirelessChargeReceiver()V
    .locals 3

    const-string v0, "RefreshRateModeManager"

    const-string/jumbo v1, "registerWirelessChargeReceiver"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/mode/RefreshRateModeManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/mode/RefreshRateModeManager$2;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setPrimaryDisplayToken()V
    .locals 2

    .line 84
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0

    .line 83
    invoke-static {v0, v1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->setPrimaryDisplayToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public updateDefaultDisplayToken()V
    .locals 5

    .line 90
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, v0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->addControllerByDisplayToken(Landroid/os/IBinder;)V

    .line 99
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "RefreshRateModeManager"

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDefaultDisplayToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController(Landroid/os/IBinder;)Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/mode/RefreshRateController;->updateDefaultDisplayOrOffDisplayLocked()V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->onBrightnessChangedLocked()V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateMaxLimitTokenLocked()V

    .line 109
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
