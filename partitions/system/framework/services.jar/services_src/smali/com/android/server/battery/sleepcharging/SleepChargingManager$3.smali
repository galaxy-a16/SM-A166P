.class public Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;
.super Landroid/os/Handler;
.source "SleepChargingManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scm_handleMessage]msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p1, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmTheNextAlarmChagned(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Z)V

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmTheNextAlarmChagned(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmIsSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "[scm_handleMessage]ON -> OFF (for reset)"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmIsSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Z)V

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$msendResultOff(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmIsUserDismissSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Z)V

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-virtual {p1, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/data/log/battery_service/sleep_charging_history"

    const-string v1, "Updated & Reset"

    invoke-static {v0, v1, p1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmIsSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p1, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmIsUserDismissSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Z)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$mprocessConditions(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
