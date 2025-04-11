.class public Lcom/android/server/BatteryService$36;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!@[BatteryInfo] initBatteryInfo()"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryType(Lcom/android/server/BatteryService;)I

    move-result v1

    const/16 v2, 0x14

    const-wide/16 v3, 0x64

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "/sys/class/power_supply/sbp-fg/cycle"

    invoke-static {v1, v5}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v7, "/efs/FactoryApp/batt_discharge_level"

    mul-long v8, v5, v3

    invoke-static {v1, v7, v8, v9}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v1, v5}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryUsageFromEfsLocked(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryUsage(Lcom/android/server/BatteryService;J)V

    const-string v1, "/efs/FactoryApp/batt_beginning_date"

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$smisFileSupported(Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0x1b0

    const/16 v6, 0x3e8

    if-eqz v1, :cond_1

    const-string v1, "/efs/FactoryApp/batt_beginning_date"

    invoke-static {v1, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    const-string v1, "/efs/FactoryApp/HwParamBattQR"

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$smisFileSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/efs/FactoryApp/HwParamBattQR"

    invoke-static {v1, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    const-wide/16 v5, -0x1

    :goto_0
    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_FULL_BATTERY_CYCLE:Z

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "/efs/FactoryApp/batt_full_status_usage"

    invoke-static {v7, v8}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryUsageFromEfsLocked(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedFullBatteryDuration(Lcom/android/server/BatteryService;J)V

    :cond_3
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetFEATURE_SAVE_BATTERY_CYCLE()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryType(Lcom/android/server/BatteryService;)I

    move-result v7

    if-ne v7, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {v1, v2, v5, v6}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v6}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    div-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedFullBatteryDuration(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    const-wide/16 v6, 0x2d0

    div-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryMaxCurrentFromEfsLocked(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;J)V

    iget-object p0, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryMaxTempFromEfsLocked(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryMaxTemp(Lcom/android/server/BatteryService;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
