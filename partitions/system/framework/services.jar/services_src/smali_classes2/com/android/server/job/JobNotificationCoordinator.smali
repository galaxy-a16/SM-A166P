.class public Lcom/android/server/job/JobNotificationCoordinator;
.super Ljava/lang/Object;
.source "JobNotificationCoordinator.java"


# instance fields
.field public final mCurrentAssociations:Landroid/util/ArrayMap;

.field public final mNotificationDetails:Landroid/util/ArrayMap;

.field public final mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field public final mUijLock:Ljava/lang/Object;

.field public final mUijNotificationChannels:Landroid/util/SparseArrayMap;

.field public final mUijNotifications:Landroid/util/SparseArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    .line 81
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    .line 110
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    return-void
.end method


# virtual methods
.method public enqueueNotification(Lcom/android/server/job/JobServiceContext;Ljava/lang/String;IIILandroid/app/Notification;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p4

    move/from16 v9, p7

    .line 116
    invoke-virtual {v0, v2, v12, v11, v9}, Lcom/android/server/job/JobNotificationCoordinator;->validateNotification(Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "JobNotificationCoordinator"

    const-string v1, "enqueueNotification called with no running job"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    if-nez v4, :cond_2

    .line 124
    iget-boolean v4, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v4, :cond_1

    const-string v4, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_required"

    .line 127
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    .line 125
    invoke-static {v4, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string v4, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_optional"

    .line 131
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    .line 129
    invoke-static {v4, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    .line 134
    :cond_2
    iget-boolean v5, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v5, :cond_3

    const-string v5, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_required"

    .line 137
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    .line 135
    invoke-static {v5, v6}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v5, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_optional"

    .line 141
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    .line 139
    invoke-static {v5, v6}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 143
    :goto_0
    iget v4, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    if-eq v4, v10, :cond_4

    const/4 v4, 0x0

    .line 145
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/job/JobNotificationCoordinator;->removeNotificationAssociation(Lcom/android/server/job/JobServiceContext;ILcom/android/server/job/controllers/JobStatus;)V

    const-string v4, "job_scheduler.value_cntr_w_uid_set_notification_changed_notification_ids"

    .line 149
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    .line 147
    invoke-static {v4, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 152
    :cond_4
    :goto_1
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 153
    iget-boolean v3, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v3, :cond_6

    .line 154
    iget v3, v11, Landroid/app/Notification;->flags:I

    const v4, 0x8000

    or-int/2addr v3, v4

    iput v3, v11, Landroid/app/Notification;->flags:I

    .line 155
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    monitor-enter v3

    .line 156
    :try_start_0
    invoke-virtual {v0, v13, v2}, Lcom/android/server/job/JobNotificationCoordinator;->maybeCreateUijNotificationSetsLocked(ILjava/lang/String;)V

    .line 157
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    .line 158
    invoke-virtual {v4, v10}, Landroid/util/IntArray;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 159
    invoke-virtual {v4, v10}, Landroid/util/IntArray;->add(I)V

    .line 161
    :cond_5
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :cond_6
    :goto_2
    invoke-static {v13, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v14

    .line 165
    new-instance v15, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    .line 166
    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v8

    move-object v3, v15

    move-object v4, v14

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;-><init>(Landroid/content/pm/UserPackage;IIILjava/lang/String;I)V

    .line 168
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseSetArray;

    if-nez v3, :cond_7

    .line 170
    new-instance v3, Landroid/util/SparseSetArray;

    invoke-direct {v3}, Landroid/util/SparseSetArray;-><init>()V

    .line 171
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_7
    invoke-virtual {v3, v10, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 174
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move v8, v13

    invoke-interface/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    return-void
.end method

.method public isNotificationAssociatedWithAnyUserInitiatedJobs(IILjava/lang/String;)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/IntArray;

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 241
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    monitor-exit v0

    return p2

    .line 243
    :cond_1
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    .line 244
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isNotificationChannelAssociatedWithAnyUserInitiatedJobs(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 254
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 255
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isNotificationUsedForAnyUij(ILjava/lang/String;I)Z
    .locals 1

    .line 260
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    .line 261
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseSetArray;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 265
    :cond_0
    invoke-virtual {p0, p3}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p0

    if-nez p0, :cond_1

    return p1

    .line 271
    :cond_1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_3

    .line 272
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 273
    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v0, :cond_2

    return p3

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public final maybeCreateUijNotificationSetsLocked(ILjava/lang/String;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 334
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final maybeDeleteNotificationChannelAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 302
    iget-object v2, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    if-eqz v2, :cond_0

    .line 305
    iget v3, v2, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    .line 306
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    iget-object v3, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 307
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    .line 308
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    iget-boolean v1, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 322
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 325
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

.method public final maybeDeleteNotificationIdAssociation(ILjava/lang/String;I)V
    .locals 2

    .line 282
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobNotificationCoordinator;->isNotificationUsedForAnyUij(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/IntArray;

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v1, p3}, Landroid/util/IntArray;->indexOf(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->remove(I)V

    .line 291
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result p3

    if-nez p3, :cond_1

    .line 292
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
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

.method public removeNotificationAssociation(Lcom/android/server/job/JobServiceContext;ILcom/android/server/job/controllers/JobStatus;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 184
    iget-object v4, v1, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    if-nez v4, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v5, v1, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    .line 189
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseSetArray;

    const-string v6, "JobNotificationCoordinator"

    if-eqz v5, :cond_8

    .line 190
    iget v7, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    invoke-virtual {v5, v7, v0}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 194
    :cond_1
    iget v0, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 195
    iget-object v0, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    iget-object v14, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 196
    iget v13, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    .line 198
    invoke-virtual {v5, v13}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v1, v15, v14, v13}, Lcom/android/server/job/JobNotificationCoordinator;->isNotificationUsedForAnyUij(ILjava/lang/String;I)Z

    move-result v0

    xor-int/2addr v5, v0

    goto :goto_1

    .line 205
    :cond_3
    :goto_0
    iget v0, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->jobEndNotificationPolicy:I

    if-eq v0, v5, :cond_5

    const/16 v0, 0xb

    if-eq v2, v0, :cond_5

    const/16 v0, 0xd

    if-ne v2, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v5

    move v2, v13

    move-object v5, v14

    goto :goto_5

    .line 210
    :cond_5
    :goto_2
    :try_start_0
    iget-object v7, v1, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    iget v10, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    iget v11, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appPid:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v12, 0x0

    move-object v8, v14

    move-object v9, v14

    move v2, v13

    move-object v5, v14

    move v14, v15

    :try_start_1
    invoke-interface/range {v7 .. v14}, Lcom/android/server/notification/NotificationManagerInternal;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v2, v13

    move-object v5, v14

    :goto_3
    const-string v7, "cancelNotification : "

    .line 214
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    .line 224
    iget-object v0, v1, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-interface {v0, v5, v2, v15}, Lcom/android/server/notification/NotificationManagerInternal;->removeUserInitiatedJobFlagFromNotification(Ljava/lang/String;II)V

    :cond_6
    if-eqz v3, :cond_7

    .line 229
    iget-boolean v0, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {v1, v15, v5, v2}, Lcom/android/server/job/JobNotificationCoordinator;->maybeDeleteNotificationIdAssociation(ILjava/lang/String;I)V

    .line 231
    iget-object v0, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    invoke-virtual {v1, v15, v5, v0}, Lcom/android/server/job/JobNotificationCoordinator;->maybeDeleteNotificationChannelAssociation(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    :goto_6
    const-string v0, "Association data structures not in sync"

    .line 191
    invoke-static {v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final validateNotification(Ljava/lang/String;ILandroid/app/Notification;I)V
    .locals 1

    if-eqz p3, :cond_4

    .line 344
    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 347
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 348
    invoke-virtual {p3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p3

    .line 347
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid job end notification policy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid notification channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 345
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "small icon required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 342
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "notification"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
