.class public Lcom/android/server/BatteryService$3$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$3;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$3;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/android/server/BatteryService$3$1;->this$1:Lcom/android/server/BatteryService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 807
    iget-object p0, p0, Lcom/android/server/BatteryService$3$1;->this$1:Lcom/android/server/BatteryService$3;

    iget-object p0, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V

    return-void
.end method
