.class public Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;
.super Ljava/lang/Object;
.source "SleepChargingTimeController.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final mRuglarUpdateCheckTime:Ljava/time/LocalTime;


# instance fields
.field public final ACTION_EXACT_NOTI_NOW_BED_TIME:Ljava/lang/String;

.field public final ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME:Ljava/lang/String;

.field public final ACTION_EXACT_NOTI_NOW_UPDATE_TIME:Ljava/lang/String;

.field public final ACTION_EXACT_NOTI_NOW_WAKEUP_TIME:Ljava/lang/String;

.field public final MSG_NEXT_ALARM_CHANGED:I

.field public final MSG_NOW_BED_TIME:I

.field public final MSG_NOW_BETWEEN_SLEEP_TIME:I

.field public final MSG_NOW_SLEEP_CHARGING_END_TIME:I

.field public final MSG_NOW_WAKEUP_TIME:I

.field public final MSG_UPDATE_SLEEP_CHARGING_STATUS:I

.field public mContext:Landroid/content/Context;

.field public mDeliveredHandler:Landroid/os/Handler;

.field public mDeviceTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mHandler:Landroid/os/Handler;

.field public mIsEndCalled:Z

.field public mIsTodaySleepChargingFinished:Z

.field public mIsUserDismissSleepCharging:Z

.field public mNextAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

.field public mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

.field public mSavedMinutesToFullCharge:I

.field public mScheduledBedTime:Ljava/time/LocalDateTime;

.field public mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

.field public mScheduledUpdateTime:Ljava/time/LocalDateTime;

.field public mScheduledWakeupTime:Ljava/time/LocalDateTime;

.field public mSkipUpdateSleepPatternForTest:Z

.field public mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

.field public mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

.field public mSleepPatterns:Ljava/util/Map;

