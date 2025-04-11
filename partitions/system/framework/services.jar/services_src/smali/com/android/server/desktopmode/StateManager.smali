.class public Lcom/android/server/desktopmode/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/android/server/desktopmode/IStateManager;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public volatile mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

.field public final mLock:Ljava/lang/Object;

.field public volatile mState:Lcom/android/server/desktopmode/State;

.field public mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public static synthetic $r8$lambda$0J6zLPkI-k7DD49t3WVqGzy66vQ(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDockLowChargerState$8(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0zu3lI2TE0dc7SLBW4LNrC3xrBU(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setSpenEnabled$16(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4MwjmYdLESBSgG35wRxoHrt66VI(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setWiredCharging$5(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5p4qWQUwOiL_ysJ6JDLEMqD9TWg(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setTouchpadEnabled$15(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6pNiVrbGpVCXFRfTeEHY5szgwtE(Lcom/android/server/desktopmode/StateManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$notifyBootInitBlockerRegistered$19(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$6y8HwyAViTnVvTGUQMpdMKBG9WA(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setMouseConnected$3(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AV7TBD2666h3bfnBy4MhQ7K-3Z4(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setExternalDisplayUpdated$1(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FjxmxFmKiAwz-THtv02ZPC50btE(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setCurrentUserId$10(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LNz6I0juMDQqEYDquxaQUFVDQSs(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setCoverState$9(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NyiAvGiNUyN9W9Bt2iys8ubSCRU(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDesktopModeState$13(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dBFwDfSqnxKPUlJegplI9AvGzaM(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDesktopDisplayId$2(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSvFPc8bewH8TyC4JvLxHq503ag(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setTouchpadAvailable$14(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iL_sw-3BYZMZ6dqBU_z3VWSML4E(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setExternalDisplayConnected$0(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o0MFOslyTWsiOZi-09PhUzcRBnk(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setNavBarGestureEnabled$17(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oci69yA6R3_t-QqXEPHB04KaMlg(Lcom/android/server/desktopmode/StateManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager;->lambda$notifyBootCompleted$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$rtQIOBM0nc6aAMPIYW-YQ1xG9Ps(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setForcedInternalScreenModeEnabled$7(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vlFwb46zIdPP9lb6x65O6XMIyUY(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setPogoKeyboardConnected$4(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$we-_H8lo-jYJNV_7Qns0XifmlN0(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setEmergencyModeEnabled$12(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xI3ii_DwwbSdbdkzE1tfiFjaPZ4(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDockState$6(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydVzKsEmXkxaSVX5ftKyAfpjJnk(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setPackageState$11(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ServiceThread;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance v0, Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/StateManager$InternalState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$notifyBootCompleted$18()V
    .locals 1

    .line 373
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 374
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onBootCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyBootInitBlockerRegistered$19(Z)V
    .locals 1

    .line 383
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 384
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onBootInitBlockerRegistered(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setCoverState$9(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 207
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onCoverSupportStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setCurrentUserId$10(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 222
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 223
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onUserChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDesktopDisplayId$2(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDesktopDisplayIdChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDesktopModeState$13(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 267
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 268
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDesktopModeStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDockLowChargerState$8(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 186
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockLowChargerPowerChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDockState$6(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setEmergencyModeEnabled$12(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 252
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 253
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onEmergencyModeChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setExternalDisplayConnected$0(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 56
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setExternalDisplayUpdated$1(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 75
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onExternalDisplayUpdated(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setForcedInternalScreenModeEnabled$7(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 170
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onForcedInternalScreenStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setMouseConnected$3(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 107
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onMouseConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setNavBarGestureEnabled$17(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 354
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onNavBarGestureEnabled(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPackageState$11(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 237
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 238
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onPackageStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPogoKeyboardConnected$4(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 123
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onPogoKeyboardConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setSpenEnabled$16(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 326
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 327
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSpenEnabled(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setTouchpadAvailable$14(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 294
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onTouchpadAvailabilityChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setTouchpadEnabled$15(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 310
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 311
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onTouchpadEnabled(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setWiredCharging$5(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 139
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onWiredChargingChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;
    .locals 1

    .line 362
    invoke-static {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 363
    new-instance v0, Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {v0, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;-><init>(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 364
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    .line 365
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStateListeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 515
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getState()Lcom/android/server/desktopmode/State;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyBootCompleted()V
    .locals 2

    .line 371
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyBootCompleted()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyBootInitBlockerRegistered(Z)V
    .locals 2

    .line 381
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyBootInitBlockerRegistered()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/desktopmode/StateManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyDisplayDisconnectionRequest(I)V
    .locals 3

    .line 487
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDisplayDisconnectionRequest(displayType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 490
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDisplayDisconnectionRequested(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyDualModeOnConfigurationChanged(Z)V
    .locals 3

    .line 463
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualOnConfigurationChanged(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 465
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeConfigurationChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .locals 3

    .line 439
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualSetDesktopMode(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 441
    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyDualModeSetDesktopModeInternal(Z)V
    .locals 3

    .line 455
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualModeSetDesktopModeInternal(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 457
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeSetDesktopModeInternal(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyDualModeStartLoadingScreen(Z)V
    .locals 3

    .line 447
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualStartLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 449
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeStartLoadingScreen(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyDualModeStopLoadingScreen(Z)V
    .locals 3

    .line 471
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualStopLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 473
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeStopLoadingScreen(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyLauncherPackageReplaced(Z)V
    .locals 3

    .line 391
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLauncherPackageReplaced(dataCleared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 393
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onLauncherPackageReplaced(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyOnConfigurationChanged(Z)V
    .locals 3

    .line 423
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOnConfigurationChanged(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 425
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onConfigurationChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyScheduleUpdateDesktopMode(Z)V
    .locals 3

    .line 479
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyScheduleUpdateDesktopMode(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 481
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onScheduleUpdateDesktopMode(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifySetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .locals 3

    .line 399
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySetDesktopMode(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 401
    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifySetDesktopModeInternal(Z)V
    .locals 3

    .line 415
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySetDesktopModeInternal(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 417
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSetDesktopModeInternal(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyStartLoadingScreen(Z)V
    .locals 3

    .line 407
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStartLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 409
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onStartLoadingScreen(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyStopLoadingScreen(Z)V
    .locals 3

    .line 431
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStopLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 433
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onStopLoadingScreen(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
    .locals 3

    .line 496
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener(StateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCoverState(Lcom/samsung/android/cover/CoverState;I)V
    .locals 3

    .line 195
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverState(coverState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", coverSupportState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmCoverState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/cover/CoverState;)V

    .line 203
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 205
    iget-object p2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
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

.method public setCurrentUserId(I)V
    .locals 3

    .line 216
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 220
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 221
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
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

.method public setDesktopDisplayId(I)V
    .locals 3

    .line 84
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopDisplayId(displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 88
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
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

.method public setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    .line 262
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeState(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDesktopModeState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 265
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 266
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDisplayResolutionUnsupported(Z)V
    .locals 3

    .line 336
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayResolutionUnsupported(unsupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 340
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    .line 342
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

.method public setDockLowChargerState(I)V
    .locals 3

    .line 179
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockLowChargerState(dockLowChargerState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 183
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 184
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
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

.method public setDockState(Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .locals 3

    .line 148
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockState(dockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmPreviousDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V

    .line 151
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V

    .line 152
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 153
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setEmergencyModeEnabled(Z)V
    .locals 3

    .line 246
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEmergencyModeEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 250
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 251
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
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

.method public setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V
    .locals 3

    .line 45
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalDisplayConnected(connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 49
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V

    if-nez p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
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

.method public setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 3

    .line 65
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalDisplayUpdated(display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v1

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 70
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmPreviousConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 72
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
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

.method public setForcedInternalScreenModeEnabled(Z)V
    .locals 3

    .line 163
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcedInternalScreenModeEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 167
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 168
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
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

.method public setModeChangeLocked(Z)V
    .locals 3

    .line 276
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeChangeLocked(locked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 280
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    .line 282
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

.method public setMouseConnected(Z)V
    .locals 3

    .line 100
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseConnected(connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 104
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
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

.method public setNavBarGestureEnabled(Z)V
    .locals 3

    .line 347
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNavBarGestureEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 351
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 352
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
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

.method public setPackageState(Ljava/util/Map;)V
    .locals 3

    .line 232
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageState(packageState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmPackageState(Lcom/android/server/desktopmode/StateManager$InternalState;Ljava/util/Map;)V

    .line 235
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 236
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPogoKeyboardConnected(Z)V
    .locals 3

    .line 116
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPogoKeyboardConnected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 120
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 121
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
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

.method public setSpenEnabled(Z)V
    .locals 3

    .line 320
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpenEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 324
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 325
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
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

.method public setTouchpadAvailable(Z)V
    .locals 3

    .line 287
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchpadAvailable(available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 291
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 292
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
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

.method public setTouchpadEnabled(Z)V
    .locals 3

    .line 304
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchpadEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 308
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 309
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
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

.method public setWiredCharging(Z)V
    .locals 3

    .line 132
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredCharging(isWiredCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 136
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 137
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
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

.method public unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
    .locals 3

    .line 503
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener(StateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
