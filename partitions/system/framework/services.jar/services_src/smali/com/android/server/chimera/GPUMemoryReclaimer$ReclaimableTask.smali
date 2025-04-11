.class public Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;
.super Ljava/lang/Object;
.source "GPUMemoryReclaimer.java"


# instance fields
.field public mIsSuccess:Z

.field public final mMeminfoRaw:[J

.field public final mPid:I

.field public final mReclaimed:J

.field public final mResident:J

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;)V
    .locals 9

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [J

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p3, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->getMeminfoRaw(I)[J

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->calculateResident([J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p3, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->calculateReclaimed([J)J

    move-result-wide v0

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    iput-wide v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    goto :goto_1

    :catchall_0
    move-exception p3

    move-wide v7, v0

    move-wide v0, v2

    move-wide v2, v7

    goto :goto_2

    :catch_0
    move-exception p3

    move-wide v7, v0

    move-wide v0, v2

    move-wide v2, v7

    goto :goto_0

    :catchall_1
    move-exception p3

    move-wide v2, v0

    goto :goto_2

    :catch_1
    move-exception p3

    move-wide v2, v0

    :goto_0
    :try_start_2
    const-string v4, "GMR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " due to exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    iput-wide v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    :goto_1
    return-void

    :catchall_2
    move-exception p3

    :goto_2
    iput p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    iput-wide v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    throw p3
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;)V

    return-void
.end method


# virtual methods
.method public getMeminfoRaw()[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    return-object p0
.end method

.method public getPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    return p0
.end method

.method public getReclaimed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    return-wide v0
.end method

.method public getResident()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z

    return p0
.end method
