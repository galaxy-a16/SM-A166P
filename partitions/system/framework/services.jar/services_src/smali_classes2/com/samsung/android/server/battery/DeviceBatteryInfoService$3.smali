.class public Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceBatteryInfoService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;


# direct methods
.method public static synthetic $r8$lambda$DM2KJpkmjxXH108LRBPxPpy4I6M(Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->lambda$onReceive$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$IUl60l6IGm2MmkBGap9sr_H6YSI(Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->lambda$onReceive$1()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 2

    const-string v0, "DeviceBatteryInfoService"

    const-string/jumbo v1, "screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmWatchBatteryManager(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Lcom/samsung/android/server/battery/WatchBatteryManagerInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/WatchBatteryManagerInterface;->displayStateChanged(Z)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmFitBatteryManager(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Lcom/samsung/android/server/battery/FitBatteryManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/FitBatteryManager;->displayStateChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onReceive$1()V
    .locals 2

    const-string v0, "DeviceBatteryInfoService"

    const-string/jumbo v1, "screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmWatchBatteryManager(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Lcom/samsung/android/server/battery/WatchBatteryManagerInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/WatchBatteryManagerInterface;->displayStateChanged(Z)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmFitBatteryManager(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Lcom/samsung/android/server/battery/FitBatteryManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/FitBatteryManager;->displayStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "DeviceBatteryInfoService"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception occurred : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
