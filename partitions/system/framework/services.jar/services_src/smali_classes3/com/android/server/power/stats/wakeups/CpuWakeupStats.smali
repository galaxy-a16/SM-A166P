.class public Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
.super Ljava/lang/Object;
.source "CpuWakeupStats.java"


# static fields
.field public static final WAKEUP_WRITE_DELAY_MS:J


# instance fields
.field final mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

.field public final mHandler:Landroid/os/Handler;

.field public final mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

.field public final mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

.field public final mReusableUidProcStates:Landroid/util/SparseIntArray;

.field public final mUidProcStates:Landroid/util/SparseIntArray;

.field final mWakeupAttribution:Landroid/util/TimeSparseArray;

.field final mWakeupEvents:Landroid/util/TimeSparseArray;


# direct methods
.method public static synthetic $r8$lambda$6vcu-zByAHCWLq3LWOMHOYKonWE(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->lambda$noteWakeupTimeAndReason$1(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KXvUR_int6QqLJJPMWr6_rHc1a8(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    invoke-direct {v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 76
    new-instance v0, Landroid/util/TimeSparseArray;

    invoke-direct {v0}, Landroid/util/TimeSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    .line 80
    new-instance v0, Landroid/util/TimeSparseArray;

    invoke-direct {v0}, Landroid/util/TimeSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 85
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    .line 88
    invoke-static {p1, p2}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->getInstance(Landroid/content/Context;I)Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 89
    new-instance p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    new-instance p2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)V

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;-><init>(Ljava/util/function/LongSupplier;)V

    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    .line 91
    iput-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0()J
    .locals 2

    .line 90
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    return-wide v0
.end method

.method private synthetic lambda$noteWakeupTimeAndReason$1(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->logWakeupAttribution(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    return-void
.end method

.method public static stringToKnownSubsystem(Ljava/lang/String;)I
    .locals 6

    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p0, v5

    goto :goto_1

    :sswitch_0
    const-string v0, "Alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "Wifi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "Sound_trigger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "Cellular_data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move p0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "Sensor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v5

    :pswitch_0
    return v4

    :pswitch_1
    return v3

    :pswitch_2
    return v2

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c9ac026 -> :sswitch_4
        -0x41b3aec1 -> :sswitch_3
        -0x194b8998 -> :sswitch_2
        0x292335 -> :sswitch_1
        0x3c68a31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static subsystemToStatsReason(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static subsystemToString(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    const-string p0, "Cellular_data"

    return-object p0

    :cond_1
    const-string p0, "Sensor"

    return-object p0

    :cond_2
    const-string p0, "Sound_trigger"

    return-object p0

    :cond_3
    const-string p0, "Wifi"

    return-object p0

    :cond_4
    const-string p0, "Alarm"

    return-object p0

    :cond_5
    const-string p0, "Unknown"

    return-object p0
.end method

.method public static typeToStatsType(I)I
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


# virtual methods
.method public final declared-synchronized attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 12

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 251
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    iget-wide v2, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/util/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 254
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    iget-wide v3, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v2, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    const/4 v4, 0x0

    .line 258
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 259
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 263
    iget-wide v6, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    sub-long v8, v6, v2

    add-long v10, v6, v2

    .line 266
    iget-object v6, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    move v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->removeBetween(IJJ)Landroid/util/SparseIntArray;

    move-result-object v6

    .line 268
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z
    .locals 5

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v0, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 276
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    sub-long v3, p2, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v2

    .line 278
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    add-long/2addr p2, v0

    invoke-virtual {v3, p2, p3}, Landroid/util/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result p2

    :goto_0
    const/4 p3, 0x0

    if-gt v2, p2, :cond_4

    .line 282
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    invoke-virtual {v0, v2}, Landroid/util/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 283
    iget-object v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 284
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    iget-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {p2, v1, v2}, Landroid/util/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    if-nez p2, :cond_0

    .line 290
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    iget-wide v2, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v1, v2, v3, p2}, Landroid/util/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 293
    :cond_0
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-nez v0, :cond_1

    .line 295
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 297
    :cond_1
    :goto_1
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge p3, p1, :cond_2

    .line 298
    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 301
    :cond_2
    :goto_2
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_4
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "CPU wakeup stats:"

    .line 309
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 312
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 313
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 315
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 316
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 318
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 319
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current proc-state map ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 323
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 325
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 331
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 332
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 334
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    const-string v2, "Wakeup events:"

    .line 335
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 337
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    invoke-virtual {v2}, Landroid/util/TimeSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_8

    .line 338
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v3, ":"

    .line 339
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 342
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 343
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "Attribution: "

    .line 344
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 345
    iget-object v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    iget-wide v5, v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/util/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_2

    const-string v3, "N/A"

    .line 348
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    move v4, v0

    .line 350
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    if-lez v4, :cond_3

    const-string v5, ", "

    .line 352
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 354
    :cond_3
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 355
    invoke-static {v0, v0}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    .line 354
    invoke-virtual {v1, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v5

    .line 356
    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v7

    .line 357
    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 359
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " ["

    .line 360
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    if-eqz v6, :cond_6

    move v8, v0

    .line 363
    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    if-lez v8, :cond_4

    const-string v9, ", "

    .line 365
    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 367
    :cond_4
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-static {p1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 368
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 368
    invoke-static {v10}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    :cond_6
    const-string v6, "]"

    .line 373
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 376
    invoke-static {v7, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    .line 375
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 378
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 380
    :goto_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 382
    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Attribution stats:"

    .line 384
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 386
    :goto_5
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_9

    .line 387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Subsystem "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    .line 388
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p2

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 392
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Total: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    invoke-virtual {p3}, Landroid/util/TimeSparseArray;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 395
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 396
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized logWakeupAttribution(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v2, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const-wide/32 v3, 0x20000

    if-eqz v2, :cond_0

    const/16 v5, 0x24c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 130
    iget-wide v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    const-string/jumbo v2, "wakeup_attribution"

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " --"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v2, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    iget-wide v5, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v2, v5, v6}, Landroid/util/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_1

    const-string v2, "CpuWakeupStats"

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected null attribution found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    .line 152
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 153
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 154
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    if-eqz v9, :cond_4

    .line 158
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    .line 161
    :cond_2
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    .line 162
    new-array v11, v10, [I

    .line 163
    new-array v12, v10, [I

    move v13, v6

    :goto_1
    if-ge v13, v10, :cond_3

    .line 165
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    aput v14, v11, v13

    .line 167
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 166
    invoke-static {v14}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v18, v12

    goto :goto_3

    :cond_4
    :goto_2
    new-array v11, v6, [I

    move-object/from16 v18, v11

    :goto_3
    const/16 v12, 0x24c

    .line 170
    iget v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    .line 171
    invoke-static {v9}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->typeToStatsType(I)I

    move-result v13

    .line 172
    invoke-static {v8}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToStatsReason(I)I

    move-result v14

    iget-wide v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    move-object v15, v11

    move-wide/from16 v16, v9

    .line 170
    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    .line 177
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v7, :cond_5

    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_5
    invoke-static {v8}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    .line 182
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    .line 184
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "wakeup_attribution"

    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized noteUidProcessState(II)V
    .locals 1

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized noteWakeupTimeAndReason(JJLjava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    move-object v0, p5

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 212
    monitor-exit p0

    return-void

    .line 214
    :cond_0
    :try_start_1
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    invoke-virtual {p4, p1, p2, p3}, Landroid/util/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 215
    invoke-virtual {p0, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    .line 220
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide p4, p4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    .line 221
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    sub-long/2addr p1, p4

    invoke-virtual {v0, p1, p2}, Landroid/util/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result p4

    :goto_0
    if-ltz p4, :cond_1

    .line 223
    iget-object p5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/TimeSparseArray;

    invoke-virtual {p5, p4}, Landroid/util/TimeSparseArray;->removeAt(I)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 225
    :cond_1
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    invoke-virtual {p4, p1, p2}, Landroid/util/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    .line 227
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/TimeSparseArray;

    invoke-virtual {p2, p1}, Landroid/util/TimeSparseArray;->removeAt(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    sget-wide p3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized noteWakingActivity(IJ[I)V
    .locals 5

    monitor-enter p0

    if-nez p4, :cond_0

    .line 235
    monitor-exit p0

    return-void

    .line 237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 238
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    aget v2, p4, v0

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    .line 240
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 239
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 243
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->recordActivity(IJLandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUidRemoved(I)V
    .locals 1

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized systemServicesReady()V
    .locals 3

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->register(Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
