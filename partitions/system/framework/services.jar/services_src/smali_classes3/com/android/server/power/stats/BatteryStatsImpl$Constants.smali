.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Constants;
.super Landroid/database/ContentObserver;
.source "BatteryStatsImpl.java"


# instance fields
.field public BATTERY_CHARGED_DELAY_MS:I

.field public BATTERY_LEVEL_COLLECTION_DELAY_MS:J

.field public EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

.field public KERNEL_UID_READERS_THROTTLE_TIME:J

.field public MAX_HISTORY_BUFFER:I

.field public MAX_HISTORY_FILES:I

.field public PER_UID_MODEM_MODEL:I

.field public PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

.field public PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

.field public RECORD_USAGE_HISTORY:Z

.field public RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

.field public TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

.field public UID_REMOVE_DELAY_MS:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 4

    .line 18135
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18136
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 18111
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    const-wide/32 v0, 0x493e0

    .line 18115
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    const-wide/32 v2, 0x927c0

    .line 18116
    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 18118
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    const-wide/32 v0, 0xea60

    .line 18120
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    const p2, 0xdbba0

    .line 18124
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    const/4 p2, 0x0

    .line 18125
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RECORD_USAGE_HISTORY:Z

    const/4 p2, 0x2

    .line 18126
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    .line 18127
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    const/16 p1, 0x2f

    .line 18129
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    .line 18133
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 18137
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x40

    .line 18138
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    const/high16 p1, 0x10000

    .line 18139
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    .line 18141
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    const/high16 p1, 0x20000

    .line 18142
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    :goto_0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v0, "track_cpu_active_cluster_time"

    .line 18357
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18358
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "kernel_uid_readers_throttle_time"

    .line 18359
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18360
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v1, "external_stats_collection_rate_limit_ms"

    .line 18361
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18362
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v1, "battery_level_collection_delay_ms"

    .line 18363
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18364
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v1, "procstate_change_collection_delay_ms"

    .line 18365
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18366
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v1, "max_history_files"

    .line 18367
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18368
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v1, "max_history_buffer_kb"

    .line 18369
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18370
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "battery_charged_delay_ms"

    .line 18371
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18372
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v1, "record_usage_history"

    .line 18373
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18374
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RECORD_USAGE_HISTORY:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "per_uid_modem_power_model"

    .line 18375
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18376
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->getPerUidModemModelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "phone_on_external_stats_collection"

    .line 18377
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18378
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "reset_while_plugged_in_minimum_duration_hours"

    .line 18379
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18380
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getPerUidModemModel(Ljava/lang/String;)I
    .locals 2

    .line 18081
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo p0, "modem_activity_info_rx_tx"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    if-nez p0, :cond_1

    const-string/jumbo p0, "mobile_radio_active_time"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 18087
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected per uid modem model name ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public getPerUidModemModelName(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 18073
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected per uid modem model ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryStatsImpl"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18074
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "modem_activity_info_rx_tx"

    return-object p0

    :cond_1
    const-string/jumbo p0, "mobile_radio_active_time"

    return-object p0
.end method

.method public onChange()V
    .locals 2

    .line 18277
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmHistory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setMaxHistoryFiles(I)V

    .line 18278
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmHistory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;->setMaxHistoryBufferSize(I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string p1, "battery_charging_state_update_delay"

    .line 18177
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 18176
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18179
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 18180
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 18181
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string/jumbo p1, "protect_battery"

    .line 18187
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 18186
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18188
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    :try_start_1
    const-string p2, "BatteryStatsImpl"

    const-string v0, "Observer"

    .line 18189
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18190
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateProtectBatteryModeLocked()V

    .line 18191
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    const-string/jumbo p1, "screen_brightness_mode"

    .line 18196
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 18195
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18198
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 18199
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateScreenAutoBrightnessModeLocked()V

    .line 18200
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_2
    const-string/jumbo p1, "refresh_rate_mode"

    .line 18205
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 18204
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18207
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 18208
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateDisplayHighRefreshRateLocked()V

    .line 18209
    monitor-exit p1

    return-void

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    .line 18213
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateConstants()V

    return-void
.end method

.method public startObserving(Landroid/content/ContentResolver;)V
    .locals 2

    .line 18147
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "battery_stats_constants"

    .line 18149
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 18148
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18151
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "battery_charging_state_update_delay"

    .line 18152
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 18151
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18156
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "protect_battery"

    .line 18157
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 18156
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18160
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "screen_brightness_mode"

    .line 18161
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 18160
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18164
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "refresh_rate_mode"

    .line 18165
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 18164
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18167
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateConstants()V

    .line 18168
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateProtectBatteryModeLocked()V

    .line 18169
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateScreenAutoBrightnessModeLocked()V

    .line 18170
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateDisplayHighRefreshRateLocked()V

    return-void
.end method

.method public final updateBatteryChargedDelayMsLocked()V
    .locals 4

    .line 18283
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_charging_state_update_delay"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 18287
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "battery_charged_delay_ms"

    const v2, 0xdbba0

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 18291
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18292
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18293
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final updateConstants()V
    .locals 8

    .line 18217
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 18219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "battery_stats_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BatteryStatsImpl"

    const-string v3, "Bad batterystats settings"

    .line 18224
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18227
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_cpu_active_cluster_time"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 18229
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "kernel_uid_readers_throttle_time"

    const-wide/16 v6, 0x3e8

    .line 18230
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 18229
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateKernelUidReadersThrottleTime(JJ)V

    .line 18232
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "uid_remove_delay_ms"

    const-wide/32 v4, 0x493e0

    .line 18233
    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 18232
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateUidRemoveDelay(J)V

    .line 18234
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "external_stats_collection_rate_limit_ms"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v1, v2, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 18237
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_level_collection_delay_ms"

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 18240
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "procstate_change_collection_delay_ms"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    .line 18243
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_history_files"

    .line 18244
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    const/16 v5, 0x40

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    const/16 v4, 0x20

    .line 18243
    :goto_1
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 18247
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_history_buffer_kb"

    .line 18248
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x80

    .line 18247
    :goto_2
    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 18252
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "record_usage_history"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RECORD_USAGE_HISTORY:Z

    .line 18254
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "per_uid_modem_power_model"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18256
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->getPerUidModemModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    .line 18258
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "phone_on_external_stats_collection"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    .line 18262
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "reset_while_plugged_in_minimum_duration_hours"

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    .line 18266
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 18268
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->onChange()V

    .line 18269
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateDisplayHighRefreshRateLocked()V
    .locals 3

    .line 18328
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "refresh_rate_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 18331
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mSubScreenState:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteSubDisplayHighRefreshRateLocked(II)V

    .line 18332
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteDisplayHighRefreshRateLocked(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18334
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final updateKernelUidReadersThrottleTime(JJ)V
    .locals 0

    .line 18340
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    .line 18342
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    invoke-virtual {p1, p3, p4}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->setThrottle(J)V

    .line 18343
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->setThrottle(J)V

    .line 18344
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->setThrottle(J)V

    .line 18345
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 18346
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->setThrottle(J)V

    :cond_0
    return-void
.end method

.method public final updateProtectBatteryModeLocked()V
    .locals 5

    .line 18300
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "protect_battery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 18301
    sget v1, Landroid/os/BatteryStats;->NUM_PROTECT_BATTERY_MODE_TYPES:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 18306
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmProtectBatteryMode(Lcom/android/server/power/stats/BatteryStatsImpl;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 18307
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fputmProtectBatteryMode(Lcom/android/server/power/stats/BatteryStatsImpl;I)V

    .line 18308
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmHistory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmProtectBatteryMode(Lcom/android/server/power/stats/BatteryStatsImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setProtectBatteryState(I)V

    .line 18309
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmHistory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    :cond_1
    return-void

    .line 18302
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown protect battery type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was specified."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "BatteryStatsImpl"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final updateScreenAutoBrightnessModeLocked()V
    .locals 2

    .line 18316
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 18319
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenAutoBrightnessLocked(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18321
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final updateUidRemoveDelay(J)V
    .locals 0

    .line 18352
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 18353
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    return-void
.end method