.field public mTimeReachedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeliveredHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEndCalled(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsTodaySleepChargingFinished(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUserDismissSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsUserDismissSleepCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextAlarmChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSkipUpdateSleepPatternForTest(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSkipUpdateSleepPatternForTest:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSleepPatterns(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsTodaySleepChargingFinished(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/time/LocalDateTime;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSleepPatterns(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/util/Map;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mactivateDeviceTimeChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateDeviceTimeChangedReceiver(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mactivateNextAlarmChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateNextAlarmChangedReceiver(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getNextAlarmDateTimeWithinSleepTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getSleepChargingStatus()Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSleepPatterns(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getSleepPatterns()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->reset(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTimeNoti(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    const/16 v0, 0x15

    .line 45
    iput v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->MSG_UPDATE_SLEEP_CHARGING_STATUS:I

    const/16 v1, 0x16

    .line 46
    iput v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->MSG_NEXT_ALARM_CHANGED:I

    const/16 v1, 0x17

    .line 47
    iput v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->MSG_NOW_BED_TIME:I

    const/16 v1, 0x18

    .line 48
    iput v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->MSG_NOW_BETWEEN_SLEEP_TIME:I

    const/16 v1, 0x19

    .line 49
    iput v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->MSG_NOW_WAKEUP_TIME:I

    const/16 v1, 0x1a

    .line 50
    iput v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->MSG_NOW_SLEEP_CHARGING_END_TIME:I

    const-string v1, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 71
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ACTION_EXACT_NOTI_NOW_UPDATE_TIME:Ljava/lang/String;

    const-string v1, "ACTION_EXACT_NOTI_NOW_BED_TIME"

    .line 72
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ACTION_EXACT_NOTI_NOW_BED_TIME:Ljava/lang/String;

    const-string v1, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 73
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ACTION_EXACT_NOTI_NOW_WAKEUP_TIME:Ljava/lang/String;

    const-string v1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 74
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME:Ljava/lang/String;

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 91
    sget-object v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v2, "SleepChargingTimeController Created"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRuglarUpdateCheckTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 97
    new-instance p3, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    invoke-direct {p3, p1}, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->makeHandler(Landroid/os/HandlerThread;)V

    const/4 p1, 0x1

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateTimeReachedReceiver(Z)V

    .line 103
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x1388

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public final activateDeviceTimeChangedReceiver(Z)V
    .locals 3

    .line 515
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[activateDeviceTimeChangedReceiver]activate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 517
    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$4;

    invoke-direct {p1, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$4;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 547
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 548
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 552
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 554
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method

.method public final activateNextAlarmChangedReceiver(Z)V
    .locals 3

    .line 461
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[activateNextAlarmChangedReceiver]activate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 463
    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$3;

    invoke-direct {p1, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$3;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 474
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 475
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 481
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method

.method public final activateTimeReachedReceiver(Z)V
    .locals 3

    .line 357
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[activateTimeReachedReceiver]activate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 359
    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    invoke-direct {p1, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 376
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ACTION_EXACT_NOTI_NOW_BED_TIME"

    .line 377
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 378
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 379
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 385
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method

.method public end()V
    .locals 2

    .line 107
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v1, "[end]"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateTimeReachedReceiver(Z)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->reset(Z)V

    return-void
.end method

.method public getInfo(Z)Ljava/lang/String;
    .locals 4

    .line 656
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getInfo]includeSleepPatterns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SleepChargingTimeController]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSleepPatterns.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 665
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 666
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    .line 667
    invoke-virtual {v2}, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 671
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    if-nez p1, :cond_1

    const-string p1, "SleepChargingStatus null\n"

    .line 672
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 674
    :cond_1
    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mgetInfo(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsTodaySleepChargingFinished:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNextAlarmDateTimeWithinSleepTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSavedMinutesToFullCharge:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSleepChargingEndDateTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScheduledUpdateTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScheduledBedTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledBedTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScheduledSleepChargingEndTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScheduledWakeupTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNextAlarmDateTimeWithinSleepTime()Ljava/time/LocalDateTime;
    .locals 5

    .line 487
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v1, "[getNextAlarmDateTimeWithinSleepTime]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Fail - AlarmManager null"

    .line 491
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 494
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "There is no next Alarm"

    .line 496
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 500
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    const/4 v1, 0x0

    .line 501
    invoke-static {v3, v4, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->convertMillisToLocalDateTime(JZ)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nextAlarmDateTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v4}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {v3}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetbedDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetwakeupDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {v1, v3, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->isDateTimeBetween(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Next Alarm is not within SleepTime"

    .line 506
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 509
    :cond_2
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, p0}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public getSleepChargingEndTime()Ljava/time/LocalDateTime;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getSleepChargingStatus()Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;
    .locals 9

    .line 325
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 329
    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v0, "Fail to get todaySleepPattern => Fail to getSleepChargingStatus"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 333
    :cond_0
    iget-wide v3, v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->convertMillisToLocalTime(JZ)Ljava/time/LocalTime;

    move-result-object v3

    .line 334
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v4

    .line 335
    invoke-static {v4, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v6}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 336
    sget-object v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getSleepChargingStatus]todayWakeupDateTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v7, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    if-eqz v7, :cond_1

    invoke-static {v7}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetmatchedDate(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDate;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/time/LocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {v7}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetwakeupDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 339
    invoke-virtual {v0, v7}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    .line 340
    invoke-virtual {v0, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "[getSleepChargingStatus]today SleepChargingStatus created"

    .line 350
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;Ljava/time/LocalDate;)V

    return-object v0

    :cond_3
    :goto_1
    const-wide/16 v3, 0x1

    .line 341
    invoke-virtual {v0, v3, v4}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    if-nez v1, :cond_4

    const-string p0, "Fail to get tomorrowSleepPattern => Fail to getSleepChargingStatus"

    .line 344
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    const-string v2, "[getSleepChargingStatus]tomorrow SleepChargingStatus created"

    .line 347
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;Ljava/time/LocalDate;)V

    return-object v2
.end method

.method public final getSleepPatterns()Ljava/util/Map;
    .locals 6

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 309
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    invoke-virtual {v2}, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->getSleepPatterns()Ljava/util/Map;

    move-result-object v2

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 311
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSleepPatterns]elapseMillis:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[getSleepPatterns]Fail"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->queryRunestoneStatus()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/data/log/battery_service/sleep_charging_history"

    const-string v1, "RunestoneStatus"

    .line 316
    invoke-static {v0, v1, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "[getSleepPatterns]Success"

    .line 319
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public isActivated()Z
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v0, "[isActivated]mIsTodaySleepChargingFinished true => false"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    if-nez v0, :cond_1

    .line 171
    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v0, "[isActivated]mSleepChargingStatus null => false"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 173
    :cond_1
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetisConfident(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v0, "[isActivated]mSleepChargingStatus Confident False => false"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 176
    :cond_2
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetisNowSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 177
    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v0, "[isActivated]mSleepChargingStatus isNowSleepTime False => false"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 180
    :cond_3
    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v0, "[isActivated]true"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isNowSleepChargingTime(I)Z
    .locals 5

    .line 186
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetexpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetbedDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->isDateTimeBetween(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Z

    move-result v0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 196
    iget p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    .line 197
    :cond_1
    sget-object v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isNowSleepChargingTime]alarm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,minsToFullCharge:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,sTime:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetbedDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ~ "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetwakeupDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ,sleepChargingEnd:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ,result: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isTodaySleepChargingFinished()Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    return p0
.end method

.method public final makeHandler(Landroid/os/HandlerThread;)V
    .locals 2

    .line 216
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v1, "[makeHandler]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public modifySleepPatternsForTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 623
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v1, "[modifySleepPatternsForTest]"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    if-nez v1, :cond_0

    const-string p0, "[modifySleepPatternsForTest]mPersonalPatternManager null"

    .line 625
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->-$$Nest$smgetMillisFromTimeString(Ljava/lang/String;)J

    move-result-wide v3

    .line 631
    invoke-static {p4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->-$$Nest$smgetMillisFromTimeString(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 p3, -0x1

    cmp-long v1, v3, p3

    if-eqz v1, :cond_4

    cmp-long p3, v5, p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 637
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, v7, p2

    const/4 p3, 0x1

    if-ltz p2, :cond_2

    move v8, p3

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    move v8, p2

    .line 640
    :goto_0
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->getSleepPattern(Ljava/lang/String;JJFZ)Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 644
    :cond_3
    iget-object p4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iput-boolean p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSkipUpdateSleepPatternForTest:Z

    const-string p2, "/data/log/battery_service/sleep_charging_history"

    const-string/jumbo p3, "modifySleepPatternsForTest"

    .line 647
    invoke-static {p2, p3, p1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "[modifySleepPatternsForTest]Parsing Fail"

    .line 633
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 650
    sget-object p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string p2, "[modifySleepPatternsForTest]Exception"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final reset(Z)V
    .locals 4

    .line 114
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reset]isEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateDeviceTimeChangedReceiver(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateNextAlarmChangedReceiver(Z)V

    const-string v1, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    const-string v1, "ACTION_EXACT_NOTI_NOW_BED_TIME"

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    const-string v1, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    const-string v1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 124
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 125
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsUserDismissSleepCharging:Z

    const-wide/16 v2, 0x3e8

    .line 128
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v2, "[reset]sleep exception"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 134
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setTimeNoti(Ljava/lang/String;)V
    .locals 7

    .line 391
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 393
    sget-object p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v0, "Fail - AlarmManager null"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 399
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "ACTION_EXACT_NOTI_NOW_BED_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 420
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    goto :goto_3

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetwakeupDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 415
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    goto :goto_3

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetbedDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 411
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledBedTime:Ljava/time/LocalDateTime;

    goto :goto_3

    .line 401
    :cond_4
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    sget-object v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 403
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_2

    .line 405
    :cond_5
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v5, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 407
    :goto_2
    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    .line 423
    :goto_3
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 424
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const/high16 v6, 0x4000000

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 426
    invoke-virtual {v0, v4, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 427
    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTimeNoti]action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,scheduledTime:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x60d45d7c -> :sswitch_3
        -0x5d653f6c -> :sswitch_2
        -0x2f5f68c6 -> :sswitch_1
        -0x119aed72 -> :sswitch_0
    .end sparse-switch
.end method

.method public final unsetTimeNoti(Ljava/lang/String;)V
    .locals 6

    .line 431
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unsetTimeNoti]action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    const-string p0, "Fail - AlarmManager null"

    .line 434
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 438
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "ACTION_EXACT_NOTI_NOW_BED_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    .line 450
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    goto :goto_2

    .line 446
    :cond_2
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    goto :goto_2

    .line 443
    :cond_3
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledBedTime:Ljava/time/LocalDateTime;

    goto :goto_2

    .line 440
    :cond_4
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    .line 453
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const/high16 p1, 0x4000000

    invoke-static {p0, v2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 455
    invoke-virtual {v1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60d45d7c -> :sswitch_3
        -0x5d653f6c -> :sswitch_2
        -0x2f5f68c6 -> :sswitch_1
        -0x119aed72 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateDismissSleepCharging()V
    .locals 2

    .line 140
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    const-string v1, "[updateDismissSleepCharging]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsUserDismissSleepCharging:Z

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateNextAlarmChangedReceiver(Z)V

    return-void
.end method

.method public updateSleepChargingEndTime(ZI)V
    .locals 4

    .line 147
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSleepChargingEndTime]isSleepCharging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,minutesToFullCharge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 151
    iput p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    .line 152
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetexpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object p1

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetexpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Ljava/time/LocalDateTime;

    move-result-object p1

    iget p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    .line 163
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[updateSleepChargingEndTime]mSleepChargingEndDateTime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
