.class public Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;
.super Ljava/lang/Object;
.source "SleepChargingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

.field public final synthetic val$batteryLevel:I

.field public final synthetic val$chargeStartTime:J

.field public final synthetic val$plugType:I

.field public final synthetic val$secondsToFullCharge:J


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IJIJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iput p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    iput-wide p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$chargeStartTime:J

    iput p5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    iput-wide p6, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    invoke-static {v0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmPlugType(Lcom/android/server/battery/sleepcharging/SleepChargingManager;I)V

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-wide v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$chargeStartTime:J

    invoke-static {v0, v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmChargeStartTime(Lcom/android/server/battery/sleepcharging/SleepChargingManager;J)V

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    invoke-static {v0, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmBatteryLevel(Lcom/android/server/battery/sleepcharging/SleepChargingManager;I)V

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-wide v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    invoke-static {v0, v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fputmSecondsToFullCharge(Lcom/android/server/battery/sleepcharging/SleepChargingManager;J)V

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmIsSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmIsUserDismissSleepCharging(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmSleepChargingTimeController(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateChargingInfo]plugType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,chargeStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$chargeStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,batteryLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,secondsToFullCharge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
