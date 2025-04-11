.class public final Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;
.super Ljava/lang/Object;
.source "CpuMonitorService.java"


# instance fields
.field public totalNormalizedAvailableCpuFreqKHz:J

.field public totalOfflineCpus:I

.field public totalOfflineMaxCpuFreqKHz:J

.field public totalOnlineCpus:I

.field public totalOnlineMaxCpuFreqKHz:J

.field public final uptimeMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-wide p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    return-void
.end method


# virtual methods
.method public appendCpuInfo(Lcom/android/server/cpu/CpuInfoReader$CpuInfo;)V
    .locals 4

    .line 645
    iget-boolean v0, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    if-nez v0, :cond_0

    .line 646
    iget v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    .line 647
    iget-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    iget-wide v2, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    return-void

    .line 650
    :cond_0
    iget v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    .line 651
    iget-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    invoke-virtual {p1}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->getNormalizedAvailableCpuFreqKHz()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    .line 652
    iget-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    iget-wide v2, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    return-void
.end method

.method public getAverageAvailableCpuFreqPercent()I
    .locals 4

    .line 656
    iget-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    if-gez v0, :cond_0

    .line 662
    sget-object v1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 663
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Computed negative CPU availability percent(%d) for %s "

    .line 662
    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snapshot{uptimeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalOnlineCpus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalOfflineCpus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalNormalizedAvailableCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalOnlineMaxCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalOfflineMaxCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
