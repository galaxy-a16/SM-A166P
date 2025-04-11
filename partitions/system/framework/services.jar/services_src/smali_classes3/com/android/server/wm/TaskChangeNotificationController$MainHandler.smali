.class public Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 226
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 317
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskWindowingModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 309
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_OCCLUDES_PARENT_CHANGE_CALLBACK:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyOccludeChangeNotice(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 305
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyLockTaskModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 302
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskMovedToBack(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 299
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyOnActivityRotation(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 296
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 293
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskFocusChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 290
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskListFrozen(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 287
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskListUpdated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 284
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskDisplayChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 281
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyBackPressedOnTaskRoot(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 272
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayRerouted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 269
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayFailed(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 257
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityUnpinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 278
    :pswitch_f
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskSnapshotChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 275
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskProfileLocked(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 251
    :pswitch_11
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskRemovalStarted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 248
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 245
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskDescriptionChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 242
    :pswitch_14
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskMovedToFront(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 239
    :pswitch_15
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskRemoved(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 236
    :pswitch_16
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskCreated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 266
    :pswitch_17
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityDismissingDockedTask(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 263
    :pswitch_18
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityForcedResizable(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 260
    :pswitch_19
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityRestartAttempt(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 254
    :pswitch_1a
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyActivityPinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_0

    .line 233
    :pswitch_1b
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$fgetmNotifyTaskStackChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 322
    :cond_0
    :goto_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Lcom/android/internal/os/SomeArgs;

    if-eqz p1, :cond_1

    .line 323
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
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
    .end packed-switch
.end method
