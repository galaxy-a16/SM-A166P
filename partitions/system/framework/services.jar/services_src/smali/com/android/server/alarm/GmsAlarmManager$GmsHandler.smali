.class public Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "GmsAlarmManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ","

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "GmsAlarmManager"

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkForceReset(Lcom/android/server/alarm/GmsAlarmManager;)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mforceWakeLockBlackListReset(Lcom/android/server/alarm/GmsAlarmManager;)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmUserEnable(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckOnceMultiUserid(Lcom/android/server/alarm/GmsAlarmManager;)V

    goto/16 :goto_6

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$menableMultiUserGmsRestriction(Lcom/android/server/alarm/GmsAlarmManager;I)V

    goto/16 :goto_6

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mdisableMultiUserGmsRestriction(Lcom/android/server/alarm/GmsAlarmManager;I)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mupdateSCPMParametersFromDB(Lcom/android/server/alarm/GmsAlarmManager;)V

    goto/16 :goto_6

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mbigData(Lcom/android/server/alarm/GmsAlarmManager;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.gmsalarmmanager"

    const-string v2, "GNET"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$minsertLog(Lcom/android/server/alarm/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-wide/32 v0, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V

    goto/16 :goto_6

    :pswitch_7
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNetByUncharging()V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisCharging(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_6

    :pswitch_8
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNetByCharging()V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisCharging(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_6

    :pswitch_9
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GMS-CORE] MSG_ENABLE_GMS_NETWORK:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGmsPkgUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmVendingUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmConfigupdaterUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNet()V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendIntentToIBS(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetWakeLockBlackListEnableDisable(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_6

    :pswitch_a
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v3}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    :cond_6
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GMS-CORE] MSG_DISABLE_GMS_NETWORK:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGmsPkgUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmVendingUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmConfigupdaterUid(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNet()V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :cond_8
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendIntentToIBS(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, v3}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetWakeLockBlackListEnableDisable(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto/16 :goto_6

    :pswitch_b
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmUserEnable(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$misWifiConnected(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    const-wide/32 v0, 0xdbba0

    invoke-virtual {p1, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    const-wide/32 v0, 0x1b7740

    invoke-virtual {p1, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_6

    :cond_b
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisChinaMode(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$misChnSimOrNoSim(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetisHongKongMode(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$misChnSim(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_d
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-string v1, "https://www.google.com/"

    invoke-static {v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckGoogleNetwork(Lcom/android/server/alarm/GmsAlarmManager;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GMS-CORE] China or hongkong mode and google network return: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_f

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_f

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_e

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto :goto_2

    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto :goto_2

    :cond_10
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v6}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :goto_2
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "[GMS-CORE] net work google can net"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_12
    const-string v0, "[GMS-CORE] net work google no net"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object v0, v0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/GmsAlarmManager;->parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    const-string v0, "[GMS-CORE] no net work"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_14
    :goto_4
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v0, v5}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetavaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_5

    :cond_15
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetnoAvaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :goto_5
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetnoAvaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_6

    :cond_16
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetavaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
