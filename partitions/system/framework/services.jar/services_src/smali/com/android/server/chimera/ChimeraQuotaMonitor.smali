.class public Lcom/android/server/chimera/ChimeraQuotaMonitor;
.super Ljava/lang/Object;
.source "ChimeraQuotaMonitor.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/chimera/ChimeraQuotaMonitor;

.field public static final TAG:Ljava/lang/String; = "ChimeraQuotaMonitor"


# instance fields
.field public mLastNativeDRAMUsed:J

.field public mQuota:J

.field public mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public mTaskExecuteCount:I

.field public final mTaskHistory:Lcom/android/internal/util/RingBuffer;

.field public mTimer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLastNativeDRAMUsed(Lcom/android/server/chimera/ChimeraQuotaMonitor;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mLastNativeDRAMUsed:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuota(Lcom/android/server/chimera/ChimeraQuotaMonitor;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mQuota:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemEventListener(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskExecuteCount(Lcom/android/server/chimera/ChimeraQuotaMonitor;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mTaskExecuteCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastNativeDRAMUsed(Lcom/android/server/chimera/ChimeraQuotaMonitor;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mLastNativeDRAMUsed:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTaskExecuteCount(Lcom/android/server/chimera/ChimeraQuotaMonitor;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mTaskExecuteCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddTaskHistory(Lcom/android/server/chimera/ChimeraQuotaMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->addTaskHistory(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misUMRSuppressed(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->isUMRSuppressed()Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraQuotaMonitor;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->INSTANCE:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    return-void
.end method

.method public static getInstance()Lcom/android/server/chimera/ChimeraQuotaMonitor;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->INSTANCE:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    return-object v0
.end method


# virtual methods
.method public final addTaskHistory(Ljava/lang/String;)V
    .locals 3

    .line 107
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpTaskHistory(Ljava/io/PrintWriter;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\n************** Task History ****************"

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 100
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    return-void
.end method

.method public final isUMRSuppressed()Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 84
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getReclaimerMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    return p0

    :cond_0
    const-wide/16 v1, 0x7d0

    .line 88
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public schedule(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/SystemEventListener;I)V
    .locals 6

    .line 59
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 60
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    int-to-long p2, p4

    const-wide/16 v0, 0x400

    mul-long/2addr p2, v0

    .line 61
    iput-wide p2, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mQuota:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-gtz p2, :cond_0

    .line 64
    sget-object p2, Lcom/android/server/chimera/ChimeraQuotaMonitor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ChimeraQuotaMonitor invalid quota: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mQuota:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    iget-object p2, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mTimer:Ljava/util/Timer;

    if-nez p2, :cond_1

    .line 69
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mTimer:Ljava/util/Timer;

    .line 70
    new-instance v1, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;-><init>(Lcom/android/server/chimera/ChimeraQuotaMonitor;Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask-IA;)V

    const-wide/32 v2, 0x124f80

    const-wide/32 v4, 0x124f80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 72
    :cond_1
    sget-object p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->TAG:Ljava/lang/String;

    const-string p2, "ChimeraQuotaMonitor already start!"

    invoke-interface {p1, p0, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setQuota(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor;->mQuota:J

    return-void
.end method
