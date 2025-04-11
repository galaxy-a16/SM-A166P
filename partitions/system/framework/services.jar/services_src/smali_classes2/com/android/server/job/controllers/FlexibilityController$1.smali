.class public Lcom/android/server/job/controllers/FlexibilityController$1;
.super Ljava/lang/Object;
.source "FlexibilityController.java"

# interfaces
.implements Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrefetchCacheUpdated(Landroid/util/ArraySet;ILjava/lang/String;JJJ)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 164
    invoke-virtual {v1}, Lcom/android/server/job/controllers/PrefetchController;->getLaunchTimeThresholdMs()J

    move-result-wide v1

    sub-long/2addr p4, v1

    cmp-long p4, p4, p8

    const/4 p5, 0x1

    const/4 v3, 0x0

    if-gez p4, :cond_0

    move p4, p5

    goto :goto_0

    :cond_0
    move p4, v3

    :goto_0
    sub-long/2addr p6, v1

    cmp-long p6, p6, p8

    if-gez p6, :cond_1

    goto :goto_1

    :cond_1
    move p5, v3

    :goto_1
    if-eq p5, p4, :cond_2

    .line 173
    iget-object p4, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p4, p4, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    const-wide/16 p5, 0x0

    .line 174
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p2, p3, p5}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    .line 173
    invoke-static {p8, p9, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p2, p3, p5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v3, p2, :cond_4

    .line 177
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    .line 178
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_3

    .line 181
    :cond_3
    iget-object p3, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p3, p3, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {p3, p2, p8, p9}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->resetJobNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 182
    iget-object p3, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p3, p3, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {p3, p2, p8, p9}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 184
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
