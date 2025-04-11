.class public Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;
.super Landroid/content/BroadcastReceiver;
.source "SleepChargingTimeController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TimeReachedReceiver_onReceive]action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "ACTION_EXACT_NOTI_NOW_BED_TIME"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string p2, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string p2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
