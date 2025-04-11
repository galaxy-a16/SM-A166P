.class Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "FlexibilityController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 553
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    const-string v3, "*job.flexibility_check*"

    const-string v4, "Flexible Constraint Check"

    const/4 v5, 0x1

    .line 554
    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmMinTimeBetweenFlexibilityAlarmsMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public isForUser(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 0

    .line 561
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .locals 0

    .line 551
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->isForUser(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result p0

    return p0
.end method

.method public processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 10

    .line 607
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 609
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 610
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 611
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    const/high16 v6, 0x200000

    .line 612
    invoke-virtual {v5, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v7

    .line 614
    iget-object v8, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v8, v8, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    const/4 v9, -0x1

    invoke-virtual {v8, v5, v9, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->adjustJobsRequiredConstraints(Lcom/android/server/job/controllers/JobStatus;IJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 615
    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 617
    :cond_0
    invoke-virtual {v5, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    if-eq v7, v6, :cond_1

    .line 618
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 621
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 622
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 12

    .line 565
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v8

    .line 567
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v1, p1, v8, v9}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;J)J

    move-result-wide v10

    .line 568
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    move-object v3, p1

    move-wide v4, v8

    move-wide v6, v10

    .line 569
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/FlexibilityController;->getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide v1

    .line 571
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "JobScheduler.Flex"

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduleDropNumConstraintsAlarm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " numRequired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " numSatisfied: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget v5, v5, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 575
    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " curTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " earliest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " latest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " nextTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 572
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sub-long v3, v10, p2

    .line 581
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v5}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 582
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "JobScheduler.Flex"

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deadline proximity met: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 586
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v1

    neg-int v1, v1

    .line 585
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->adjustJobsRequiredConstraints(Lcom/android/server/job/controllers/JobStatus;IJ)Z

    .line 587
    monitor-exit v0

    return-void

    :cond_2
    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, v1, p2

    if-nez p2, :cond_3

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 592
    monitor-exit v0

    return-void

    :cond_3
    sub-long p2, v10, v1

    .line 594
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v3}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide v3

    cmp-long p2, p2, v3

    if-gtz p2, :cond_5

    .line 595
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "JobScheduler.Flex"

    .line 596
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last alarm set: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_4
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p2

    sub-long/2addr v10, p2

    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 599
    monitor-exit v0

    return-void

    .line 601
    :cond_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 602
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
