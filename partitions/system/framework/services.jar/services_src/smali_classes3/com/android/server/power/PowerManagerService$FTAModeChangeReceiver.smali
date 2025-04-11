.class public final Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 7699
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "PowerManagerService"

    const-string v0, "[api] FTAModeChangeReceiver: onReceive: "

    .line 7702
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7703
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 7704
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    .line 7705
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7706
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmFTAMode(Lcom/android/server/power/PowerManagerService;Z)V

    const-string p1, "PowerManagerService"

    const-string v0, "FTA mode ON"

    .line 7707
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    .line 7708
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7709
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmFTAMode(Lcom/android/server/power/PowerManagerService;Z)V

    const-string p1, "PowerManagerService"

    const-string v0, "FTA mode OFF"

    .line 7710
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7712
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 7713
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 7714
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
