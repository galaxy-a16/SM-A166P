.class public Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;
.super Landroid/os/Handler;
.source "SleepChargingTimeController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Landroid/os/Looper;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 220
    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sct_handleMessage]msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 298
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fputmIsTodaySleepChargingFinished(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V

    .line 299
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mactivateNextAlarmChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V

    .line 300
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmDeliveredHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 289
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fputisNowSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;Z)V

    .line 291
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mactivateNextAlarmChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V

    .line 292
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fputmNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/time/LocalDateTime;)V

    .line 294
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 279
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fputisNowSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;Z)V

    .line 281
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fputmNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/time/LocalDateTime;)V

    .line 282
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 283
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mactivateNextAlarmChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V

    .line 285
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmDeliveredHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 261
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmNextAlarmChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    if-nez p1, :cond_0

    .line 262
    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "alarm receiver already disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 266
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$Util;->isEqualDateTime(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "The Next Alarm Not Changed"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 270
    :cond_1
    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Next Alarm Changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {v0, p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fputmNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/time/LocalDateTime;)V

    .line 273
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 274
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmDeliveredHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x1d

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 224
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mreset(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V

    .line 225
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmIsEndCalled(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 226
    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sct_handleMessage]isEndCalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmIsEndCalled(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSkipUpdateSleepPatternForTest(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 231
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetSleepPatterns(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fputmSleepPatterns(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/util/Map;)V

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepPatterns(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 235
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fputmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    goto :goto_0

    .line 237
    :cond_4
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mactivateDeviceTimeChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V

    .line 238
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fputmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 241
    :goto_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 242
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetisConfident(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 243
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$fgetisNowSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 244
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fputmNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/time/LocalDateTime;)V

    .line 245
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 246
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p1, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mactivateNextAlarmChangedReceiver(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Z)V

    goto :goto_1

    .line 248
    :cond_5
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    const-string v0, "ACTION_EXACT_NOTI_NOW_BED_TIME"

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$msetTimeNoti(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_6
    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[sct_handleMessage]not confident => only wait for wakeup time"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_1
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    const-string v0, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$msetTimeNoti(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/lang/String;)V

    goto :goto_2

    .line 255
    :cond_7
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    invoke-static {p1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$msetTimeNoti(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Ljava/lang/String;)V

    .line 257
    :goto_2
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-static {p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$fgetmDeliveredHandler(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x1b

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
