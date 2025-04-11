.class public Lcom/android/server/BatteryService$10;
.super Landroid/os/Handler;
.source "BatteryService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1118
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1125
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->-$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V

    goto :goto_0

    .line 1121
    :cond_1
    iget-object p0, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V

    :goto_0
    return-void
.end method
