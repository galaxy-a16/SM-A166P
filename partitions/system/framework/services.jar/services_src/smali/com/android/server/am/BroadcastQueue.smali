.class public abstract Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:Lcom/android/server/am/BroadcastHistory;

.field public final mQueueName:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;


# direct methods
.method public static synthetic $r8$lambda$c6bpW70x4_bDF2sj4TjYEibXujM(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueue;->lambda$dumpToDropBoxLocked$0(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    return-void
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$dumpToDropBoxLocked$0(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 12

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "Message: "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/BroadcastQueue;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Z)Z

    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BroadcastQueue"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-wide/16 v1, 0x40

    const-string v3, "BroadcastQueue"

    invoke-static {v1, v2, v3, p0, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return v0
.end method

.method public static traceEnd(I)V
    .locals 3

    const-wide/16 v0, 0x40

    const-string v2, "BroadcastQueue"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract backgroundServicesFinishedLocked(I)V
.end method

.method public abstract cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;I)Z
.end method

.method public abstract clearDelayedBroadcastLocked()V
.end method

.method public abstract describeStateLocked()Ljava/lang/String;
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Z)Z
.end method

.method public dumpToDropBoxLocked(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/android/server/DropBoxManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerInternal;

    new-instance v1, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;)V

    const/4 p0, 0x2

    const-string p1, "broadcast_queue_dump"

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/DropBoxManagerInternal;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    return-void
.end method

.method public abstract enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
.end method

.method public abstract enqueueDelayedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
.end method

.method public abstract finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
.end method

.method public forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public abstract getPreferredSchedulingGroupLocked(Lcom/android/server/am/ProcessRecord;)I
.end method

.method public abstract isDelayBehindServices()Z
.end method

.method public abstract isIdleLocked()Z
.end method

.method public abstract onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onApplicationTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract start(Landroid/content/ContentResolver;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract waitForBarrier(Ljava/io/PrintWriter;)V
.end method

.method public abstract waitForDispatched(Landroid/content/Intent;Ljava/io/PrintWriter;)V
.end method

.method public abstract waitForIdle(Ljava/io/PrintWriter;)V
.end method
