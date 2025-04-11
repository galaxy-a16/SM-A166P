.class public final Lcom/android/server/display/WakelockController;
.super Ljava/lang/Object;
.source "WakelockController.java"


# static fields
.field static final WAKE_LOCK_MAX:I = 0x7


# instance fields
.field public final mDisplayId:I

.field public final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public mHasProximityDebounced:Z

.field public mIsEarlyWakeupRequested:Z

.field public mIsProximityNegativeAcquired:Z

.field public mIsProximityPositiveAcquired:Z

.field public mIsRefreshRateRequested:Z

.field public mOnStateChangedPending:Z

.field public final mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

.field public final mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

.field public final mSuspendBlockerIdProxDebounce:Ljava/lang/String;

.field public final mSuspendBlockerIdProxNegative:Ljava/lang/String;

.field public final mSuspendBlockerIdProxPositive:Ljava/lang/String;

.field public final mSuspendBlockerIdRefreshRate:Ljava/lang/String;

.field public final mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public mUnfinishedBusiness:Z


# direct methods
.method public static synthetic $r8$lambda$Mf39SAJp9vgGHD0HcEN8YNPehTw(Lcom/android/server/display/WakelockController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/WakelockController;->lambda$getOnStateChangedRunnable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kEAoLbCkvVecy0zzr7Uig6_GHIA(Lcom/android/server/display/WakelockController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/WakelockController;->lambda$getOnProximityNegativeRunnable$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$m-Qrzuv9MBi09tlz8Mol9IZGCy4(Lcom/android/server/display/WakelockController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/WakelockController;->lambda$getOnProximityPositiveRunnable$0()V

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/android/server/display/WakelockController;->mDisplayId:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakelockController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]unfinished business"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]on state changed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]prox positive"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]prox negative"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]prox debounce"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]vrr ramp animation"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]early wakeup"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$getOnProximityNegativeRunnable$2()V
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 429
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onProximityNegative()V

    .line 430
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getOnProximityPositiveRunnable$0()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 403
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onProximityPositive()V

    .line 404
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getOnStateChangedRunnable$1()V
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 416
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onStateChanged()V

    .line 417
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final acquireEarlyWakeUpSuspendBlocker()Z
    .locals 2

    .line 378
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireProxDebounceSuspendBlocker()Z
    .locals 2

    .line 335
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireProxNegativeSuspendBlocker()Z
    .locals 2

    .line 309
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireProxPositiveSuspendBlocker()Z
    .locals 2

    .line 222
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireRefreshRateSuspendBlocker()Z
    .locals 2

    .line 358
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireStateChangedSuspendBlocker()Z
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireUnfinishedBusinessSuspendBlocker()Z
    .locals 2

    .line 264
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public acquireWakelock(I)Z
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/display/WakelockController;->acquireWakelockInternal(I)Z

    move-result p0

    return p0
.end method

.method public final acquireWakelockInternal(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 188
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid wakelock attempted to be acquired"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireEarlyWakeUpSuspendBlocker()Z

    move-result p0

    return p0

    .line 181
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireRefreshRateSuspendBlocker()Z

    move-result p0

    return p0

    .line 178
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireUnfinishedBusinessSuspendBlocker()Z

    move-result p0

    return p0

    .line 176
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireStateChangedSuspendBlocker()Z

    move-result p0

    return p0

    .line 174
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireProxDebounceSuspendBlocker()Z

    move-result p0

    return p0

    .line 172
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireProxNegativeSuspendBlocker()Z

    move-result p0

    return p0

    .line 170
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireProxPositiveSuspendBlocker()Z

    move-result p0

    return p0

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

.method public dumpLocal(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "WakelockController State:"

    .line 439
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WakelockController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->hasUnfinishedBusiness()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnStateChangePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isOnStateChangedPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnProximityPositiveMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isProximityPositiveAcquired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnProximityNegativeMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isProximityNegativeAcquired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsRefreshRateRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isRefreshRateRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEarlyWakeUpRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isEarlyWakeupRequested()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getOnProximityNegativeRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 426
    new-instance v0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/WakelockController;)V

    return-object v0
.end method

.method public getOnProximityPositiveRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 400
    new-instance v0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/WakelockController;)V

    return-object v0
.end method

.method public getOnStateChangedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 413
    new-instance v0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;)V

    return-object v0
.end method

.method public getSuspendBlockerOnStateChangedId()Ljava/lang/String;
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerProxDebounceId()Ljava/lang/String;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerProxNegativeId()Ljava/lang/String;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerProxPositiveId()Ljava/lang/String;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerUnfinishedBusinessId()Ljava/lang/String;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    return-object p0
.end method

.method public hasProximitySensorDebounced()Z
    .locals 0

    .line 500
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    return p0
.end method

.method public hasUnfinishedBusiness()Z
    .locals 0

    .line 480
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    return p0
.end method

.method public isEarlyWakeupRequested()Z
    .locals 0

    .line 513
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    return p0
.end method

.method public isOnStateChangedPending()Z
    .locals 0

    .line 485
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    return p0
.end method

.method public isProximityNegativeAcquired()Z
    .locals 0

    .line 495
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    return p0
.end method

.method public isProximityPositiveAcquired()Z
    .locals 0

    .line 490
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    return p0
.end method

.method public isRefreshRateRequested()Z
    .locals 0

    .line 506
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    return p0
.end method

.method public releaseAll()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final releaseEarlyWakeUpSuspendBlocker()Z
    .locals 3

    .line 387
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 389
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final releaseProxDebounceSuspendBlocker()Z
    .locals 3

    .line 348
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 350
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final releaseProxNegativeSuspendBlocker()Z
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 324
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final releaseProxPositiveSuspendBlocker()Z
    .locals 3

    .line 296
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 298
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final releaseRefreshRateSuspendBlocker()Z
    .locals 3

    .line 367
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 369
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final releaseStateChangedSuspendBlocker()Z
    .locals 3

    .line 250
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 252
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final releaseUnfinishedBusinessSuspendBlocker()Z
    .locals 3

    .line 280
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 285
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public releaseWakelock(I)Z
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    move-result p0

    return p0
.end method

.method public final releaseWakelockInternal(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 213
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid wakelock attempted to be released"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseEarlyWakeUpSuspendBlocker()Z

    move-result p0

    return p0

    .line 206
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseRefreshRateSuspendBlocker()Z

    move-result p0

    return p0

    .line 203
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseUnfinishedBusinessSuspendBlocker()Z

    move-result p0

    return p0

    .line 201
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseStateChangedSuspendBlocker()Z

    move-result p0

    return p0

    .line 199
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseProxDebounceSuspendBlocker()Z

    move-result p0

    return p0

    .line 197
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseProxNegativeSuspendBlocker()Z

    move-result p0

    return p0

    .line 195
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseProxPositiveSuspendBlocker()Z

    move-result p0

    return p0

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
