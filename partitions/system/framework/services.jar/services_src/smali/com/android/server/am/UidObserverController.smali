.class public Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# instance fields
.field public mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public final mAvailUidChanges:Ljava/util/ArrayList;

.field public final mDispatchRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingUidChanges:Ljava/util/ArrayList;

.field public mUidChangeDispatchCount:I

.field public final mUidObservers:Landroid/os/RemoteCallbackList;

.field public final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 68
    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 74
    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance p1, Lcom/android/server/am/ActiveUids;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-void
.end method

.method public static mergeWithPendingChange(II)I
    .locals 2

    .line 0
    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    :cond_0
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, -0xd

    :cond_2
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_3

    or-int/lit8 p0, p0, 0x20

    :cond_3
    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-eqz v1, :cond_4

    or-int/2addr p0, v0

    :cond_4
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_5

    or-int/lit8 p0, p0, 0x40

    :cond_5
    return p0
.end method


# virtual methods
.method public final addUidToObserver(Landroid/os/IBinder;I)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 111
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addUidToObserverImpl(Landroid/os/IBinder;I)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 125
    invoke-virtual {v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->addUid(I)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "ActivityManager"

    const-string v2, "Unable to find UidObserver by token"

    .line 131
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    goto :goto_0

    .line 134
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchUidsChanged()V
    .locals 8

    .line 260
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 263
    new-array v2, v1, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 266
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 267
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-virtual {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v6

    aput-object v6, v5, v3

    .line 268
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    .line 269
    iput-boolean v2, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IUidObserver;

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 281
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 280
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/am/UidObserverController;->dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V

    move v0, v3

    goto :goto_1

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 285
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    :goto_2
    if-ge v0, v1, :cond_7

    .line 287
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v3, v3, v0

    .line 288
    iget v4, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 289
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v3, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->remove(I)V

    goto :goto_4

    .line 291
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v6, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    if-nez v4, :cond_4

    .line 293
    new-instance v4, Lcom/android/server/am/UidRecord;

    iget v6, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    .line 294
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v6, v7, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 296
    :cond_4
    iget v6, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_5

    .line 297
    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_3

    :cond_5
    and-int/lit8 v5, v6, 0x4

    if-eqz v5, :cond_6

    .line 299
    invoke-virtual {v4, v2}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 301
    :cond_6
    :goto_3
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 302
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 303
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 304
    iget v3, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v4, v3}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 309
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    move v0, v2

    :goto_5
    if-ge v0, v1, :cond_8

    .line 311
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    .line 312
    iput-boolean v2, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 313
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 315
    :cond_8
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 276
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V
    .locals 19

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    if-nez v6, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    move/from16 v9, p3

    move v10, v8

    :goto_0
    if-ge v10, v9, :cond_18

    move-object/from16 v11, p0

    .line 325
    :try_start_0
    iget-object v0, v11, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v12, v0, v10

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 327
    iget v15, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 329
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v7, v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    .line 333
    :cond_1
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmUid(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCanInteractAcrossUsers(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_a

    :cond_2
    const/high16 v0, -0x80000000

    const/4 v5, 0x1

    if-ne v15, v0, :cond_3

    .line 337
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/2addr v0, v5

    if-nez v0, :cond_3

    goto/16 :goto_a

    :cond_3
    const/16 v3, 0x40

    if-ne v15, v3, :cond_4

    .line 343
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    goto/16 :goto_a

    :cond_4
    and-int/lit8 v0, v15, 0x2

    if-eqz v0, :cond_5

    .line 350
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 354
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v6, v0, v1}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_1

    :cond_5
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_6

    .line 357
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 361
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v0}, Landroid/app/IUidObserver;->onUidActive(I)V

    .line 364
    :cond_6
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    and-int/lit8 v0, v15, 0x8

    if-eqz v0, :cond_7

    .line 369
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v0, v5}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_2

    :cond_7
    and-int/lit8 v0, v15, 0x10

    if-eqz v0, :cond_8

    .line 374
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v0, v8}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    :cond_8
    :goto_2
    and-int/lit8 v0, v15, 0x1

    const/16 v4, 0x14

    if-eqz v0, :cond_b

    .line 378
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 382
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v6, v0, v1}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    .line 384
    :cond_9
    iget-object v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_a

    .line 385
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_a
    move v8, v4

    move/from16 v17, v5

    goto/16 :goto_9

    .line 389
    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_10

    .line 391
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    if-ltz v0, :cond_f

    .line 392
    iget-object v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_e

    .line 395
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    if-gt v0, v1, :cond_c

    move v0, v5

    goto :goto_3

    :cond_c
    move v0, v8

    .line 396
    :goto_3
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    if-gt v1, v2, :cond_d

    move v1, v5

    goto :goto_4

    :cond_d
    move v1, v8

    :goto_4
    if-eq v0, v1, :cond_10

    goto :goto_5

    .line 399
    :cond_e
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    if-eq v0, v4, :cond_10

    :cond_f
    :goto_5
    move v0, v5

    goto :goto_6

    :cond_10
    move v0, v8

    .line 403
    :goto_6
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_12

    and-int/lit8 v1, v15, 0x20

    if-eqz v1, :cond_11

    move v1, v5

    goto :goto_7

    :cond_11
    move v1, v8

    :goto_7
    or-int/2addr v0, v1

    :cond_12
    if-eqz v0, :cond_14

    .line 411
    iget-object v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_13

    .line 412
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 414
    :cond_13
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iget-wide v3, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    const/16 v8, 0x14

    const/16 v16, 0x40

    move/from16 v17, v5

    move/from16 v5, v18

    invoke-interface/range {v0 .. v5}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_8

    :cond_14
    move/from16 v16, v3

    move v8, v4

    move/from16 v17, v5

    .line 418
    :goto_8
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_15

    and-int/lit8 v0, v15, 0x40

    if-eqz v0, :cond_15

    .line 420
    iget v0, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    invoke-interface {v6, v0, v1}, Landroid/app/IUidObserver;->onUidProcAdjChanged(II)V

    .line 423
    :cond_15
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v13

    long-to-int v0, v0

    .line 424
    iget v1, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v1, v0, :cond_16

    .line 425
    iput v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    :cond_16
    if-lt v0, v8, :cond_17

    .line 428
    iget v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_a
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    :cond_18
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 440
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    .line 444
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 445
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_0

    .line 446
    invoke-static {v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    if-nez v4, :cond_1

    const-string v4, "  mUidObservers:"

    .line 448
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 451
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/IUidObserver;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 456
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  mUidChangeDispatchCount="

    .line 457
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    iget p2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 459
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  Slow UID dispatches:"

    .line 460
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    if-ge v2, v1, :cond_4

    .line 462
    iget-object p2, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 463
    invoke-virtual {p2, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    const-string v3, "    "

    .line 464
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUidObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": "

    .line 466
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    iget v3, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " / Max "

    .line 468
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    iget p2, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p2, "ms"

    .line 470
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 473
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

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 6

    .line 477
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 480
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 481
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_0

    .line 482
    invoke-static {v3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-wide v4, 0x20b00000017L

    .line 483
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
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

.method public dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6

    .line 491
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .locals 6

    .line 496
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    return-void
.end method

.method public enqueueUidChange(Lcom/android/server/am/UidObserverController$ChangeRecord;IIIIJIZ)I
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object p1

    .line 178
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 180
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_2
    iget p0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    invoke-static {p3, p0}, Lcom/android/server/am/UidObserverController;->mergeWithPendingChange(II)I

    move-result p3

    .line 185
    :goto_1
    iput p2, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 186
    iput p3, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 187
    iput p4, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 188
    iput p5, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 189
    iput-wide p6, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 190
    iput p8, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 191
    iput-boolean p9, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 193
    monitor-exit v0

    return p3

    :catchall_0
    move-exception p0

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    goto :goto_0

    .line 249
    :cond_0
    new-instance p0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    :goto_0
    return-object p0
.end method

.method public getValidateUidRecord(I)Lcom/android/server/am/UidRecord;
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    return-object p0
.end method

.method public register(Landroid/app/IUidObserver;IILjava/lang/String;I[I)Landroid/os/IBinder;
    .locals 12

    move-object v0, p0

    .line 89
    new-instance v8, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UidObserver-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v9, v0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 93
    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v11, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move/from16 v1, p5

    .line 95
    invoke-static {v0, v1}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v0, v11

    move/from16 v1, p5

    move-object/from16 v2, p4

    move v3, p2

    move v4, p3

    move-object/from16 v6, p6

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V

    move-object v0, p1

    .line 93
    invoke-virtual {v10, p1, v11}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 97
    monitor-exit v9

    return-object v8

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final removeUidFromObserver(Landroid/os/IBinder;I)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 140
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final removeUidFromObserverImpl(Landroid/os/IBinder;I)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 154
    invoke-virtual {v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->removeUid(I)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "ActivityManager"

    const-string v2, "Unable to find UidObserver by token"

    .line 160
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    goto :goto_0

    .line 163
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public unregister(Landroid/app/IUidObserver;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
