.class public final Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# instance fields
.field public mAppliedLocked:Z

.field public mEarlyDisplayEnabled:Z

.field public mEarlyDisplayReadyLocked:Z

.field public mEarlyLightSensorEnabled:Z

.field public final mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

.field public mEarlyLightSensorReadyLocked:Z

.field public final mEarlyWakeUpLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mHoldingSuspendBlocker:Z

.field public mIsRequestInvalidated:Z

.field public mLastEnableRequestedTime:J

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEarlyWakeUpLock(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmEarlyDisplayReadyLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEarlyLightSensorReadyLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSuspendBlockerLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 2

    .line 5535
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5518
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5530
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 5531
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 5604
    new-instance v0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    .line 5536
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x4

    invoke-direct {v0, p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5537
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5539
    new-instance p1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final clearEnableRequestTimeout()V
    .locals 2

    .line 5720
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ew] clearEnableRequestTimeout -"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 5757
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5758
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "[ew] EarlyWakeUpManager:"

    .line 5759
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAppliedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEarlyLightSensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEarlyDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastEnableRequestedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEarlyLightSensorReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEarlyDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5768
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public invalidateCurrentRequest()V
    .locals 1

    const/4 v0, 0x1

    .line 5753
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mIsRequestInvalidated:Z

    return-void
.end method

.method public final isCandidateForAutoBrightness()Z
    .locals 1

    .line 5701
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmUseAutoBrightness(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmProximity(Lcom/android/server/display/DisplayPowerController;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEarlyLightSensorEnabled()Z
    .locals 0

    .line 5601
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    return p0
.end method

.method public final isLastRequestExpired(J)Z
    .locals 4

    .line 5712
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetEnableRequestTimeout()V
    .locals 6

    .line 5726
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ew] resetEnableRequestTimeout +"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5728
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5729
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final setEarlyDisplayEnabledLocked(ZI)V
    .locals 1

    .line 5640
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5645
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->supportEarlyDisplayEnableLocked(I)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 5650
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    const/4 p2, 0x0

    .line 5657
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 5659
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setEarlyLightSensorEnabledLocked(Z)V
    .locals 1

    .line 5617
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->supportEarlyLightSensorEnableLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5622
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->isCandidateForAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5631
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    if-ne p1, v0, :cond_2

    return-void

    .line 5634
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    const/4 v0, 0x0

    .line 5635
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 5636
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/AutomaticBrightnessController;->setEarlyLightSensorEnabled(ZLjava/lang/Runnable;)Z

    return-void
.end method

.method public final supportEarlyDisplayEnableLocked(I)Z
    .locals 0

    .line 5689
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final supportEarlyLightSensorEnableLocked()Z
    .locals 0

    .line 5679
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public update(ZI)V
    .locals 6

    .line 5543
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5545
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p2, v3, :cond_0

    .line 5555
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mIsRequestInvalidated:Z

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_4

    .line 5559
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->isLastRequestExpired(J)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-nez p1, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    .line 5565
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    .line 5566
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->resetEnableRequestTimeout()V

    :cond_3
    move p1, v4

    goto :goto_2

    :cond_4
    move p1, v5

    .line 5571
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    if-eq p1, v1, :cond_7

    .line 5572
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ew] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 5576
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(Z)V

    .line 5579
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(ZI)V

    goto :goto_3

    .line 5582
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(Z)V

    .line 5585
    invoke-virtual {p0, v5, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(ZI)V

    :goto_3
    if-nez p1, :cond_6

    .line 5589
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->clearEnableRequestTimeout()V

    .line 5592
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    .line 5595
    :cond_7
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mIsRequestInvalidated:Z

    .line 5596
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    .line 5597
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateSuspendBlockerLocked()V
    .locals 3

    .line 5734
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 5739
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    if-nez v0, :cond_3

    .line 5740
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ew] acquireSuspendBlocker: +"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmCallbacks(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmSuspendBlockerIdEarlyWakeup(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 5742
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    goto :goto_2

    .line 5744
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    if-eqz v0, :cond_3

    .line 5745
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ew] releaseSuspendBlocker: -"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    .line 5748
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmCallbacks(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmSuspendBlockerIdEarlyWakeup(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
