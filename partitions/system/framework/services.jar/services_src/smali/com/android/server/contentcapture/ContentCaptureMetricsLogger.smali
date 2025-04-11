.class public abstract Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;
.super Ljava/lang/Object;
.source "ContentCaptureMetricsLogger.java"


# direct methods
.method public static writeServiceEvent(ILandroid/content/ComponentName;)V
    .locals 0

    .line 45
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static writeServiceEvent(ILjava/lang/String;)V
    .locals 6

    const/16 v0, 0xcf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static writeSessionEvent(IIILandroid/content/ComponentName;Z)V
    .locals 7

    const/16 v0, 0xd0

    .line 66
    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v6, p4

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .locals 13

    move-object v0, p2

    move-object/from16 v1, p3

    const/16 v2, 0xd1

    .line 76
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, v0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    iget v6, v0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    iget v7, v0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    iget v8, v0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    iget v9, v0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    iget v10, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    iget v11, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    iget v12, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    move v0, v2

    move v1, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move/from16 v12, p4

    .line 75
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IIIIIIIII)V

    return-void
.end method

.method public static writeSetWhitelistEvent(Landroid/content/ComponentName;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 51
    invoke-static {p0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_0
    move v4, p0

    :goto_0
    if-eqz p2, :cond_1

    .line 53
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    :cond_1
    move v5, p0

    const/16 v0, 0xcf

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
