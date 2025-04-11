.class public final Lcom/android/server/battery/sleepcharging/SleepChargingManager;
.super Ljava/lang/Object;
.source "SleepChargingManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final FULL_CHARGE_BATTERY_LEVEL:I

.field public final MSG_UPDATE_CHARGING_INFO:I

.field public final MSG_UPDATE_DISMISS:I

.field public final NOT_USED_MINUTES:I

.field public final THRESHOLD_BATTERY_LEVEL:I

.field public final TIME_TO_CHARGING_STABLE:J

.field public mBatteryLevel:I

.field public mChargeStartTime:J

.field public mContext:Landroid/content/Context;

.field public mDeliveredHandler:Landroid/os/Handler;

.field public mHandler:Landroid/os/Handler;

.field public mIsBatteryLevelHighEnough:Z

.field public mIsCharging:Z

.field public mIsChargingStable:Z

.field public mIsSleepCharging:Z

.field public mIsUserDismissSleepCharging:Z

.field public mMinutesToFullCharge:I

.field public mPlugType:I

.field public mSecondsToFullCharge:J

.field public mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

.field public mTheNextAlarmChagned:Z

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUserDismissSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSleepChargingTimeController(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBatteryLevel(Lcom/android/server/battery/sleepcharging/SleepChargingManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmChargeStartTime(Lcom/android/server/battery/sleepcharging/SleepChargingManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsUserDismissSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPlugType(Lcom/android/server/battery/sleepcharging/SleepChargingManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mPlugType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSecondsToFullCharge(Lcom/android/server/battery/sleepcharging/SleepChargingManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTheNextAlarmChagned(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->processConditions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendResultOff(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->sendResultOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->MSG_UPDATE_CHARGING_INFO:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->MSG_UPDATE_DISMISS:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->FULL_CHARGE_BATTERY_LEVEL:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->NOT_USED_MINUTES:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TIME_TO_CHARGING_STABLE:J

    sget-object v2, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    const-string v3, "SleepChargingManager CreatedVERSION:231116+"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VERSION:231116+ ,elapsedRealtime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/log/battery_service/sleep_charging_history"

    const-string v5, "SleepChargingManager Created"

    invoke-static {v4, v5, v3}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "protectionThreshold:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,TIME_TO_CHARGING_STABLE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->THRESHOLD_BATTERY_LEVEL:I

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SleepChargingWorkerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->makeHandler()V

    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    iget-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    const-string v1, "[end]"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SleepChargingManager end"

    const-string v1, ""

    const-string v2, "/data/log/battery_service/sleep_charging_history"

    invoke-static {v2, v0, v1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->end()V

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public getInfoAll(Z)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getInfo]includeSleepPatterns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SleepChargingManager]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsSleepCharging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsUserDismissSleepCharging:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPlugType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mPlugType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,mIsCharging:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mChargeStartTime:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ,mIsChargingStable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBatteryLevel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,mIsBatteryLevelHighEnough:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSecondsToFullCharge:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ,mMinutesToFullCharge:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {p0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getInfo(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makeHandler()V
    .locals 2

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    const-string v1, "[makeHandler]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public modifySleepPatternsForTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    const-string v1, "[modifySleepPatternsForTest]"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final parseChargingInfo()V
    .locals 7

    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mPlugType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_1

    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    goto :goto_2

    :cond_1
    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    :goto_2
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->THRESHOLD_BATTERY_LEVEL:I

    if-lt v0, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    iget-wide v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    const-wide/16 v2, 0x3b

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    return-void
.end method

.method public final processConditions()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->parseChargingInfo()V

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processConditions]charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,stable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,levelEnough:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,minsToFull:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,dismiss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,alarmChagned:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    const-string v2, "/data/log/battery_service/sleep_charging_history"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    const/4 v5, -0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v1, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isNowSleepChargingTime(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mTheNextAlarmChagned:Z

    if-eqz v1, :cond_0

    const-string v1, "[processConditions] ON -> ON (Alarm Changed)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(ZI)V

    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->sendResultUpdate()V

    goto :goto_0

    :cond_0
    const-string p0, "[processConditions] ON -> ON"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "[processConditions] ON -> OFF"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateDismissSleepCharging()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(ZI)V

    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->sendResultOff()V

    const-string v0, "ON -> OFF"

    invoke-virtual {p0, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsCharging:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsChargingStable:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsBatteryLevelHighEnough:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    iget v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    invoke-virtual {v1, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isNowSleepChargingTime(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "[processConditions] OFF -> ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mMinutesToFullCharge:I

    invoke-virtual {v0, v3, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->updateSleepChargingEndTime(ZI)V

    invoke-virtual {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->sendResultOn()V

    const-string v0, "OFF -> ON"

    invoke-virtual {p0, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p0, "[processConditions] OFF -> OFF"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final sendResultOff()V
    .locals 2

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    const-string v1, "[sendResultOff]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isTodaySleepChargingFinished()Z

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendResultOn()V
    .locals 3

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    const-string v1, "[sendResultOn]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getSleepChargingEndTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->convertLocalDateTimeToHHmmString(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendResultUpdate()V
    .locals 3

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    const-string v1, "[sendResultUpdate]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->getSleepChargingEndTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->convertLocalDateTimeToHHmmString(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mDeliveredHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateChargingInfo(IJIJ)V
    .locals 10

    move-object v1, p0

    iget-object v8, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;

    move-object v0, v9

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IJIJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateDismiss()V
    .locals 2

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->TAG:Ljava/lang/String;

    const-string v1, "[updateDismiss]"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
