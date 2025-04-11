.class public Lcom/android/server/am/BroadcastDispatcher;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# instance fields
.field public mAlarm:Lcom/android/server/AlarmManagerInternal;

.field public final mAlarmDeferrals:Ljava/util/ArrayList;

.field public final mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

.field public final mAlarmQueue:Ljava/util/ArrayList;

.field public final mAlarmUids:Landroid/util/SparseIntArray;

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

.field public final mDeferredBroadcasts:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mOrderedBroadcasts:Ljava/util/ArrayList;

.field public final mQueue:Lcom/android/server/am/BroadcastQueueImpl;

.field public mRecheckScheduled:Z

.field public final mScheduleRunnable:Ljava/lang/Runnable;

.field public mUser2Deferred:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmDeferrals(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueue(Lcom/android/server/am/BroadcastDispatcher;)Lcom/android/server/am/BroadcastQueueImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueueImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRecheckScheduled(Lcom/android/server/am/BroadcastDispatcher;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sminsertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    .line 179
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$1;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    .line 225
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$2;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 510
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueueImpl;

    .line 511
    iput-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 512
    iput-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    .line 513
    iput-object p4, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .locals 4

    .line 1164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1166
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1167
    iget v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p0, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .locals 6

    .line 1191
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1193
    iget-wide v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-wide v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1197
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static isBeyondBarrier(Ljava/util/ArrayList;J)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 565
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 566
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isDeferralsBeyondBarrier(Ljava/util/ArrayList;J)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 555
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 556
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-static {v2, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->isBeyondBarrier(Ljava/util/ArrayList;J)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isDeferralsListEmpty(Ljava/util/ArrayList;)Z
    .locals 0

    .line 627
    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDispatched(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 597
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 598
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isDispatchedInDeferrals(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 587
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 588
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/android/server/am/BroadcastDispatcher;->isDispatched(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static pendingInDeferralsList(Ljava/util/ArrayList;)I
    .locals 4

    .line 619
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 621
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;
    .locals 2

    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1180
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    :goto_0
    return-object p0
.end method

.method public static zeroDeferralTimes(Ljava/util/ArrayList;)V
    .locals 5

    .line 1124
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1126
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    const-wide/16 v3, 0x0

    .line 1128
    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "BroadcastDispatcher"

    .line 1082
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding deferred broadcast but not tracking "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "BroadcastDispatcher"

    .line 1085
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deferring null broadcast to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1087
    iput-boolean p1, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 1088
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->add(Lcom/android/server/am/BroadcastRecord;)V

    .line 1091
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

.method public final calculateDeferral(J)J
    .locals 2

    .line 1205
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    long-to-float p1, p1

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    mul-float/2addr p1, p0

    float-to-long p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public cancelDeferralsLocked()V
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    .line 1120
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 1

    .line 870
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 871
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    or-int/2addr p1, v0

    if-nez p5, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public final cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 7

    .line 856
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 857
    iget-object v2, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    if-nez p5, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 8

    .line 805
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    if-nez p4, :cond_0

    if-nez v0, :cond_1

    .line 808
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    :cond_1
    const/4 v1, 0x0

    if-nez p4, :cond_2

    if-nez v0, :cond_5

    .line 812
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 813
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 814
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 815
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    iget-object v4, v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 816
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_3

    .line 817
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 820
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    :cond_5
    if-nez p4, :cond_6

    if-nez v0, :cond_9

    .line 825
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 826
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_8

    .line 827
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 828
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    iget-object v4, v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 829
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_7

    .line 830
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 833
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    :cond_9
    if-nez p4, :cond_a

    if-nez v0, :cond_b

    .line 837
    :cond_a
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_b
    if-nez p4, :cond_c

    if-nez v0, :cond_d

    .line 841
    :cond_c
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_d
    if-nez p4, :cond_e

    if-nez v0, :cond_f

    .line 844
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_f

    .line 845
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_f
    return v0
.end method

.method public final dequeueDeferredBootCompletedBroadcast()Lcom/android/server/am/BroadcastRecord;
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 496
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 497
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-virtual {v3, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v3
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 5

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 636
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_0

    const-string v1, "1 in flight, "

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ordered"

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_1

    .line 643
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alarms"

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    if-lez v1, :cond_2

    .line 649
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deferrals in alarm recipients"

    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    if-lez v1, :cond_3

    .line 655
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deferred"

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 659
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v3

    const-string v4, " receivers"

    if-lez v3, :cond_4

    .line 661
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " deferred LOCKED_BOOT_COMPLETED/"

    .line 663
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 668
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    .line 670
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deferred BOOT_COMPLETED/"

    .line 672
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 889
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 892
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_1

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 895
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_2

    .line 897
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 898
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_3

    .line 901
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_5

    .line 902
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1214
    new-instance v6, Lcom/android/server/am/BroadcastDispatcher$Dumper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher$Dumper;-><init>(Lcom/android/server/am/BroadcastDispatcher;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    const-string p2, "Currently in flight"

    .line 1217
    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p2, "In-Flight Ordered Broadcast"

    .line 1218
    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1219
    iget-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p2, :cond_0

    .line 1220
    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_0

    :cond_0
    const-string p2, "  (null)"

    .line 1222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    :goto_0
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p1

    const/4 p2, 0x0

    or-int/2addr p1, p2

    const-string p3, "Active alarm broadcasts"

    .line 1226
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p3, "Active Alarm Broadcast"

    .line 1227
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1228
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BroadcastRecord;

    .line 1229
    invoke-virtual {v6, p4}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_1

    .line 1231
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p3

    or-int/2addr p1, p3

    const-string p3, "Active ordered broadcasts"

    .line 1233
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p3, "Active Ordered Broadcast"

    .line 1234
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1235
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1236
    invoke-virtual {p4, v6}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    goto :goto_2

    .line 1238
    :cond_2
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BroadcastRecord;

    .line 1239
    invoke-virtual {v6, p4}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_3

    .line 1241
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p3

    or-int/2addr p1, p3

    const-string p3, "Deferred ordered broadcasts"

    .line 1243
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p3, "Deferred Ordered Broadcast"

    .line 1244
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1245
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1246
    invoke-virtual {p4, v6}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    goto :goto_4

    .line 1248
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p3

    or-int/2addr p1, p3

    const-string p3, "Deferred LOCKED_BOOT_COMPLETED broadcasts"

    .line 1250
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p3, "Deferred LOCKED_BOOT_COMPLETED Broadcast"

    .line 1251
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1252
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    move p4, p2

    :goto_5
    if-ge p4, p3, :cond_5

    .line 1253
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v6, v1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 1255
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p3

    or-int/2addr p1, p3

    const-string p3, "Deferred BOOT_COMPLETED broadcasts"

    .line 1257
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    const-string p3, "Deferred BOOT_COMPLETED Broadcast"

    .line 1258
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1259
    iget-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    :goto_6
    if-ge p2, p3, :cond_6

    .line 1260
    iget-object p4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p4, v6, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 1262
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 3

    .line 683
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 687
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 695
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 698
    invoke-virtual {p1, v1, v0}, Lcom/android/server/am/BroadcastRecord;->splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;

    move-result-object v0

    .line 700
    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 702
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 704
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 707
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 709
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 710
    invoke-virtual {p1, v1, v0}, Lcom/android/server/am/BroadcastRecord;->splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;

    move-result-object v0

    .line 712
    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 714
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 716
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 721
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    .line 691
    :cond_5
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .locals 1

    .line 1140
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1143
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;
    .locals 0

    .line 910
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-object p0
.end method

.method public final getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I
    .locals 4

    .line 741
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 742
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-static {v3, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->-$$Nest$mgetBootCompletedBroadcastsReceiversSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I
    .locals 4

    .line 730
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 731
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-static {v3, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->-$$Nest$mgetBootCompletedBroadcastsUidsSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    return-object p0

    .line 476
    :cond_0
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;-><init>(I)V

    .line 478
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;
    .locals 7

    .line 922
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    return-object v0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 938
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->dequeueDeferredBootCompletedBroadcast()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 942
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 943
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 949
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v0, :cond_6

    .line 951
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    .line 957
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 958
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 959
    iget-wide v5, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v5, p1, v5

    if-gez v5, :cond_4

    if-eqz v2, :cond_4

    goto :goto_2

    .line 967
    :cond_4
    iget-object v5, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 968
    iget-object p1, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 971
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 972
    iget-wide p1, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->calculateDeferral(J)J

    move-result-wide p1

    iput-wide p1, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 973
    iget-wide v5, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    add-long/2addr v5, p1

    iput-wide v5, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 974
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    .line 985
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 991
    :cond_7
    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-object v0
.end method

.method public isBeyondBarrier(J)Z
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v1, v3, p1

    if-gtz v1, :cond_0

    .line 576
    monitor-exit v0

    return v2

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->isBeyondBarrier(Ljava/util/ArrayList;J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    .line 579
    invoke-static {v1, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->isBeyondBarrier(Ljava/util/ArrayList;J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 580
    invoke-static {v1, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsBeyondBarrier(Ljava/util/ArrayList;J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    .line 581
    invoke-static {p0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsBeyondBarrier(Ljava/util/ArrayList;J)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 582
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDeferringLocked(I)Z
    .locals 5

    .line 1013
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1014
    iget-object v1, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 1022
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z

    return v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isDispatched(Landroid/content/Intent;)Z
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    monitor-exit v0

    return v2

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastDispatcher;->isDispatched(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    .line 611
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastDispatcher;->isDispatched(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 612
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastDispatcher;->isDispatchedInDeferrals(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    .line 613
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->isDispatchedInDeferrals(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 614
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEmpty()Z
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 532
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 533
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 534
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isIdle()Z
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    .line 547
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 548
    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    .line 549
    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .locals 3

    .line 782
    iget-object p0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 785
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_1

    .line 786
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 787
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    iget-boolean p0, v0, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    iput-boolean p0, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 794
    invoke-virtual {p1, p3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .locals 3

    .line 768
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 770
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 771
    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eq p1, v0, :cond_0

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retiring broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match current outgoing "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BroadcastDispatcher"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 1005
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-void
.end method

.method public scheduleDeferralCheckLocked(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1101
    iget-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1102
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1103
    iget-object v0, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1105
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 1106
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 522
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarm:Lcom/android/server/AlarmManagerInternal;

    .line 523
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v0, p0}, Lcom/android/server/AlarmManagerInternal;->registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V

    return-void
.end method

.method public startDeferring(I)V
    .locals 9

    .line 1035
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1042
    new-instance v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v2, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    .line 1045
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;-><init>(IJJI)V

    .line 1051
    iget p1, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->alarmCount:I

    if-nez p1, :cond_0

    .line 1053
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    const/4 p1, 0x1

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    goto :goto_0

    .line 1057
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmDeferrals:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1062
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide p0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iput-wide p0, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 1068
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

.method public updateUidReadyForBootCompletedBroadcastLocked(I)V
    .locals 1

    .line 489
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->updateUidReady(I)V

    return-void
.end method
