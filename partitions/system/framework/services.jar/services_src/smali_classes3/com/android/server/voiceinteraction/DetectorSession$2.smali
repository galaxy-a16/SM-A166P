.class public Lcom/android/server/voiceinteraction/DetectorSession$2;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "DetectorSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$audioSource:Ljava/io/InputStream;

.field public final synthetic val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field public final synthetic val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static synthetic $r8$lambda$Nahy84b30pcnVWlojnbp5apnBUk(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/DetectorSession$2;->lambda$onDetected$1(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NhzZa35FLFlxZFX-EkSptN7Ih-o(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/DetectorSession$2;->lambda$onRejected$0(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$audioSource:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDetected$1(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 0

    .line 522
    filled-new-array {p0, p1}, [Ljava/io/Closeable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$smbestEffortClose([Ljava/io/Closeable;)V

    return-void
.end method

.method public static synthetic lambda$onRejected$0(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 0

    .line 490
    filled-new-array {p0, p1}, [Ljava/io/Closeable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$smbestEffortClose([Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 7

    .line 514
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 517
    invoke-static {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v3, 0xb

    .line 516
    invoke-static {v1, v3, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 520
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$audioSource:Ljava/io/InputStream;

    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v3}, Lcom/android/server/voiceinteraction/DetectorSession$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7d0

    invoke-interface {v1, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionsForDataDelivery()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 551
    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/HotwordDetectedResult;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 568
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v1, "DetectorSession"

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bits from hotword trusted process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_0

    const-string p0, "DetectorSession"

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 571
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 572
    throw p1

    :catch_1
    move-exception p1

    const-string v1, "DetectorSession"

    const-string v2, "Ignoring #onDetected due to a IOException"

    .line 553
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 557
    :try_start_5
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v2, "Copy audio stream failure."

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 565
    :try_start_6
    monitor-exit v0

    return-void

    :catch_2
    move-exception p1

    .line 562
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 563
    throw p1

    :catch_3
    move-exception p1

    const-string v1, "DetectorSession"

    const-string v2, "Ignoring #onDetected due to a SecurityException"

    .line 530
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 533
    invoke-static {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v2, 0xd

    .line 532
    invoke-static {p1, v2, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 537
    :try_start_7
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v2, "Security exception occurs in #onDetected method"

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 546
    :try_start_8
    monitor-exit v0

    return-void

    :catch_4
    move-exception p1

    .line 543
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 544
    throw p1

    :catchall_0
    move-exception p0

    .line 581
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 7

    .line 482
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 485
    invoke-static {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v3, 0xc

    .line 484
    invoke-static {v1, v3, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 488
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$audioSource:Ljava/io/InputStream;

    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lcom/android/server/voiceinteraction/DetectorSession$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7d0

    invoke-interface {v1, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-interface {v1, p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    const-string v1, "DetectorSession"

    const-string v2, "Egressed \'hotword rejected result\' from hotword trusted process"

    .line 502
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_0

    const-string p0, "DetectorSession"

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 498
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 499
    throw p1

    :catchall_0
    move-exception p0

    .line 508
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
