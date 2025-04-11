.class public Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$3;
.super Landroid/content/BroadcastReceiver;
.source "SleepChargingTimeController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NextAlarmChangedReceiver_onReceive]action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 468
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
