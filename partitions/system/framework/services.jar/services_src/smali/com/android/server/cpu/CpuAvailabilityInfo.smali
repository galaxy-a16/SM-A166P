.class public final Lcom/android/server/cpu/CpuAvailabilityInfo;
.super Ljava/lang/Object;
.source "CpuAvailabilityInfo.java"


# instance fields
.field public final cpuset:I

.field public final dataTimestampUptimeMillis:J

.field public final latestAvgAvailabilityPercent:I

.field public final pastNMillisAvgAvailabilityPercent:I

.field public final pastNMillisDuration:J


# direct methods
.method public constructor <init>(IJIIJ)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const-string v1, "cpuset"

    const/4 v2, 0x1

    .line 90
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    .line 93
    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    .line 94
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    .line 96
    iput p5, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    .line 97
    invoke-static {p6, p7}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 74
    :cond_1
    check-cast p1, Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 75
    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    iget v3, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    iget v3, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    iget v3, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    iget-wide p0, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 83
    iget v0, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 83
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpuAvailabilityInfo{cpuset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataTimestampUptimeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", latestAvgAvailabilityPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pastNMillisAvgAvailabilityPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pastNMillisDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
