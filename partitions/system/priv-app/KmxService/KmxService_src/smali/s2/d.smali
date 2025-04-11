.class public final Ls2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls2/l;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lt2/d;

.field public final c:Ls2/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt2/d;Ls2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/d;->a:Landroid/content/Context;

    iput-object p2, p0, Ls2/d;->b:Lt2/d;

    iput-object p3, p0, Ls2/d;->c:Ls2/b;

    return-void
.end method


# virtual methods
.method public final a(Lo2/j;IZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Ls2/d;->a:Landroid/content/Context;

    const-class v5, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "jobscheduler"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    new-instance v6, Ljava/util/zip/Adler32;

    invoke-direct {v6}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v4, v1, Lo2/j;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/zip/Adler32;->update([B)V

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v8, v1, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    invoke-static {v8}, Lw2/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v7, v1, Lo2/j;->b:[B

    if-eqz v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/zip/Adler32;->update([B)V

    :cond_0
    invoke-virtual {v6}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v9

    long-to-int v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "JobInfoScheduler"

    const-string v12, "attemptNumber"

    if-nez p3, :cond_3

    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/job/JobInfo;

    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getId()I

    move-result v14

    if-ne v14, v6, :cond_1

    if-lt v15, v2, :cond_2

    move v13, v9

    goto :goto_0

    :cond_2
    move v13, v10

    :goto_0
    if-eqz v13, :cond_3

    const-string v0, "Upload for context %s is already scheduled. Returning..."

    invoke-static {v1, v11, v0}, Lcom/fasterxml/jackson/annotation/i0;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v13, v0, Ls2/d;->b:Lt2/d;

    check-cast v13, Lt2/k;

    invoke-virtual {v13}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/String;

    iget-object v4, v1, Lo2/j;->a:Ljava/lang/String;

    aput-object v4, v15, v10

    invoke-static {v8}, Lw2/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v9

    const-string v10, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    invoke-virtual {v13, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v13, Lcom/google/firebase/concurrent/h;

    const/4 v15, 0x5

    invoke-direct {v13, v15}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-static {v10, v13}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-instance v13, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v13, v6, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    iget-object v0, v0, Ls2/d;->c:Ls2/b;

    invoke-virtual {v0, v8, v9, v10, v2}, Ls2/b;->a(Lcom/google/android/datatransport/Priority;JI)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    iget-object v14, v0, Ls2/b;->b:Ljava/util/Map;

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls2/c;

    iget-object v14, v14, Ls2/c;->c:Ljava/util/Set;

    sget-object v15, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->NETWORK_UNMETERED:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    const/4 v15, 0x1

    goto :goto_1

    :cond_4
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_1
    sget-object v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->DEVICE_CHARGING:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    invoke-interface {v14, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v13, v15}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    :cond_5
    sget-object v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->DEVICE_IDLE:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    invoke-interface {v14, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v13, v15}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    :cond_6
    new-instance v14, Landroid/os/PersistableBundle;

    invoke-direct {v14}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v14, v12, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "backendName"

    invoke-virtual {v14, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lw2/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result v4

    const-string v12, "priority"

    invoke-virtual {v14, v12, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x0

    if-eqz v7, :cond_7

    invoke-static {v7, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    const-string v12, "extras"

    invoke-virtual {v14, v12, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v13, v14}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v7, v3

    invoke-virtual {v0, v8, v9, v10, v2}, Ls2/b;->a(Lcom/google/android/datatransport/Priority;JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v7, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v7, v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v7, v2

    invoke-static {v11}, Lcom/fasterxml/jackson/annotation/i0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v13}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
