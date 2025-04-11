.class public Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;
.super Ljava/lang/Object;
.source "SleepChargingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
