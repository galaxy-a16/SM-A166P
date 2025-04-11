.class public Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 982
    iget-object v0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 985
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLifeExtender(Lcom/android/server/BatteryService;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 986
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "!@battery life extender used before!"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmLifeExtender(Lcom/android/server/BatteryService;Z)V

    .line 989
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandlerForBatteryInfoBackUp(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v4, v4, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-$$Nest$fgetmUpdateBatteryUsageExtenderRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v2, "protect_battery"

    const/4 v4, -0x2

    .line 990
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 993
    :cond_0
    sget-boolean v2, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    if-eqz v2, :cond_3

    .line 995
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmProtectBatteryMode(Lcom/android/server/BatteryService;)I

    move-result v2

    .line 996
    iget-object v4, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v4, v4, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v5, "protect_battery"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v4, v1}, Lcom/android/server/BatteryService;->-$$Nest$fputmProtectBatteryMode(Lcom/android/server/BatteryService;I)V

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmProtectBatteryMode(Lcom/android/server/BatteryService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG_SS()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery Protect Mode Changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/data/log/battery_service/sleep_charging_history"

    const-string v3, "Battery Protect Mode Changed"

    .line 1000
    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$mwriteProtectBatteryValues(Lcom/android/server/BatteryService;)V

    .line 1003
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmIsUnlockedBootCompleted(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmProtectBatteryMode(Lcom/android/server/BatteryService;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;-><init>(Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$2;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$2;-><init>(Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1020
    :cond_2
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG_SS()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Battery Protect Mode Changed before UnlockedBootCompleted => ignored"

    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1025
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "protect_battery"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmFullCapacityEnable(Lcom/android/server/BatteryService;Z)V

    .line 1026
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG_SS()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@mFullCapacityEnable Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmFullCapacityEnable(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandlerForBatteryInfoBackUp(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object p0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmUpdateBatteryUsageFullCapacityEnableRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1029
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
