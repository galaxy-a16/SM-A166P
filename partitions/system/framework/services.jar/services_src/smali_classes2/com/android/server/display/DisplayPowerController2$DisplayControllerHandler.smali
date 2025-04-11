.class public final Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController2.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController2;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController2;Landroid/os/Looper;)V
    .locals 1

    .line 4000
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4001
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 4006
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 4104
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerController2;->restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V

    goto/16 :goto_1

    .line 4098
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    goto/16 :goto_1

    .line 4091
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1, v2}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fputmSeamlessAodReady(Lcom/android/server/display/DisplayPowerController2;Z)V

    .line 4092
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    goto/16 :goto_1

    .line 4085
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1, v2}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fputmBootCompleted(Lcom/android/server/display/DisplayPowerController2;Z)V

    .line 4086
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    goto/16 :goto_1

    .line 4081
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mhandleOnSwitchUser(Lcom/android/server/display/DisplayPowerController2;I)V

    goto/16 :goto_1

    .line 4077
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController2;FI)V

    goto/16 :goto_1

    .line 4070
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4071
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result p1

    .line 4072
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController2;F)V

    goto/16 :goto_1

    .line 4066
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController2;)V

    goto/16 :goto_1

    .line 4059
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController2;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4062
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0, v1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController2;Z)V

    goto/16 :goto_1

    .line 4055
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController2;)V

    goto/16 :goto_1

    .line 4049
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmAutomaticBrightnessStrategy(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4050
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 4051
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    goto/16 :goto_1

    .line 4039
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/brightness/DisplayBrightnessController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4040
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setTemporaryBrightness(Ljava/lang/Float;)V

    .line 4041
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_1

    .line 4042
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[api] ForceSlowChange is requested from DisplayManager"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1, v2}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fputmForceSlowChange(Lcom/android/server/display/DisplayPowerController2;Z)V

    .line 4045
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    goto/16 :goto_1

    .line 4024
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 4026
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmAutomaticBrightnessStrategy(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v3, v0, v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 4028
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1, v2}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fputmResetBrightnessConfiguration(Lcom/android/server/display/DisplayPowerController2;Z)V

    .line 4029
    :cond_3
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmBrightnessTracker(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/BrightnessTracker;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4030
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmBrightnessTracker(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/BrightnessTracker;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 4032
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    .line 4031
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/server/display/BrightnessTracker;->setShouldCollectColorSample(Z)V

    .line 4034
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    goto :goto_1

    .line 4018
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_6

    .line 4019
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController2;)V

    .line 4020
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    goto :goto_1

    .line 4012
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_6

    .line 4013
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController2;)V

    .line 4014
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    goto :goto_1

    .line 4008
    :pswitch_f
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController2;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
