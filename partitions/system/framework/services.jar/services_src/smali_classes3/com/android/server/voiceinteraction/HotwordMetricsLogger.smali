.class public abstract Lcom/android/server/voiceinteraction/HotwordMetricsLogger;
.super Ljava/lang/Object;
.source "HotwordMetricsLogger.java"


# direct methods
.method public static cancelHotwordTriggerToUiLatencySession(Landroid/content/Context;)V
    .locals 1

    .line 159
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    return-void
.end method

.method public static getAudioEgressDetectorType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getCreateMetricsDetectorType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getDetectorMetricsDetectorType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getInitMetricsDetectorType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getKeyphraseMetricsDetectorType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getRestartMetricsDetectorType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static stopHotwordTriggerToUiLatencySession(Landroid/content/Context;)V
    .locals 1

    .line 143
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public static writeAudioEgressEvent(IIIIII)V
    .locals 7

    .line 117
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getAudioEgressDetectorType(I)I

    move-result v1

    const/16 v0, 0x242

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 118
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    return-void
.end method

.method public static writeDetectorCreateEvent(IZI)V
    .locals 1

    .line 71
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getCreateMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1ae

    .line 72
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZI)V

    return-void
.end method

.method public static writeDetectorEvent(III)V
    .locals 1

    .line 107
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getDetectorMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1b2

    .line 108
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public static writeKeyphraseTriggerEvent(III)V
    .locals 1

    .line 98
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getKeyphraseMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1b1

    .line 99
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public static writeServiceInitResultEvent(III)V
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getInitMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1af

    .line 81
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public static writeServiceRestartEvent(III)V
    .locals 1

    .line 89
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getRestartMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1b0

    .line 90
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method
