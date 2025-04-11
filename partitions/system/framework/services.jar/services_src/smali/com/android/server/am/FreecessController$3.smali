.class public Lcom/android/server/am/FreecessController$3;
.super Landroid/app/IUidObserver$Stub;
.source "FreecessController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;)V
    .locals 0

    .line 3387
    iput-object p1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 3

    .line 3426
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmIsScreenOnFreecessEnabled(Lcom/android/server/am/FreecessController;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmSkipTriggerLcdOnFreeze(Lcom/android/server/am/FreecessController;)Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x186a0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 3428
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3429
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFreecessManagedPackages(Lcom/android/server/am/FreecessController;)Lcom/android/server/am/FreecessPkgMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/FreecessPkgStatus;

    if-nez p1, :cond_1

    .line 3430
    monitor-exit v0

    return-void

    .line 3433
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v1, :cond_2

    .line 3434
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v2, "CalmMode for restart"

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    .line 3435
    monitor-exit v0

    return-void

    .line 3438
    :cond_2
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-static {p0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmScreenOn(Lcom/android/server/am/FreecessController;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    if-eqz p0, :cond_5

    .line 3439
    :cond_3
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_4

    .line 3440
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUidActive...uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", freezedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    :cond_4
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/FreecessHandler;->sendResetStateMsg(Ljava/lang/String;I)V

    .line 3446
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 3

    .line 3408
    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p2

    .line 3409
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3410
    monitor-exit p2

    return-void

    .line 3411
    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p2

    return-void

    .line 3413
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmScreenOn(Lcom/android/server/am/FreecessController;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 3414
    iput p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3415
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3416
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3417
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3418
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3419
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3421
    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUidIdle(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidProcAdjChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 3392
    iget-object p0, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    const-string p2, "UID_TOP"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
