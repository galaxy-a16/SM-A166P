.class public final Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 1

    .line 600
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 601
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 606
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmCallback(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;

    move-result-object v0

    .line 607
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 p1, 0x3

    const/high16 v3, 0x4000000

    if-eq v1, p1, :cond_1

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_6

    .line 637
    invoke-interface {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryStatsReset()V

    .line 639
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmSystemServicesReady(Lcom/android/server/power/stats/BatteryStatsImpl;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 640
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.samsung.server.BatteryStatsService.action.BATTERYSTATS_RESET"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 642
    invoke-interface {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_6

    .line 621
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCharging:Z

    if-eqz v1, :cond_2

    const-string v1, "android.os.action.CHARGING"

    goto :goto_0

    :cond_2
    const-string v1, "android.os.action.DISCHARGING"

    .line 624
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    invoke-interface {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    .line 629
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmSystemServicesReady(Lcom/android/server/power/stats/BatteryStatsImpl;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 630
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fputmPendingReportCharging(Lcom/android/server/power/stats/BatteryStatsImpl;Z)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 624
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    if-eqz v0, :cond_6

    .line 615
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 610
    invoke-interface {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    :cond_6
    :goto_2
    return-void
.end method
