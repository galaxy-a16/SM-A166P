.class public Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4;
.super Landroid/database/ContentObserver;
.source "DeviceBatteryInfoService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Landroid/os/Handler;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 259
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceBatteryInfoService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "aod_show_state"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmWatchBatteryManager(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Lcom/samsung/android/server/battery/WatchBatteryManagerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManagerInterface;->aodShowStateChanged(I)V

    .line 264
    invoke-static {}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$sfgetmOneUIVersion()I

    move-result v0

    const v1, 0xeac4

    if-lt v0, v1, :cond_0

    .line 265
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmFitBatteryManager(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Lcom/samsung/android/server/battery/FitBatteryManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/FitBatteryManager;->aodShowStateChanged(I)V

    .line 267
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aod_show_state : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 269
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
