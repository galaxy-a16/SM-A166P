.class Lcom/android/server/broadcastradio/hal1/TunerCallback;
.super Ljava/lang/Object;
.source "TunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv.TunerCallback"


# instance fields
.field public final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field public mInitialConfigurationDone:Z

.field public final mNativeContext:J

.field public final mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method public static synthetic $r8$lambda$4w4o2bWfu9IjTXHO3wvwqAWFKbE(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListChanged$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$GeC1yqf6yu8W9RNSwk36GCVLg0c(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanComplete$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$OkrnXw_mkhVD-sCeb3lqBMnH30c(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bwUtC_jljc5xihB-CTtydiu8Jr4(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fi5AOUESgvo_iRNRy9Fok_kZrhA(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanAvailabilityChange$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$iu61ECEuAHf4VdoreQqbIl8Ub0Y(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onAntennaState$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kRITBaFaFjzTph8wz_3PN9LdDP0(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$maI1KLsMJmNyUq0En_5Junuj-7w(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onError$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$psFQXxiE4ymb7_EN3yQ_RW-bv0k(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onTrafficAnnouncement$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sXXG49q25v77-djJ4il87DeIa_Q(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onEmergencyAnnouncement$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tqNxJoIWcGvvpPfisGZOcguD7E8(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 52
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 53
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    return-void
.end method

.method private synthetic lambda$onAntennaState$5(Z)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method private synthetic lambda$onBackgroundScanAvailabilityChange$6(Z)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method private synthetic lambda$onBackgroundScanComplete$7()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method private synthetic lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method private synthetic lambda$onEmergencyAnnouncement$4(Z)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method private synthetic lambda$onError$0(I)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    return-void
.end method

.method private synthetic lambda$onProgramListChanged$8()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    return-void
.end method

.method private synthetic lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method private synthetic lambda$onTrafficAnnouncement$3(Z)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method private synthetic lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 188
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not a binder"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detach()V
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeDetach(J)V

    return-void
.end method

.method public final dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V
    .locals 1

    .line 77
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string v0, "client died"

    .line 79
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeFinalize(J)V

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final handleHwFailure()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->onError(I)V

    .line 86
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    return-void
.end method

.method public isInitialConfigurationDone()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    return p0
.end method

.method public onAntennaState(Z)V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .locals 1

    .line 141
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanComplete()V
    .locals 1

    .line 146
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onConfigFlagUpdated(IZ)V
    .locals 0

    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string p1, "Not applicable for HAL 1.x"

    .line 178
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 116
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onError(I)V
    .locals 1

    .line 105
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .locals 0

    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string p1, "Not applicable for HAL 1.x"

    .line 183
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgramListChanged()V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 1

    .line 173
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .locals 1

    .line 126
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 0

    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string p1, "Not applicable for HAL 1.x"

    .line 110
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendProgramListUpdate()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramList$Filter;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getVendorFilter()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/broadcastradio/hal1/Tuner;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 167
    new-instance v1, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    .line 168
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void

    :catch_0
    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string v0, "Program list not ready yet"

    .line 163
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public stopProgramListUpdates()V
    .locals 1

    .line 96
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
