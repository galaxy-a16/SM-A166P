.class public Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/wc_param_info"

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$mreadFromFile(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wireless_wc_write"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmWcParamOffset(Lcom/android/server/BatteryService;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wireless_wc_write onchanged"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object p0, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, v1}, Lcom/android/server/BatteryService;->-$$Nest$msetWcParamInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
