.class public Lcom/android/server/appop/AppOpsUidStateTrackerImpl;
.super Ljava/lang/Object;
.source "AppOpsUidStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTracker;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public mCapability:Landroid/util/SparseIntArray;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public mPendingCapability:Landroid/util/SparseIntArray;

.field public mPendingCommitTime:Landroid/util/SparseLongArray;

.field public mPendingGone:Landroid/util/SparseBooleanArray;

.field public mPendingUidStates:Landroid/util/SparseIntArray;

.field public mUidStateChangedCallbacks:Landroid/util/ArrayMap;

.field public mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic $r8$lambda$ArwvFYEzfaT-TRrRXh0GI2p2Nhc(Lcom/android/server/appop/AppOpsUidStateTrackerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManagerInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;)V
    .locals 6

    .line 92
    new-instance v2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;

    invoke-direct {v2, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;-><init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 67
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 68
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 69
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 70
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 71
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 72
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 73
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingGone:Landroid/util/SparseBooleanArray;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 109
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 110
    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 111
    iput-object p3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 112
    iput-object p4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 114
    new-instance p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-direct {p1, p2, p5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;-><init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Ljava/lang/Thread;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    return-void
.end method


# virtual methods
.method public addUidStateChangedCallback(Ljava/util/concurrent/Executor;Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 189
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Callback is already registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final commitUidPendingState(I)V
    .locals 12

    .line 332
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v2, 0x2bc

    .line 333
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 332
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    .line 335
    invoke-virtual {v3, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 334
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 336
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 337
    invoke-virtual {v4, p1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    .line 336
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v10

    .line 339
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 340
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 341
    iget-object v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-ne v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    if-eq v4, v10, :cond_7

    :cond_0
    const/16 v5, 0x1f4

    const/4 v6, 0x1

    if-gt v2, v5, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v9

    :goto_0
    if-gt v0, v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v9

    :goto_1
    if-ne v2, v5, :cond_4

    if-ne v3, v1, :cond_4

    if-eq v4, v10, :cond_3

    goto :goto_2

    :cond_3
    move v2, v9

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v6

    :goto_3
    if-eqz v2, :cond_6

    .line 353
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    if-eq v4, v10, :cond_5

    move v8, v6

    goto :goto_4

    :cond_5
    move v8, v9

    :goto_4
    move v4, p1

    move v5, v0

    move v6, v1

    move v7, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logCommitUidState(IIIZZ)V

    :cond_6
    move v3, v9

    .line 357
    :goto_5
    iget-object v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 358
    iget-object v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 359
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 361
    new-instance v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 362
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 363
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 361
    invoke-static {v6, v4, v7, v8, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 367
    :cond_7
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingGone:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 368
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 369
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 371
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingGone:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_6

    .line 373
    :cond_8
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 374
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 375
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 378
    :goto_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 379
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 380
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 381
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpEvents(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpUidState(Ljava/io/PrintWriter;IJ)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x2bc

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const-string v2, "    state="

    .line 277
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eq v0, v1, :cond_0

    const-string v0, "    pendingState="

    .line 280
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 285
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const-string v3, "    capability="

    .line 286
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 288
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eq v0, v2, :cond_1

    const-string v0, "    pendingCapability="

    .line 290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    invoke-static {p1, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 292
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    const-string v2, "    appWidgetVisible="

    .line 297
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    if-eq v0, v1, :cond_2

    const-string v0, "    pendingAppWidgetVisible="

    .line 300
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 303
    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-eqz p0, :cond_3

    const-string p0, "    pendingStateCommitTime="

    .line 305
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 307
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method public evalMode(III)I
    .locals 7

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    return p3

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidState(I)I

    move-result v3

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidCapability(I)I

    move-result v4

    .line 135
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalModeInternal(IIII)I

    move-result p3

    .line 137
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logEvalForegroundMode(IIIII)V

    return p3
.end method

.method public final evalModeInternal(IIII)I
    .locals 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidAppWidgetVisible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 144
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getOpCapability(I)I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    and-int/2addr p0, p4

    if-nez p0, :cond_1

    return p1

    :cond_1
    return v1

    .line 157
    :cond_2
    invoke-static {p2}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result p0

    if-le p3, p0, :cond_3

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final getOpCapability(I)I
    .locals 1

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 p0, 0x79

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x2

    :cond_2
    return p0
.end method

.method public final getUidAppWidgetVisible(I)Z
    .locals 1

    .line 389
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final getUidCapability(I)I
    .locals 1

    .line 385
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getUidState(I)I
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidStateLocked(I)I

    move-result p0

    return p0
.end method

.method public final getUidStateLocked(I)I
    .locals 1

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    .line 124
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v0, 0x2bc

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public isUidInForeground(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x4

    .line 183
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 4

    .line 205
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 208
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateUidPendingStateIfNeeded(I)V
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeededLocked(I)V

    return-void
.end method

.method public final updateUidPendingStateIfNeededLocked(I)V
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 324
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    :cond_1
    return-void
.end method

.method public updateUidProcState(III)V
    .locals 10

    .line 216
    invoke-static {p2}, Lcom/android/server/appop/AppOpsUidStateTracker;->processStateToUidState(I)I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v2, 0x2bc

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 219
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 220
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 221
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 222
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, p1, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-nez v5, :cond_0

    if-ne v0, v1, :cond_1

    if-ne p3, v3, :cond_1

    :cond_0
    if-eqz v5, :cond_9

    if-ne v0, v2, :cond_1

    if-eq p3, v4, :cond_9

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logUpdateUidProcState(III)V

    .line 231
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 232
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x14

    if-ne p2, v2, :cond_2

    .line 235
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingGone:Landroid/util/SparseBooleanArray;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    goto :goto_2

    :cond_2
    if-lt v0, v1, :cond_8

    const/16 p2, 0x1f4

    if-gt v0, p2, :cond_3

    if-le v1, p2, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    if-eq p3, v3, :cond_4

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    goto :goto_2

    :cond_4
    if-gt v0, p2, :cond_5

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    goto :goto_2

    :cond_5
    if-nez v5, :cond_9

    const/16 p2, 0xc8

    if-gt v1, p2, :cond_6

    .line 256
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    goto :goto_0

    :cond_6
    const/16 p2, 0x190

    if-gt v1, p2, :cond_7

    .line 258
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_0

    .line 260
    :cond_7
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 263
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 265
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 265
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    invoke-interface {v0, p0, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 243
    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    :cond_9
    :goto_2
    return-void
.end method
