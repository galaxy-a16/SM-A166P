.class public Lcom/android/server/am/BroadcastQueueImpl;
.super Lcom/android/server/am/BroadcastQueue;
.source "BroadcastQueueImpl.java"


# instance fields
.field public mBroadcastsScheduled:Z

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public final mDelayBehindServices:Z

.field public final mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

.field public final mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

.field public mLogLatencyMetrics:Z

.field public mNextToken:I

.field public final mParallelBroadcasts:Ljava/util/ArrayList;

.field public mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field public mPendingBroadcastRecvIndex:I

.field public mPendingBroadcastTimeoutMessage:Z

.field public final mSchedGroup:I

.field public final mSplitRefcounts:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic $r8$lambda$2EVjtWr7LjNlNk7HkovDZ6cphMw(Lcom/android/server/am/BroadcastQueueImpl;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForIdle$1()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MPLU4RZaAFz1WmJlvH_Gwvohu8Y(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$postActivityStartTokenRemoval$0(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIdMG70jm18PyEraCgXTGPxr1kI(Lcom/android/server/am/BroadcastQueueImpl;J)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForBarrier$2(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g8wRvTbSf-Kr4q20shDMJ0mqPXw(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForDispatched$3(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mprocessNextBroadcast(Lcom/android/server/am/BroadcastQueueImpl;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->processNextBroadcast(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;ZI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 138
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mSplitRefcounts:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mNextToken:I

    .line 144
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastsScheduled:Z

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLogLatencyMetrics:Z

    .line 207
    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    .line 208
    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 209
    iput-boolean p7, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDelayBehindServices:Z

    .line 210
    iput p8, p0, Lcom/android/server/am/BroadcastQueueImpl;->mSchedGroup:I

    .line 211
    new-instance p2, Lcom/android/server/am/BroadcastDispatcher;

    iget-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p2, p0, p4, p1, p3}, Lcom/android/server/am/BroadcastDispatcher;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;ZI)V
    .locals 9

    .line 199
    new-instance v5, Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-direct {v5, p1}, Lcom/android/server/am/BroadcastSkipPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    new-instance v6, Lcom/android/server/am/BroadcastHistory;

    invoke-direct {v6, p1, p4}, Lcom/android/server/am/BroadcastHistory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastConstants;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;ZI)V

    return-void
.end method

.method private synthetic lambda$postActivityStartTokenRemoval$0(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 603
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 604
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private synthetic lambda$waitForBarrier$2(J)Z
    .locals 0

    .line 1987
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->isBeyondBarrierLocked(J)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$waitForDispatched$3(Landroid/content/Intent;)Z
    .locals 0

    .line 1991
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->isDispatchedLocked(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$waitForIdle$1()Z
    .locals 0

    .line 1982
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked()Z

    move-result p0

    return p0
.end method

.method public static logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V
    .locals 12

    .line 1663
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1664
    :goto_0
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v2, v0, :cond_1

    return-void

    .line 1667
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 1669
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_2
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 1671
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_7

    .line 1675
    iget-wide v3, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v3, v6

    long-to-int v6, v3

    .line 1677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v3, v7

    long-to-int v7, v3

    .line 1678
    iget-wide v3, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iget-wide v8, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v3, v8

    long-to-int v8, v3

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v3, v9

    long-to-int v9, v3

    .line 1684
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1687
    iget v10, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v3, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_5

    .line 1689
    iget-object v1, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v1

    :cond_5
    move v11, v1

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BOOT_COMPLETED_BROADCAST_COMPLETION_LATENCY_REPORTED action:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dispatchLatency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " completeLatency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dispatchRealLatency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " completeRealLatency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " receiversSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " userId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " userType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    .line 1700
    iget-object v4, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    .line 1691
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1b5

    .line 1701
    iget v10, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIII)V

    :cond_7
    return-void
.end method

.method public static prepareReceiverIntent(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1064
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 1066
    invoke-virtual {v0, p1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 4

    .line 1875
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v0, :cond_0

    return-void

    .line 1879
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v0, 0x40

    .line 1881
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 1883
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v2

    .line 1884
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1882
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1887
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->notifyBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1888
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public backgroundServicesFinishedLocked(I)V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_0

    iget p1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string p1, "BroadcastQueue"

    const-string v1, "Resuming delayed broadcast"

    .line 786
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 787
    iput-object p1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 788
    iput p1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 789
    invoke-virtual {p0, p1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->processNextBroadcastLocked(ZZ)V

    :cond_0
    return-void
.end method

.method public final broadcastTimeoutLocked(Z)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1757
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcastTimeoutMessage:Z

    .line 1760
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "broadcastTimeoutLocked()"

    const-wide/16 v2, 0x40

    .line 1763
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1765
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1766
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v7

    if-eqz p1, :cond_4

    .line 1768
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    .line 1869
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1775
    :cond_2
    :try_start_1
    iget-boolean p1, v7, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_3

    .line 1869
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1782
    :cond_3
    :try_start_2
    iget-wide v8, v7, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v10, p1, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v8, v10

    cmp-long p1, v8, v4

    if-lez p1, :cond_4

    .line 1795
    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/BroadcastQueueImpl;->setBroadcastTimeoutLocked(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1869
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1800
    :cond_4
    :try_start_3
    iget p1, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v1, 0x4

    const/4 v6, 0x0

    if-ne p1, v1, :cond_6

    const-string p1, "BroadcastQueue"

    .line 1805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waited long enough for: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    .line 1806
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const-string v4, "(null)"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1805
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iput-object v6, v7, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1808
    iput v0, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1809
    invoke-virtual {p0, v0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->processNextBroadcastLocked(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1869
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1816
    :cond_6
    :try_start_4
    iget-object p1, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    .line 1818
    :cond_7
    iget-wide v8, v7, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v8, v4, v8

    const-string p1, "BroadcastQueue"

    .line 1819
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Timeout of broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " - curFilter="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " curReceiver="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", started "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms ago"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iput-wide v4, v7, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    if-nez v0, :cond_8

    .line 1824
    iget p1, v7, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/2addr p1, v1

    iput p1, v7, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 1829
    :cond_8
    iget p1, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez p1, :cond_9

    .line 1830
    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1831
    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iget v5, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v5, v1

    const/4 v1, 0x3

    aput v1, v4, v5

    goto :goto_1

    .line 1833
    :cond_9
    iget-object p1, v7, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    :goto_1
    const-string v1, "BroadcastQueue"

    .line 1835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver during timeout of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-virtual {p0, v7}, Lcom/android/server/am/BroadcastQueueImpl;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1837
    iget-object v1, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v1, v8, v9}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;J)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v1

    if-eqz p1, :cond_b

    .line 1839
    instance-of v4, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_b

    .line 1840
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .line 1841
    iget-object v4, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v4, :cond_a

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_a

    .line 1843
    iget-object v4, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnPidLockStarted()V

    .line 1844
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1845
    :try_start_5
    iget-object v5, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnPidLockEnded()V

    .line 1846
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object p1, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget p1, p1, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1848
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_a
    move-object p1, v6

    goto :goto_2

    .line 1851
    :cond_b
    iget-object p1, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 1854
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v4, v7, :cond_c

    .line 1855
    iput-object v6, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1859
    :cond_c
    iget v8, v7, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v9, v7, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v11, v7, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v12, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1861
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    .line 1865
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1869
    :cond_d
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1870
    throw p0

    :cond_e
    :goto_3
    return-void
.end method

.method public final cancelBroadcastTimeoutLocked()V
    .locals 2

    .line 1749
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 1751
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcastTimeoutMessage:Z

    :cond_0
    return-void
.end method

.method public cancelDeferrals()V
    .locals 2

    .line 2032
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2033
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->cancelDeferralsLocked()V

    .line 2034
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    .line 2035
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;I)Z
    .locals 4

    .line 1894
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 1895
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1899
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result p0

    or-int/2addr p0, v2

    return p0
.end method

.method public clearDelayedBroadcastLocked()V
    .locals 0

    .line 0
    return-void
.end method

.method public final createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, "in queue"

    goto :goto_0

    :cond_0
    const-string p2, "dispatched"

    :goto_0
    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 1934
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    const-string v0, ""

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    const/4 v1, 0x1

    aput-object p2, p0, v1

    .line 1935
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-nez p2, :cond_2

    const-string/jumbo p2, "process unknown"

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/4 v1, 0x2

    aput-object p2, p0, v1

    .line 1936
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 p1, 0x3

    aput-object v0, p0, p1

    const-string p1, "Broadcast %s from %s (%s) %s"

    .line 1932
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    .line 862
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v0, v14, v13}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkip(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 867
    iget-object v2, v14, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_0

    .line 868
    iget-object v2, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 870
    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 883
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const-string v11, "BroadcastQueue"

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 885
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 889
    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 890
    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 891
    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 892
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    .line 893
    iget-object v7, v14, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v7

    move-object/from16 v18, v3

    move/from16 v27, v5

    move/from16 v19, v6

    goto :goto_1

    :cond_2
    move/from16 v19, v3

    move/from16 v27, v4

    const/4 v7, 0x0

    const/16 v18, 0x0

    .line 895
    :goto_1
    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v7, :cond_3

    .line 897
    invoke-virtual {v7}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_2

    :cond_3
    const/16 v26, 0x0

    .line 899
    :goto_2
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v16

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "broadcast"

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v15, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    iget v7, v13, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    const/16 v24, 0x1

    iget-object v8, v14, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 900
    invoke-virtual {v8}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v25

    const/16 v28, 0x0

    move-object/from16 v17, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    .line 899
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is skipped in RestrictedPackage to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_4
    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 915
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v3, v0, p4

    return-void

    .line 919
    :cond_5
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v1, v0, p4

    const/4 v0, 0x3

    if-eqz p3, :cond_6

    .line 925
    iput-object v13, v14, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 926
    iget-object v5, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v14, v5, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 927
    iput v3, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 928
    iget-object v3, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_7

    .line 934
    iput-object v3, v14, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 935
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    iput v3, v14, Lcom/android/server/am/BroadcastRecord;->curAppLastProcessState:I

    .line 936
    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v3, v14}, Lcom/android/server/am/ProcessReceiverRecord;->addCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 937
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 938
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    goto :goto_3

    .line 941
    :cond_6
    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_7

    .line 942
    iget-object v5, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v5, v3, v0}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 949
    :cond_7
    :goto_3
    :try_start_0
    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8

    .line 950
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isInFullBackup()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    move v3, v4

    .line 951
    :goto_4
    iget-object v5, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_9

    .line 952
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v5

    if-eqz v5, :cond_9

    move v4, v1

    :cond_9
    if-nez v3, :cond_f

    if-eqz v4, :cond_a

    goto/16 :goto_6

    .line 962
    :cond_a
    iget v3, v14, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v3, :cond_b

    .line 963
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    sub-int/2addr v3, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 967
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v14, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 968
    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aput-wide v3, v1, p4

    .line 969
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v15, v1, v14}, Lcom/android/server/am/BroadcastQueueImpl;->maybeAddBackgroundStartPrivileges(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 970
    iget v1, v13, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v15, v1, v14, v3}, Lcom/android/server/am/BroadcastQueueImpl;->maybeScheduleTempAllowlistLocked(ILcom/android/server/am/BroadcastRecord;Landroid/app/BroadcastOptions;)V

    .line 971
    iget v1, v13, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v15, v14, v1}, Lcom/android/server/am/BroadcastQueueImpl;->maybeReportBroadcastDispatchedEventLocked(Lcom/android/server/am/BroadcastRecord;I)V

    .line 972
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 973
    invoke-static {v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->prepareReceiverIntent(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    iget v6, v14, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v14, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v14, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v9, v14, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v10, v14, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget-boolean v2, v14, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v12, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v12, v12, Lcom/android/server/am/ReceiverList;->uid:I

    iget v0, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    iget-object v15, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move/from16 v18, v1

    move/from16 v17, v2

    iget-wide v1, v14, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v19, v11

    move/from16 v20, v12

    :try_start_2
    iget-wide v11, v14, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v23, v1, v11

    iget-wide v11, v14, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v25, v11, v1

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v21

    .line 978
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c

    .line 979
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :cond_c
    const/4 v1, -0x1

    :goto_5
    move/from16 v27, v1

    move/from16 v12, v18

    move-object/from16 v1, p0

    move/from16 v11, v17

    move-object/from16 v2, p1

    move-object/from16 v29, v19

    move/from16 v16, v20

    move/from16 v13, v16

    move v14, v0

    move-wide/from16 v16, v23

    move-wide/from16 v18, v25

    move/from16 v20, v21

    move/from16 v21, v27

    .line 972
    :try_start_3
    invoke-virtual/range {v1 .. v21}, Lcom/android/server/am/BroadcastQueueImpl;->performReceiveLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;JJII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v1, p2

    .line 983
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v0, :cond_e

    move-object/from16 v2, p1

    :try_start_5
    iget-object v0, v2, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 984
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, v2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_d

    .line 986
    iget-object v0, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v3, p0

    :try_start_6
    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/BroadcastQueueImpl;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_7

    :cond_d
    move-object/from16 v3, p0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_8

    :cond_e
    move-object/from16 v3, p0

    move-object/from16 v2, p1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v29, v19

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v29, v11

    move-object v1, v13

    move-object v2, v14

    goto :goto_8

    :cond_f
    :goto_6
    move-object/from16 v29, v11

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    if-eqz p3, :cond_10

    .line 957
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :cond_10
    :goto_7
    if-eqz p3, :cond_12

    const/4 v0, 0x3

    .line 990
    iput v0, v2, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v29, v11

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    .line 993
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure sending broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v29

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    iget-object v0, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_11

    .line 996
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    if-eqz p3, :cond_11

    .line 998
    iget-object v0, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessReceiverRecord;->removeCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 1000
    iget-object v0, v3, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_11
    if-eqz p3, :cond_12

    const/4 v3, 0x0

    .line 1005
    iput-object v3, v2, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1006
    iget-object v0, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v3, v0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    :cond_12
    :goto_9
    return-void
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 2

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parallel; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 2040
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->describeStateLocked()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2045
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    .line 2046
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2050
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-wide v1, 0x20b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/BroadcastDispatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2053
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_1

    const-wide v1, 0x10b00000004L

    .line 2054
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2056
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2057
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Z)Z
    .locals 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p8

    .line 2064
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2065
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v6, p9

    goto/16 :goto_5

    .line 2068
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    const/4 v6, 0x0

    move v7, v6

    move v6, v3

    move/from16 v3, p9

    :goto_1
    const-string v8, "    "

    const-string v9, "]:"

    if-ltz v6, :cond_5

    .line 2069
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_2

    .line 2070
    iget-object v11, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    if-nez v7, :cond_4

    if-eqz v3, :cond_3

    .line 2075
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2079
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Active broadcasts ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    move v7, v3

    .line 2081
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Active Broadcast "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {v10, p2, v8, v4}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2085
    :cond_5
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, p2, v2, v7, v4}, Lcom/android/server/am/BroadcastDispatcher;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z

    if-eqz v2, :cond_7

    .line 2087
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v6, :cond_6

    iget-object v6, v6, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2088
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v3

    goto :goto_5

    .line 2089
    :cond_7
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Pending broadcast ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v3, :cond_8

    .line 2092
    invoke-virtual {v3, p2, v8, v4}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_4

    :cond_8
    const-string v3, "    (null)"

    .line 2094
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    move v6, v5

    :goto_5
    if-eqz p5, :cond_9

    .line 2100
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    new-instance v5, Landroid/util/IndentingPrintWriter;

    invoke-direct {v5, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_9
    if-eqz p6, :cond_a

    .line 2103
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object v0, v3

    move-object v1, p2

    move-object/from16 v2, p8

    move-object v3, v5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastHistory;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;ZZ)Z

    move-result v6

    :cond_a
    return v6
.end method

.method public final enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V
    .locals 3

    const-wide/16 v0, 0x40

    .line 335
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 337
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 336
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    .line 244
    iget-object v1, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastRecord;->applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V

    .line 246
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 252
    :goto_0
    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v4, :cond_3

    .line 254
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    .line 256
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_2

    move v4, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v4, :cond_7

    if-eqz v1, :cond_4

    .line 265
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    move-object v14, v1

    if-eqz v14, :cond_6

    .line 268
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v4, :cond_9

    .line 270
    :try_start_0
    iput-boolean v3, v14, Lcom/android/server/am/BroadcastRecord;->mIsReceiverAppRunning:Z

    .line 271
    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v11, v14, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iget v12, v14, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v13, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move/from16 v19, v11

    iget-wide v10, v14, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v16, v16, v10

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 277
    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5

    .line 278
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :cond_5
    const/4 v1, -0x1

    :goto_5
    move/from16 v23, v1

    move-object/from16 v1, p0

    move/from16 v24, v2

    move-object v2, v14

    const/4 v10, 0x0

    move/from16 v11, v19

    move-object/from16 v25, v14

    move/from16 v14, v24

    move-object v15, v0

    move-wide/from16 v18, v20

    move/from16 v20, v22

    move/from16 v21, v23

    .line 271
    :try_start_1
    invoke-virtual/range {v1 .. v21}, Lcom/android/server/am/BroadcastQueueImpl;->performReceiveLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;JJII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v25, v14

    .line 281
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p0

    iget-object v2, v4, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] sending broadcast result of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_6
    move-object v4, v15

    .line 288
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    goto :goto_7

    :cond_7
    move-object v4, v15

    if-eqz v1, :cond_8

    .line 293
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    if-nez v2, :cond_9

    .line 296
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    :cond_9
    :goto_7
    return-void
.end method

.method public enqueueDelayedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 0

    .line 0
    return-void
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 326
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastDispatcher;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 318
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    .line 621
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 622
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 624
    iget-wide v7, v1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v7, v5, v7

    const/4 v9, 0x0

    .line 625
    iput v9, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 626
    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 628
    iget-boolean v12, v1, Lcom/android/server/am/BroadcastRecord;->mWasReceiverAppStopped:Z

    if-eqz v12, :cond_0

    const/16 v26, 0x2

    goto :goto_0

    :cond_0
    move/from16 v26, v11

    :goto_0
    const/4 v15, -0x1

    if-ltz v10, :cond_4

    .line 632
    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_4

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_4

    .line 633
    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 634
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v13, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 635
    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v12, v15, :cond_1

    const/16 v12, 0x3e8

    :cond_1
    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 636
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 637
    instance-of v15, v10, Lcom/android/server/am/BroadcastFilter;

    if-eqz v15, :cond_2

    move/from16 v19, v11

    goto :goto_1

    :cond_2
    const/16 v19, 0x2

    .line 640
    :goto_1
    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->mIsReceiverAppRunning:Z

    if-eqz v15, :cond_3

    move/from16 v35, v11

    move/from16 v16, v12

    goto :goto_2

    :cond_3
    move/from16 v16, v12

    const/16 v35, 0x3

    .line 642
    :goto_2
    iget-wide v11, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v14, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v20, v11, v14

    iget-wide v14, v1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v22, v14, v11

    sub-long v24, v5, v14

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v11

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v28, v11

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastRecord;->calculateTypeForLogging()I

    move-result v29

    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v30

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 651
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v31

    .line 652
    invoke-static {v10}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v32

    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    move/from16 v33, v10

    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->curAppLastProcessState:I

    move/from16 v34, v10

    const/16 v10, 0x1db

    move v14, v10

    const/4 v10, -0x1

    move v15, v13

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v35

    .line 634
    invoke-static/range {v14 .. v34}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;IIIIII)V

    goto :goto_3

    :cond_4
    move v10, v15

    :goto_3
    const-string v11, "BroadcastQueue"

    if-nez v3, :cond_5

    .line 657
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "finishReceiver ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] called but state is IDLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_5
    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v12}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_7

    .line 660
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v13, v13, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    cmp-long v13, v7, v13

    if-lez v13, :cond_6

    .line 663
    invoke-virtual {v12, v1}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    goto :goto_4

    .line 666
    :cond_6
    invoke-virtual {v0, v12, v1}, Lcom/android/server/am/BroadcastQueueImpl;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 671
    :cond_7
    :goto_4
    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v12, :cond_8

    .line 672
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    aput-wide v5, v13, v12

    .line 677
    :cond_8
    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v5, :cond_9

    .line 681
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_9

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v12, v6, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-lez v6, :cond_9

    cmp-long v6, v7, v12

    if-lez v6, :cond_9

    .line 684
    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 689
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/BroadcastDispatcher;->startDeferring(I)V

    .line 705
    :cond_9
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 706
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_a

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessReceiverRecord;->hasCurReceiver(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 707
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessReceiverRecord;->removeCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 708
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 710
    :cond_a
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_b

    .line 711
    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v6, v5, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 713
    :cond_b
    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 714
    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 715
    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 716
    iput v10, v1, Lcom/android/server/am/BroadcastRecord;->curAppLastProcessState:I

    .line 717
    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    .line 718
    iput-boolean v9, v1, Lcom/android/server/am/BroadcastRecord;->mWasReceiverAppStopped:Z

    .line 719
    iput-object v6, v0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move/from16 v5, p2

    .line 721
    iput v5, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v5, p3

    .line 722
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v5, p4

    .line 723
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 726
    iget v5, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v5, :cond_c

    .line 727
    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    aput-wide v12, v7, v5

    :cond_c
    if-eqz v2, :cond_d

    .line 731
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v7, 0x8000000

    and-int/2addr v5, v7

    if-nez v5, :cond_d

    .line 732
    iput-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 735
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v2, v5, v1}, Lcom/android/server/am/ActivityManagerServiceExt;->addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastHistory;Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_5

    .line 739
    :cond_d
    iput-boolean v9, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    :goto_5
    if-eqz p6, :cond_10

    .line 744
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastQueue;->isDelayBehindServices()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    check-cast v2, Lcom/android/server/am/BroadcastQueueImpl;

    .line 745
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastQueueImpl;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    if-ne v2, v1, :cond_10

    .line 747
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 748
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v5, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 749
    instance-of v5, v2, Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_e

    check-cast v2, Landroid/content/pm/ActivityInfo;

    goto :goto_6

    :cond_e
    move-object v2, v6

    :goto_6
    if-eqz v4, :cond_f

    if-eqz v2, :cond_f

    .line 754
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v7, :cond_f

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 756
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 761
    :cond_f
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v4, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActiveServices;->hasBackgroundServicesLocked(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay finish: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 763
    iput v0, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    return v9

    .line 769
    :cond_10
    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    const/4 v14, 0x1

    if-eq v3, v14, :cond_12

    const/4 v1, 0x3

    if-ne v3, v1, :cond_11

    goto :goto_7

    :cond_11
    move v1, v9

    goto :goto_8

    :cond_12
    :goto_7
    move v1, v14

    :goto_8
    if-eqz v1, :cond_13

    .line 777
    invoke-virtual {v0, v9, v14}, Lcom/android/server/am/BroadcastQueueImpl;->processNextBroadcastLocked(ZZ)V

    :cond_13
    return v1
.end method

.method public finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 7

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getMatchingOrderedReceiver(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 612
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0
.end method

.method public getMatchingOrderedReceiver(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastRecord;
    .locals 5

    .line 569
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "getMatchingOrderedReceiver ["

    const-string v3, "BroadcastQueue"

    if-nez v0, :cond_0

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] no active broadcast"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 575
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eq v4, p1, :cond_1

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] active broadcast "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t match "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getPendingBroadcastLocked()Lcom/android/server/am/BroadcastRecord;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-object p0
.end method

.method public getPreferredSchedulingGroupLocked(Lcom/android/server/am/ProcessRecord;)I
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    .line 234
    iget p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mSchedGroup:I

    return p0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getPendingBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1

    .line 238
    iget p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mSchedGroup:I

    return p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final getTargetPackage(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 1

    .line 1648
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1651
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1652
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1653
    :cond_1
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1654
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public isBeyondBarrierLocked(J)Z
    .locals 4

    .line 1946
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1949
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1950
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1956
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getPendingBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1957
    iget-wide v1, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v1, v1, p1

    if-gtz v1, :cond_3

    return v0

    .line 1961
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->isBeyondBarrier(J)Z

    move-result p0

    return p0
.end method

.method public isDelayBehindServices()Z
    .locals 0

    .line 220
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDelayBehindServices:Z

    return p0
.end method

.method public isDispatchedLocked(Landroid/content/Intent;)Z
    .locals 3

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1967
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1968
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1973
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getPendingBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1974
    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 1978
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->isDispatched(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public isIdleLocked()Z
    .locals 1

    .line 1940
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPendingBroadcastPackageLocked(I)Z
    .locals 0

    .line 856
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 4

    .line 1906
    iget p0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 p0, p0, -0x1

    const/16 v0, 0x7549

    if-ltz p0, :cond_1

    .line 1907
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 1908
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1909
    instance-of v2, v1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_0

    .line 1910
    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    .line 1911
    iget v0, v1, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 1912
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1913
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v2, p1, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7548

    .line 1911
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1915
    :cond_0
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1916
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1917
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1918
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3, p1, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1916
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    if-gez p0, :cond_2

    .line 1921
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, -0x1

    .line 1924
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1925
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1926
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "NONE"

    filled-new-array {p0, v1, v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 1923
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public final maybeAddBackgroundStartPrivileges(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1729
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1732
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1735
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1737
    iget-object p0, p2, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final maybeReportBroadcastDispatchedEventLocked(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 10

    .line 1714
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1717
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getTargetPackage(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 1722
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 1723
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1724
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1725
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v9

    .line 1722
    invoke-virtual/range {v1 .. v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportBroadcastDispatched(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public maybeScheduleTempAllowlistLocked(ILcom/android/server/am/BroadcastRecord;Landroid/app/BroadcastOptions;)V
    .locals 10

    if-eqz p3, :cond_5

    .line 1013
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 1016
    :cond_0
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v0

    .line 1017
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v8

    .line 1018
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v6

    .line 1019
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object p3

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    move-wide v4, v0

    .line 1030
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast:"

    .line 1031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, ":"

    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1035
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1036
    :cond_2
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1037
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 1038
    :cond_3
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1039
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    const-string v1, ",reason:"

    .line 1041
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x4

    if-eq v8, p3, :cond_5

    .line 1051
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v9, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final nextSplitTokenLocked()I
    .locals 2

    .line 585
    iget v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mNextToken:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 589
    :goto_0
    iput v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mNextToken:I

    return v1
.end method

.method public onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 469
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->updateUidReadyForBootCompletedBroadcastLocked(I)V

    .line 471
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->skipCurrentOrPendingReceiverLocked(Lcom/android/server/am/ProcessRecord;)Z

    return-void
.end method

.method public onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->skipCurrentOrPendingReceiverLocked(Lcom/android/server/am/ProcessRecord;)Z

    return-void
.end method

.method public onApplicationTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->skipCurrentOrPendingReceiverLocked(Lcom/android/server/am/ProcessRecord;)Z

    return-void
.end method

.method public onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    return-void
.end method

.method public performReceiveLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;JJII)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    if-eqz p10, :cond_0

    .line 803
    iget-object v3, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 804
    invoke-static/range {p12 .. p12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v9, 0x1

    move/from16 v5, p11

    move-object/from16 v6, p4

    move/from16 v8, p13

    .line 803
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    :cond_0
    const/16 v16, 0x0

    const/4 v15, -0x1

    if-eqz v2, :cond_5

    .line 808
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v14, 0x1

    if-nez p8, :cond_1

    move v11, v14

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v11, v4

    .line 814
    :goto_0
    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 817
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v13

    if-eqz p10, :cond_2

    move/from16 v17, p13

    goto :goto_1

    :cond_2
    move/from16 v17, v15

    :goto_1
    if-eqz p10, :cond_3

    move-object/from16 v18, p14

    goto :goto_2

    :cond_3
    move-object/from16 v18, v16

    :goto_2
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v12, p11

    move/from16 v14, v17

    move v0, v15

    move-object/from16 v15, v18

    .line 814
    invoke-interface/range {v3 .. v15}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v11, p4

    goto :goto_3

    :catch_0
    move-exception v0

    .line 822
    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 823
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to schedule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " via "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    .line 825
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Can\'t deliver broadcast"

    const/16 v4, 0xd

    const/16 v5, 0x1a

    const/4 v6, 0x1

    .line 826
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 828
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 829
    throw v0

    :catchall_0
    move-exception v0

    .line 828
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 833
    :cond_4
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "app.thread must not be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v4, p3

    move-object/from16 v11, p4

    move v0, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    .line 836
    invoke-interface/range {v3 .. v10}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    :goto_3
    if-nez p8, :cond_9

    const/16 v1, 0x1db

    const/16 v3, 0x3e8

    move/from16 v4, p12

    move/from16 v5, p13

    if-ne v4, v0, :cond_6

    move v4, v3

    :cond_6
    if-ne v5, v0, :cond_7

    move v5, v3

    .line 843
    :cond_7
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_8

    .line 848
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v15, v2

    goto :goto_4

    :cond_8
    move-object/from16 v15, v16

    .line 849
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastRecord;->calculateTypeForLogging()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v18

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v19

    iget v2, v2, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    move/from16 v21, v2

    move v2, v1

    move v3, v4

    move v4, v5

    move-object v5, v0

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    move-object/from16 v16, p14

    move/from16 v20, p19

    move/from16 v22, p20

    .line 840
    invoke-static/range {v2 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;IIIIII)V

    :cond_9
    return-void
.end method

.method public final postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 5

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 601
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    iget-wide p1, p2, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    add-long/2addr p1, v3

    invoke-virtual {v1, v2, v0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 379
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 383
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isInFullBackup()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    return-void

    .line 388
    :cond_0
    iput-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 389
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iput v4, v1, Lcom/android/server/am/BroadcastRecord;->curAppLastProcessState:I

    .line 390
    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 391
    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessReceiverRecord;->addCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 392
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 394
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x28

    const/4 v14, 0x0

    if-ge v4, v5, :cond_1

    .line 396
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v14}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 401
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 402
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 405
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/BroadcastQueueImpl;->maybeReportBroadcastDispatchedEventLocked(Lcom/android/server/am/BroadcastRecord;I)V

    .line 406
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 409
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 411
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 413
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v4, v4, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 415
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v6

    .line 413
    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;IJ)V

    .line 425
    :cond_2
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    aput-wide v7, v4, v6

    .line 428
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 431
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    .line 432
    invoke-static {v0, v4}, Lcom/android/server/am/BroadcastQueueImpl;->prepareReceiverIntent(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    iget v7, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v10, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    const/4 v11, 0x0

    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 435
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_3

    iget v0, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 436
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v16

    .line 437
    iget-boolean v13, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v13, :cond_4

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v13

    goto :goto_1

    :cond_4
    move-object/from16 v17, v14

    :goto_1
    move v13, v0

    move/from16 v14, v16

    move-object v2, v15

    move-object/from16 v15, v17

    .line 431
    :try_start_1
    invoke-interface/range {v3 .. v15}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 453
    :cond_5
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "app gets killed during broadcasting"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v15

    :goto_2
    const/4 v3, 0x0

    .line 445
    iput-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, -0x1

    .line 446
    iput v3, v1, Lcom/android/server/am/BroadcastRecord;->curAppLastProcessState:I

    .line 447
    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessReceiverRecord;->removeCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 449
    throw v0

    .line 381
    :cond_6
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final processNextBroadcast(Z)V
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 1058
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BroadcastQueueImpl;->processNextBroadcastLocked(ZZ)V

    .line 1059
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public processNextBroadcastLocked(ZZ)V
    .locals 38

    move-object/from16 v15, p0

    .line 1079
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    const/4 v14, 0x0

    if-eqz p1, :cond_0

    .line 1082
    iput-boolean v14, v15, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastsScheduled:Z

    .line 1086
    :cond_0
    :goto_0
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v12, 0x40

    const/4 v11, 0x1

    if-lez v0, :cond_3

    .line 1087
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1088
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 1090
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1091
    iput-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->mIsReceiverAppRunning:Z

    .line 1093
    invoke-static {v12, v13}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1095
    invoke-virtual {v15, v0, v14}, Lcom/android/server/am/BroadcastQueueImpl;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 1096
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1094
    invoke-static {v12, v13, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1098
    invoke-virtual {v15, v0, v11}, Lcom/android/server/am/BroadcastQueueImpl;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1097
    invoke-static {v12, v13, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1102
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v14

    :goto_1
    if-ge v2, v1, :cond_2

    .line 1106
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1110
    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v15, v0, v3, v14, v2}, Lcom/android/server/am/BroadcastQueueImpl;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1113
    :cond_2
    invoke-virtual {v15, v0}, Lcom/android/server/am/BroadcastQueueImpl;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_0

    .line 1123
    :cond_3
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v10, 0x0

    if-eqz v0, :cond_a

    .line 1129
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_6

    .line 1130
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 1131
    :try_start_0
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v2, v15, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 1132
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 1131
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1133
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v14

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v11

    .line 1134
    :goto_3
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1136
    :cond_6
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v0

    iget-object v1, v15, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8

    .line 1138
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v0, v14

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v11

    :goto_5
    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "BroadcastQueue"

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending app  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died before responding to broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iput v14, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1148
    iget v1, v15, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1149
    iput-object v10, v15, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    :cond_a
    move v0, v14

    .line 1156
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1157
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/BroadcastDispatcher;->getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;

    move-result-object v9

    if-nez v9, :cond_d

    .line 1161
    iget-object v1, v15, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1, v14}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    .line 1162
    iget-object v1, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1163
    :try_start_1
    iget-object v1, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1164
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_b

    if-nez p2, :cond_b

    .line 1169
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 1174
    :cond_b
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-boolean v0, v0, Lcom/android/server/am/UserController;->mBootCompleted:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v15, Lcom/android/server/am/BroadcastQueueImpl;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_c

    .line 1175
    iput-boolean v14, v15, Lcom/android/server/am/BroadcastQueueImpl;->mLogLatencyMetrics:Z

    :cond_c
    return-void

    :catchall_1
    move-exception v0

    .line 1164
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1190
    :cond_d
    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_7

    :cond_e
    move v3, v14

    .line 1191
    :goto_7
    iget-object v4, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const-wide/16 v22, 0x0

    if-eqz v4, :cond_f

    iget-boolean v4, v9, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v4, :cond_f

    iget-wide v4, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    cmp-long v6, v4, v22

    if-lez v6, :cond_f

    if-lez v3, :cond_f

    .line 1192
    iget-object v6, v15, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v6, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    const-wide/16 v16, 0x2

    mul-long v6, v6, v16

    int-to-long v12, v3

    mul-long/2addr v6, v12

    add-long/2addr v4, v6

    cmp-long v4, v1, v4

    if-lez v4, :cond_f

    const-string v4, "BroadcastQueue"

    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hung broadcast ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] discarded after timeout failure: now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " dispatchTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " startTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " numReceivers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nextReceiver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-virtual {v15, v14}, Lcom/android/server/am/BroadcastQueueImpl;->broadcastTimeoutLocked(Z)V

    .line 1205
    iput v14, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    move v4, v11

    goto :goto_8

    :cond_f
    move v4, v14

    .line 1209
    :goto_8
    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v5, :cond_10

    return-void

    .line 1218
    :cond_10
    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v13, 0x2

    if-eqz v5, :cond_16

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v6, v3, :cond_16

    iget-boolean v7, v9, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v7, :cond_16

    if-eqz v4, :cond_11

    goto :goto_b

    .line 1316
    :cond_11
    iget-boolean v1, v9, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    if-nez v1, :cond_15

    .line 1317
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v1

    .line 1318
    iget-object v2, v15, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferringLocked(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1327
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v2, v0, 0x1

    if-ne v2, v3, :cond_12

    .line 1333
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v9}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_a

    .line 1340
    :cond_12
    invoke-virtual {v9, v1, v0}, Lcom/android/server/am/BroadcastRecord;->splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 1353
    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v2, :cond_14

    .line 1354
    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    if-nez v2, :cond_13

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueImpl;->nextSplitTokenLocked()I

    move-result v2

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 1358
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueueImpl;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_9

    .line 1366
    :cond_13
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueueImpl;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1373
    iget-object v4, v15, Lcom/android/server/am/BroadcastQueueImpl;->mSplitRefcounts:Landroid/util/SparseIntArray;

    add-int/2addr v3, v11

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_14
    :goto_9
    move-object v9, v0

    .line 1381
    :goto_a
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v1, v9}, Lcom/android/server/am/BroadcastDispatcher;->addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V

    move-object v2, v10

    move v0, v11

    move/from16 v24, v13

    move-object v8, v15

    const-wide/16 v32, 0x40

    goto/16 :goto_13

    :cond_15
    move-object v2, v10

    move/from16 v24, v13

    move-object v8, v15

    const-wide/16 v32, 0x40

    move-object v10, v9

    goto/16 :goto_13

    .line 1221
    :cond_16
    :goto_b
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_1c

    .line 1226
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    if-eqz v0, :cond_18

    .line 1227
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueueImpl;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sub-int/2addr v0, v11

    if-nez v0, :cond_17

    .line 1235
    iget-object v0, v15, Lcom/android/server/am/BroadcastQueueImpl;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v3, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_c

    .line 1246
    :cond_17
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueueImpl;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v4, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v14

    goto :goto_d

    :cond_18
    :goto_c
    move v0, v11

    :goto_d
    if-eqz v0, :cond_1c

    .line 1250
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_19

    .line 1251
    iget-object v3, v15, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v3, v0, v13}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 1260
    :cond_19
    :try_start_3
    iget-wide v3, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    cmp-long v0, v3, v22

    if-nez v0, :cond_1a

    .line 1263
    iput-wide v1, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1265
    :cond_1a
    iput-boolean v11, v9, Lcom/android/server/am/BroadcastRecord;->mIsReceiverAppRunning:Z

    .line 1266
    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    new-instance v5, Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v9, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v9, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v11, v9, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    iget v13, v9, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v14, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move/from16 v24, v13

    iget-wide v12, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    move-wide/from16 v25, v1

    iget-wide v0, v9, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v28, v12, v0

    sub-long v25, v25, v12

    const/4 v0, 0x0

    .line 1272
    iget-object v1, v9, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1b

    .line 1273
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_e

    :cond_1b
    const/4 v1, -0x1

    :goto_e
    move/from16 v30, v1

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v13, v9

    const/4 v9, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v32, 0x40

    move/from16 v12, v24

    move-object/from16 p1, v13

    const/16 v24, 0x2

    move v13, v14

    move-object/from16 v15, v20

    move-wide/from16 v16, v28

    move-wide/from16 v18, v25

    move/from16 v20, v0

    move/from16 v21, v30

    .line 1266
    :try_start_6
    invoke-virtual/range {v1 .. v21}, Lcom/android/server/am/BroadcastQueueImpl;->performReceiveLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;JJII)V

    .line 1275
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1278
    :try_start_7
    iput-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v8, p0

    goto :goto_12

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    goto :goto_11

    :catch_2
    move-exception v0

    move-object v1, v9

    const/4 v2, 0x0

    goto :goto_f

    :catch_3
    move-exception v0

    move-object v1, v9

    move-object v2, v10

    :goto_f
    const/16 v24, 0x2

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v1, v9

    move-object v2, v10

    move/from16 v24, v13

    :goto_10
    const-wide/16 v32, 0x40

    .line 1280
    :goto_11
    iput-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    const-string v3, "BroadcastQueue"

    .line 1281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p0

    iget-object v5, v8, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] sending broadcast result of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_1c
    move-object v1, v9

    move-object v2, v10

    move/from16 v24, v13

    move-object v8, v15

    const-wide/16 v32, 0x40

    .line 1289
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueImpl;->cancelBroadcastTimeoutLocked()V

    .line 1297
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerServiceExt;->updateBrMap(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1300
    invoke-virtual {v8, v1}, Lcom/android/server/am/BroadcastQueueImpl;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1301
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1302
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v0, v3

    if-nez v0, :cond_1d

    .line 1304
    iget-object v9, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iget v13, v1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iget-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v5, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long v14, v3, v5

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1307
    :cond_1d
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    move-object v10, v2

    const/4 v0, 0x1

    :goto_13
    if-eqz v10, :cond_34

    .line 1390
    iget v1, v10, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v10, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1395
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aput-wide v3, v0, v1

    if-nez v1, :cond_1f

    .line 1397
    iput-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 1399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1401
    iget-boolean v0, v8, Lcom/android/server/am/BroadcastQueueImpl;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_1e

    .line 1402
    iget-wide v5, v10, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v3, v5

    const/16 v0, 0x8e

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 1407
    :cond_1e
    invoke-static/range {v32 .. v33}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v9, 0x0

    .line 1409
    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/BroadcastQueueImpl;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1410
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    move-wide/from16 v4, v32

    .line 1408
    invoke-static {v4, v5, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v3, 0x1

    .line 1412
    invoke-virtual {v8, v10, v3}, Lcom/android/server/am/BroadcastQueueImpl;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1413
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 1411
    invoke-static {v4, v5, v0, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_14

    :cond_1f
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 1418
    :goto_14
    iget-boolean v0, v8, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_20

    .line 1419
    iget-wide v4, v10, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v0, v8, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v4, v6

    .line 1423
    invoke-virtual {v8, v4, v5}, Lcom/android/server/am/BroadcastQueueImpl;->setBroadcastTimeoutLocked(J)V

    .line 1426
    :cond_20
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1427
    iget-object v4, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1429
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_25

    .line 1432
    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 1437
    iput-boolean v3, v10, Lcom/android/server/am/BroadcastRecord;->mIsReceiverAppRunning:Z

    .line 1438
    iget-boolean v0, v10, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v8, v10, v4, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 1439
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_21

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_22

    :cond_21
    iget-boolean v0, v10, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_23

    .line 1446
    :cond_22
    iput v9, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    goto :goto_15

    .line 1449
    :cond_23
    iget-object v0, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v0, :cond_24

    .line 1450
    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8, v0, v10}, Lcom/android/server/am/BroadcastQueueImpl;->maybeAddBackgroundStartPrivileges(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    :cond_24
    :goto_15
    return-void

    .line 1461
    :cond_25
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1463
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1468
    iget-object v12, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1469
    iget-object v6, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v12, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 1472
    iget-object v11, v8, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v11, v10, v4}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkip(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_26

    .line 1477
    iget-object v13, v10, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    if-eqz v13, :cond_26

    .line 1478
    iget-object v13, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_26

    .line 1480
    iget-object v14, v10, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v13}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    if-nez v13, :cond_27

    move v11, v3

    goto :goto_16

    :cond_26
    move-object v13, v2

    :cond_27
    :goto_16
    if-nez v11, :cond_2c

    .line 1494
    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v14, :cond_2c

    .line 1495
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v14

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v9, v10, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v14, v15, v3, v9}, Lcom/android/server/am/MARsPolicyManager;->onSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1497
    iget-object v3, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1501
    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_28

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_28

    .line 1502
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1503
    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v14, v9, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1504
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    .line 1505
    iget-object v15, v10, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v15

    move-object/from16 v27, v3

    move/from16 v36, v9

    move/from16 v28, v14

    goto :goto_17

    :cond_28
    move-object v15, v2

    move-object/from16 v27, v15

    move/from16 v28, v3

    const/16 v36, 0x0

    :goto_17
    if-eqz v6, :cond_29

    .line 1509
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v14

    move/from16 v37, v14

    goto :goto_18

    :cond_29
    const/16 v37, 0x0

    :goto_18
    if-eqz v15, :cond_2a

    .line 1513
    invoke-virtual {v15}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_2a
    move-object v3, v2

    .line 1516
    :goto_19
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v25

    const-string v29, "broadcast"

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v14, v8, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    iget-object v15, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1517
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    const/16 v33, 0x0

    iget-object v15, v10, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 1518
    invoke-virtual {v15}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v34

    move-object/from16 v26, v5

    move-object/from16 v30, v9

    move-object/from16 v31, v14

    move-object/from16 v35, v3

    .line 1516
    invoke-virtual/range {v25 .. v37}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZLjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_2b

    const-string v9, "BroadcastQueue"

    .line 1522
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "intent:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is skipped in RestrictedPackage to "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1522
    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v3

    const/4 v11, 0x1

    goto :goto_1a

    :cond_2b
    move-object/from16 v19, v3

    goto :goto_1a

    :cond_2c
    move-object/from16 v19, v2

    :goto_1a
    if-eqz v11, :cond_2d

    .line 1536
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v24, v0, v1

    .line 1537
    iput-object v2, v10, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    const/4 v1, 0x0

    .line 1538
    iput v1, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1539
    iget v0, v10, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v10, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 1540
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    return-void

    :cond_2d
    const/4 v2, 0x1

    .line 1543
    iget v3, v10, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    add-int/2addr v3, v2

    iput v3, v10, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 1545
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v2, v3, v1

    .line 1546
    iput v2, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1547
    iput-object v5, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1548
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v2, v10, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 1549
    iput-object v13, v10, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_2e

    .line 1556
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v2

    cmp-long v2, v2, v22

    if-lez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v2, 0x0

    .line 1557
    :goto_1b
    invoke-virtual {v8, v7, v10, v0}, Lcom/android/server/am/BroadcastQueueImpl;->maybeScheduleTempAllowlistLocked(ILcom/android/server/am/BroadcastRecord;Landroid/app/BroadcastOptions;)V

    .line 1560
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_2f

    .line 1561
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1562
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1563
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v5, v10, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v9, 0x1f

    .line 1562
    invoke-virtual {v0, v3, v5, v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 1568
    :cond_2f
    :try_start_8
    iget-object v0, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1569
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v5, v10, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v9, 0x0

    .line 1568
    invoke-virtual {v0, v3, v9, v5}, Landroid/content/pm/PackageManagerInternal;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1c

    :catch_5
    move-exception v0

    const-string v3, "BroadcastQueue"

    .line 1571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed trying to unstop package "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1572
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1571
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    if-eqz v6, :cond_30

    .line 1576
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1578
    :try_start_9
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v13, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6, v3, v13, v14, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1580
    invoke-virtual {v8, v6, v10}, Lcom/android/server/am/BroadcastQueueImpl;->maybeAddBackgroundStartPrivileges(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    const/4 v3, 0x1

    .line 1581
    iput-boolean v3, v10, Lcom/android/server/am/BroadcastRecord;->mIsReceiverAppRunning:Z

    .line 1582
    invoke-virtual {v8, v10, v6}, Lcom/android/server/am/BroadcastQueueImpl;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "BroadcastQueue"

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sending broadcast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1598
    invoke-virtual {v8, v10}, Lcom/android/server/am/BroadcastQueueImpl;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1599
    iget v3, v10, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v10, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v10, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    const/4 v1, 0x0

    .line 1603
    iput v1, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    return-void

    :catch_7
    move-exception v0

    .line 1585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to schedule "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " via "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BroadcastQueue"

    .line 1587
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Can\'t deliver broadcast"

    const/16 v3, 0xd

    const/16 v5, 0x1a

    const/4 v9, 0x1

    .line 1588
    invoke-virtual {v6, v0, v3, v5, v9}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_1d

    :cond_30
    const/4 v9, 0x1

    .line 1612
    :goto_1d
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_31

    move v14, v9

    goto :goto_1e

    :cond_31
    const/4 v14, 0x0

    :goto_1e
    iput-boolean v14, v10, Lcom/android/server/am/BroadcastRecord;->mWasReceiverAppStopped:Z

    .line 1618
    iget-object v11, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1620
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    new-instance v5, Lcom/android/server/am/HostingRecord;

    const-string v15, "broadcast"

    iget-object v6, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    iget-object v14, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1622
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/android/server/am/BroadcastRecord;->getHostingRecordTriggerType()Ljava/lang/String;

    move-result-object v18

    move-object v14, v5

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v19}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v6, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1624
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v14, 0x2000000

    and-int/2addr v6, v14

    if-eqz v6, :cond_32

    move/from16 v18, v9

    goto :goto_1f

    :cond_32
    const/16 v18, 0x0

    :goto_1f
    const/16 v19, 0x0

    move v14, v0

    move v15, v3

    move-object/from16 v16, v5

    move/from16 v17, v2

    .line 1618
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/16 v2, 0x14

    .line 1625
    iput v2, v10, Lcom/android/server/am/BroadcastRecord;->curAppLastProcessState:I

    if-nez v0, :cond_33

    const-string v0, "BroadcastQueue"

    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": process is bad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    invoke-virtual {v8, v10}, Lcom/android/server/am/BroadcastQueueImpl;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1634
    iget v3, v10, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v10, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v10, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    const/4 v1, 0x0

    .line 1637
    iput v1, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    return-void

    .line 1641
    :cond_33
    invoke-virtual {v8, v0, v10}, Lcom/android/server/am/BroadcastQueueImpl;->maybeAddBackgroundStartPrivileges(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1642
    iput-object v10, v8, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1643
    iput v1, v8, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcastRecvIndex:I

    return-void

    :cond_34
    move-object v10, v2

    move-object v15, v8

    move-wide/from16 v12, v32

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_6
.end method

.method public final replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .locals 3

    .line 360
    iget-object p0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 361
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_1

    .line 362
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 363
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p1, p3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 355
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-string v0, "ORDERED"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mParallelBroadcasts:Ljava/util/ArrayList;

    const-string v1, "PARALLEL"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueueImpl;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0
.end method

.method public scheduleBroadcastsLocked()V
    .locals 2

    .line 561
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_0

    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastsScheduled:Z

    return-void
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 9

    .line 497
    iget-object v7, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 498
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 499
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string v1, "BroadcastQueue"

    if-eq v0, p1, :cond_0

    .line 500
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App mismatch when sending pending broadcast to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", intended target is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    const/4 v0, 0x0

    .line 505
    :try_start_0
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 506
    iput-boolean v8, v7, Lcom/android/server/am/BroadcastRecord;->mIsReceiverAppRunning:Z

    .line 507
    invoke-virtual {p0, v7, p1}, Lcom/android/server/am/BroadcastQueueImpl;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in new application when starting receiver "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 511
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    invoke-virtual {p0, v7}, Lcom/android/server/am/BroadcastQueueImpl;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 513
    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v7, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 515
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    .line 517
    iput v8, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 518
    new-instance p0, Lcom/android/server/am/BroadcastDeliveryFailedException;

    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDeliveryFailedException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :cond_1
    :goto_0
    return v8
.end method

.method public final setBroadcastTimeoutLocked(J)V
    .locals 2

    .line 1741
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1743
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    const/4 p1, 0x1

    .line 1744
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcastTimeoutMessage:Z

    :cond_0
    return-void
.end method

.method public skipCurrentOrPendingReceiverLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 535
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_1

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 7

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 551
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 553
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->start()V

    .line 216
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mHandler:Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateUidReadyForBootCompletedBroadcastLocked(I)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastDispatcher;->updateUidReadyForBootCompletedBroadcastLocked(I)V

    .line 464
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleBroadcastsLocked()V

    return-void
.end method

.method public final waitFor(Ljava/util/function/BooleanSupplier;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v0, 0x0

    .line 1997
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1998
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1999
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Queue ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] reached "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " condition"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BroadcastQueue"

    .line 2001
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 2003
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2006
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2008
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queue ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " condition; state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->describeStateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    .line 2016
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 2018
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    :cond_2
    move-wide v0, v2

    .line 2024
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->cancelDeferrals()V

    const-wide/16 v2, 0x64

    .line 2025
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 2008
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public waitForBarrier(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1986
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1987
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BroadcastQueueImpl;J)V

    const-string v0, "barrier"

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public waitForDispatched(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 1

    .line 1991
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;)V

    const-string p1, "dispatch"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public waitForIdle(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1982
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    const-string v1, "idle"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
