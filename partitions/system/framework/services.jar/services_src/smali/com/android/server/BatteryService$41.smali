.class public Lcom/android/server/BatteryService$41;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$41;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/BatteryService$41;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$41;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryUsageFromEfsLocked(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/BatteryService$41;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLifeExtender(Lcom/android/server/BatteryService;)Z

    move-result v3

    const-wide/32 v4, 0xf4240

    if-eqz v3, :cond_0

    cmp-long v3, v1, v4

    if-gez v3, :cond_1

    add-long/2addr v4, v1

    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v6, "!@ + 10000 cycle"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    cmp-long v3, v1, v4

    if-ltz v3, :cond_1

    sub-long v4, v1, v4

    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v6, "!@ - 10000 cycle"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-wide v4, v1

    :goto_0
    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService$41;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    iget-object v1, p0, Lcom/android/server/BatteryService$41;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryUsage(Lcom/android/server/BatteryService;J)V

    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetFEATURE_SAVE_BATTERY_CYCLE()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/BatteryService$41;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "/sys/class/power_supply/battery/battery_cycle"

    const-wide/16 v2, 0x64

    div-long/2addr v4, v2

    invoke-static {p0, v1, v4, v5}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
