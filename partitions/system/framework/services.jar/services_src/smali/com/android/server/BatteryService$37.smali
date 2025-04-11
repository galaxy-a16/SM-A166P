.class public Lcom/android/server/BatteryService$37;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCurrentBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmCurrentBatteryUsage(Lcom/android/server/BatteryService;J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, v1, v4

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v0, v4}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryUsageFromEfsLocked(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-static {v0, v4, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryUsage(Lcom/android/server/BatteryService;J)V

    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryType(Lcom/android/server/BatteryService;)I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x14

    const-wide/16 v4, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "/sys/class/power_supply/sec_auth/batt_discharge_level"

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryType(Lcom/android/server/BatteryService;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "/sys/class/power_supply/sbp-fg/cycle"

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v7, "/efs/FactoryApp/batt_discharge_level"

    mul-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetFEATURE_SAVE_BATTERY_CYCLE()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v6}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryType(Lcom/android/server/BatteryService;)I

    move-result v6

    if-ne v6, v2, :cond_3

    iget-object p0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    goto :goto_2

    :cond_3
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_FULL_BATTERY_CYCLE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "/sys/class/power_supply/battery/battery_cycle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v6}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedFullBatteryDuration(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x2d0

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    div-long/2addr v1, v4

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_5
    :goto_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
