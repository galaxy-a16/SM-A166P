.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;
.super Landroid/os/Handler;
.source "SleepModePolicyController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 595
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 600
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 641
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleBootCompleteEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 638
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleWakeupEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleProbablyAsleepEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 632
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleBeforeBedtimeEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 629
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandlePackageRemovedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 626
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleSleepModeExitEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 617
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleTimeChangedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 614
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleSetTimeEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Message;)V

    goto :goto_0

    .line 620
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleStatusCheckEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 623
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleIdleChangedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 611
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleAlarmEndEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 608
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleAlarmStartEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 605
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleSleepModeStopEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    goto :goto_0

    .line 602
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mhandleSleepModeStartEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
