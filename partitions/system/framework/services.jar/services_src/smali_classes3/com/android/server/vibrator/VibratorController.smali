.class public final Lcom/android/server/vibrator/VibratorController;
.super Ljava/lang/Object;
.source "VibratorController.java"


# instance fields
.field public volatile mCurrentAmplitude:F

.field public volatile mIsUnderExternalControl:Z

.field public volatile mIsVibrating:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

.field public mSupportEnhancedSamsungHapticPattern:Z

.field public mSupportFrequencyControl:Z

.field public mSupportHapticEngine:Z

.field public mSupportIndexWideBand:Z

.field public mSupportIntensityControl:Z

.field public mSupportPrebakedHapticPattern:Z

.field public final mVibratorGroup:I

.field public volatile mVibratorInfo:Landroid/os/VibratorInfo;

.field public volatile mVibratorInfoLoadSuccessful:Z

.field public final mVibratorStateListeners:Landroid/os/RemoteCallbackList;

.field private mVibratorType:I


# direct methods
.method public static synthetic $r8$lambda$l230TP1dllG1Garpv_ojl93h7T0(Lcom/android/server/vibrator/VibratorController;ZLandroid/os/IVibratorStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController;->lambda$notifyListenerOnVibrating$0(ZLandroid/os/IVibratorStateListener;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .locals 1

    .line 77
    new-instance v0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 83
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 84
    invoke-virtual {p3, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    .line 85
    new-instance p2, Landroid/os/VibratorInfo$Builder;

    invoke-direct {p2, p1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 86
    invoke-virtual {p3, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 87
    invoke-virtual {p2}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 89
    iget-boolean p2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez p2, :cond_0

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vibrator controller initialization failed to load some HAL info for vibrator "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VibratorController"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->initVibratorGroup()I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    return-void
.end method

.method private synthetic lambda$notifyListenerOnVibrating$0(ZLandroid/os/IVibratorStateListener;)V
    .locals 0

    .line 375
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    return-void
.end method


# virtual methods
.method public getAmplitudeList(I)[I
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getAmplitudeList(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAmplitude()F
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    return p0
.end method

.method public getMotorType()I
    .locals 0

    .line 684
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    return p0
.end method

.method public getVibratorGroup()I
    .locals 0

    .line 688
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    return p0
.end method

.method public getVibratorInfo()Landroid/os/VibratorInfo;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object p0
.end method

.method public hasCapability(J)Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final initVibratorGroup()I
    .locals 4

    const/4 v0, 0x1

    .line 647
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    .line 648
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportsHapticEngine()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    .line 649
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportIntensityControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    .line 650
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportsFrequencyControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    .line 651
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportsPrebakedHapticPattern()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    .line 652
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->supportsEnhancedSamsungHapticPattern()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    const-string v1, "INDEX_WIDE_BAND"

    .line 653
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorController;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIndexWideBand:Z

    .line 657
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 658
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 662
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x5

    .line 659
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    const/4 v0, 0x4

    goto :goto_2

    .line 665
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    if-eqz v1, :cond_4

    .line 666
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 667
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    const/4 v0, 0x6

    .line 670
    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    goto :goto_1

    .line 673
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    if-eqz v1, :cond_5

    .line 674
    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    :goto_1
    move v0, v3

    .line 677
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "motor group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getVibrationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VibratorController"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSupportEnhancedSamsungHapticPattern()Z
    .locals 0

    .line 708
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    return p0
.end method

.method public isSupportFrequencyControl()Z
    .locals 0

    .line 700
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    return p0
.end method

.method public isSupportHapticEngine()Z
    .locals 0

    .line 692
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    return p0
.end method

.method public isSupportIndexWideBand()Z
    .locals 0

    .line 712
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIndexWideBand:Z

    return p0
.end method

.method public isSupportIntensityControl()Z
    .locals 0

    .line 696
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    return p0
.end method

.method public isSupportPrebakedHapticPattern()Z
    .locals 0

    .line 704
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    return p0
.end method

.method public isUnderExternalControl()Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    return p0
.end method

.method public isVibrating()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    return p0
.end method

.method public isVibratorInfoLoadSuccessful()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    return p0
.end method

.method public final notifyListenerOnVibrating(Z)V
    .locals 2

    .line 370
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-eq v0, p1, :cond_0

    .line 371
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 374
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final notifyStateListener(Landroid/os/IVibratorStateListener;Z)V
    .locals 0

    .line 381
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VibratorController"

    const-string p2, "Vibrator state listener failed to call"

    .line 383
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public off()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    const/4 v1, 0x0

    .line 341
    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public on(JJ)J
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_0

    const/high16 p3, -0x40800000    # -1.0f

    .line 263
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p3, 0x1

    .line 264
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 266
    :cond_0
    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public on(Landroid/os/vibrator/PrebakedSegment;J)J
    .locals 8

    .line 280
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    int-to-long v2, v2

    .line 282
    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p1

    int-to-long v4, p1

    move-wide v6, p2

    .line 281
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->perform(JJJ)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-lez p3, :cond_0

    const/high16 p3, -0x40800000    # -1.0f

    .line 284
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p3, 0x1

    .line 285
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 287
    :cond_0
    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p0

    .line 288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public on([Landroid/os/vibrator/PrimitiveSegment;J)J
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-lez p3, :cond_1

    const/high16 p3, -0x40800000    # -1.0f

    .line 307
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p3, 0x1

    .line 308
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 310
    :cond_1
    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p0

    .line 311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public on([Landroid/os/vibrator/RampSegment;J)J
    .locals 5

    .line 323
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getDefaultBraking()I

    move-result v3

    .line 328
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwle([Landroid/os/vibrator/RampSegment;IJ)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-lez p3, :cond_1

    const/high16 p3, -0x40800000    # -1.0f

    .line 330
    iput p3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    const/4 p3, 0x1

    .line 331
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 333
    :cond_1
    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p0

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public performCommonInputff([IZI)V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performCommonInputff([IZI)V

    const/4 p1, 0x1

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    return-void
.end method

.method public performHapticEngine([II)V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performHapticEngine([II)V

    const/4 p1, 0x1

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    return-void
.end method

.method public performPrebakedHapticPattern(JJZ)V
    .locals 6

    .line 754
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJZ)V

    const/4 p1, 0x1

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    return-void
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4

    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_0
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    invoke-virtual {p0, p1, v3}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    .line 111
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 111
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw p0
.end method

.method public reloadVibratorInfoIfNeeded()V
    .locals 4

    .line 131
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v1, :cond_1

    .line 136
    monitor-exit v0

    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    .line 139
    new-instance v2, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v2, v1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 140
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 141
    invoke-virtual {v2}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 142
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez p0, :cond_2

    const-string p0, "VibratorController"

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed retry of HAL getInfo for vibrator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
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

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->off()V

    return-void
.end method

.method public setAmplitude(F)V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(F)V

    .line 244
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-eqz v1, :cond_1

    .line 245
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 247
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

.method public setExternalControl(Z)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    .line 216
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFoldState(Z)V
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFoldState(Z)V

    return-void
.end method

.method public setFrequencyType(J)V
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFrequencyType(J)V

    return-void
.end method

.method public setIntensity(J)V
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(J)V

    return-void
.end method

.method public supportIntensityControl()Z
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportIntensityControl()Z

    move-result p0

    return p0
.end method

.method public supportsEnhancedSamsungHapticPattern()Z
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsEnhancedSamsungHapticPattern()Z

    move-result p0

    return p0
.end method

.method public supportsFoldState()Z
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState()Z

    move-result p0

    return p0
.end method

.method public supportsFrequencyControl()Z
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFrequencyControl()Z

    move-result p0

    return p0
.end method

.method public supportsHapticEngine()Z
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine()Z

    move-result p0

    return p0
.end method

.method public supportsPrebakedHapticPattern()Z
    .locals 0

    .line 717
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsPrebakedHapticPattern()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorController{mVibratorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorInfoLoadSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVibrating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUnderExternalControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorStateListeners count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 364
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 2

    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 122
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw p0
.end method

.method public updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_1

    .line 230
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v2, p1

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result p0

    int-to-long v4, p0

    .line 233
    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p0

    int-to-long v6, p0

    .line 232
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    .line 235
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
