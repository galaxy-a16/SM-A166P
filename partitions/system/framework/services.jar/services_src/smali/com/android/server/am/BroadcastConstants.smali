.class public Lcom/android/server/am/BroadcastConstants;
.super Ljava/lang/Object;
.source "BroadcastConstants.java"


# static fields
.field public static final DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public static final DEFAULT_DEFERRAL:J

.field public static final DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

.field public static final DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

.field public static final DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

.field public static final DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

.field public static final DEFAULT_MAX_PENDING_BROADCASTS:I

.field public static final DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

.field public static final DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

.field public static final DEFAULT_SLOW_TIME:J

.field public static final DEFAULT_TIMEOUT:J

.field public static final MAX_HISTORY_ABORTED_BROADCAST:I

.field public static final MAX_HISTORY_DELAYED_BROADCAST:I


# instance fields
.field public ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public CORE_DEFER_UNTIL_ACTIVE:Z

.field public DEFERRAL:J

.field public DEFERRAL_DECAY_FACTOR:F

.field public DEFERRAL_FLOOR:J

.field public DELAY_CACHED_MILLIS:J

.field public DELAY_FOREGROUND_PROC_MILLIS:J

.field public DELAY_NORMAL_MILLIS:J

.field public DELAY_PERSISTENT_PROC_MILLIS:J

.field public DELAY_URGENT_MILLIS:J

.field public EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

.field public MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

.field public MAX_CONSECUTIVE_URGENT_DISPATCHES:I

.field public MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

.field public MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

.field public MAX_HISTORY_COMPLETE_SIZE:I

.field public MAX_HISTORY_SUMMARY_SIZE:I

.field public MAX_PENDING_BROADCASTS:I

.field public MAX_RUNNING_ACTIVE_BROADCASTS:I

.field public MAX_RUNNING_PROCESS_QUEUES:I

.field public MODERN_QUEUE_ENABLED:Z

.field public PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

.field public SLOW_TIME:J

.field public TIMEOUT:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public mSettingsKey:Ljava/lang/String;

.field public mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;


# direct methods
.method public static synthetic $r8$lambda$0aOUTmZ8AmII5D0ojnpndDXMLX0(Lcom/android/server/am/BroadcastConstants;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettingsConstants(Lcom/android/server/am/BroadcastConstants;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateSettingsConstants()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_DELAYED_BROADCAST:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput v1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x2710

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_TIMEOUT:J

    mul-int/lit16 v1, v0, 0x1388

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_SLOW_TIME:J

    mul-int/lit16 v1, v0, 0x1388

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_DEFERRAL:J

    mul-int/lit16 v0, v0, 0x2710

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sput v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v2, 0x100

    if-eqz v0, :cond_6

    const/16 v0, 0x80

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    sput v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    sput v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    const/16 v2, 0x400

    :goto_8
    sput v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_SLOW_TIME:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_DEFERRAL:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastConstants;->MODERN_QUEUE_ENABLED:Z

    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    const-wide/32 v1, 0x1d4c0

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    const-wide/32 v1, -0x1d4c0

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_COMPLETE_SIZE:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    sget v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_HISTORY_SUMMARY_SIZE:I

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    iput-object p1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants()V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Broadcast parameters (key="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", observing="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, "):"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "bcast_timeout"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_slow_time"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_deferral"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_deferral_decay_factor"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_deferral_floor"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_allow_bg_activity_start_timeout"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Broadcast parameters (namespace="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity_manager_native_boot"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "):"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "modern_queue_enabled"

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastConstants;->MODERN_QUEUE_ENABLED:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_running_process_queues"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_running_active_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_core_running_blocking_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_core_running_non_blocking_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_pending_broadcasts"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_delay_normal_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_delay_cached_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_delay_urgent_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_delay_foreground_proc_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_delay_persistent_proc_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_history_complete_size"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_history_summary_size"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_consecutive_urgent_dispatches"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_max_consecutive_normal_dispatches"

    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "bcast_core_defer_until_active"

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "pending_cold_start_check_interval_millis"

    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getDeviceConfigBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastConstants;->propertyOverrideFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastConstants;->propertyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getDeviceConfigInt(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastConstants;->propertyOverrideFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastConstants;->propertyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getDeviceConfigLong(Ljava/lang/String;J)J
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastConstants;->propertyOverrideFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastConstants;->propertyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMaxRunningQueues()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final propertyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "persist.device_config.activity_manager_native_boot."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final propertyOverrideFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "persist.sys.activity_manager_native_boot."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 3

    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    new-instance p2, Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/am/BroadcastConstants$SettingsObserver;-><init>(Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    iget-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateSettingsConstants()V

    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance p1, Lcom/android/server/am/BroadcastConstants$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/BroadcastConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastConstants;)V

    const-string v0, "activity_manager_native_boot"

    invoke-static {v0, p2, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants()V

    return-void
.end method

.method public final updateDeviceConfigConstants()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "modern_queue_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastConstants;->MODERN_QUEUE_ENABLED:Z

    const-string v0, "bcast_max_running_process_queues"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_PROCESS_QUEUES:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    const-string v0, "bcast_extra_running_urgent_process_queues"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    const-string v0, "bcast_max_consecutive_urgent_dispatches"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    const-string v0, "bcast_max_consecutive_normal_dispatches"

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    const-string v0, "bcast_max_running_active_broadcasts"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_RUNNING_ACTIVE_BROADCASTS:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    const-string v0, "bcast_max_core_running_blocking_broadcasts"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    const-string v0, "bcast_max_core_running_non_blocking_broadcasts"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    const-string v0, "bcast_max_pending_broadcasts"

    sget v2, Lcom/android/server/am/BroadcastConstants;->DEFAULT_MAX_PENDING_BROADCASTS:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    const-string v0, "bcast_delay_normal_millis"

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    const-string v0, "bcast_delay_cached_millis"

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    const-string v0, "bcast_delay_urgent_millis"

    const-wide/32 v2, -0x1d4c0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    const-string v0, "bcast_delay_foreground_proc_millis"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    const-string v0, "bcast_delay_persistent_proc_millis"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x200

    goto :goto_1

    :cond_1
    const/16 v0, 0x800

    :goto_1
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    const-string v0, "bcast_core_defer_until_active"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    const-string/jumbo v0, "pending_cold_start_check_interval_millis"

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastConstants;->getDeviceConfigLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p0, p0, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    sput-boolean p0, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateDeviceConfigConstants(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateDeviceConfigConstants()V

    return-void
.end method

.method public final updateSettingsConstants()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bcast_timeout"

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bcast_slow_time"

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bcast_deferral"

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bcast_deferral_decay_factor"

    iget v2, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bcast_deferral_floor"

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "bcast_allow_bg_activity_start_timeout"

    iget-wide v2, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BroadcastConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad broadcast settings in key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
