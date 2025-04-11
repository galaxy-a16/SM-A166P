.class public final Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# instance fields
.field public mStartTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->resetStartTime()V

    return-void
.end method

.method public static start()Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;
    .locals 1

    .line 532
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;-><init>()V

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 562
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->elapsedTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->formatTookTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->elapsedTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->formatTookTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public elapsedTimeMillis()J
    .locals 4

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final formatTookTime(Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 571
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " took "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resetStartTime()V
    .locals 2

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    return-void
.end method
