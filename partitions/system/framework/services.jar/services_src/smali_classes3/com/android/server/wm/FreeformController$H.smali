.class public final Lcom/android/server/wm/FreeformController$H;
.super Landroid/os/Handler;
.source "FreeformController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 456
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 461
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_b

    .line 568
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v2}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 569
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 570
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 571
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IRemoteCallback;

    .line 573
    iget-object v5, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v5}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    :goto_0
    if-ge v3, v5, :cond_0

    .line 575
    iget-object v6, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v6}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :try_start_1
    invoke-interface {v6, v4, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v6, "FreeformController"

    const-string/jumbo v7, "onTaskMoveEnded, RemoteException occurred"

    .line 579
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 583
    monitor-exit v2

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 549
    :pswitch_1
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v2}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 550
    :try_start_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 551
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 552
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    .line 554
    iget-object v5, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v5}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_1

    .line 556
    iget-object v6, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v6}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 558
    :try_start_4
    invoke-interface {v6, v4, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveStarted(ILandroid/graphics/Point;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_1
    :try_start_5
    const-string v6, "FreeformController"

    const-string/jumbo v7, "onTaskMoveStarted, RemoteException occurred"

    .line 560
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 563
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 564
    monitor-exit v2

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 531
    :pswitch_2
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v2}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 532
    :try_start_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 533
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 535
    iget-object v4, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v4}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    :goto_4
    if-ge v3, v4, :cond_2

    .line 537
    iget-object v5, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v5}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 539
    :try_start_7
    invoke-interface {v5, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimizeAnimationEnd(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catch_2
    :try_start_8
    const-string v5, "FreeformController"

    const-string/jumbo v6, "onMinimizeAnimationEnd, RemoteException occurred"

    .line 541
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 544
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 545
    monitor-exit v2

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 513
    :pswitch_3
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v2}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 514
    :try_start_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 515
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 517
    iget-object v4, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v4}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    :goto_6
    if-ge v3, v4, :cond_3

    .line 519
    iget-object v5, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v5}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 521
    :try_start_a
    invoke-interface {v5, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onUnminimized(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catch_3
    :try_start_b
    const-string v5, "FreeformController"

    const-string/jumbo v6, "onRestored, RemoteException occurred"

    .line 523
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 526
    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 527
    monitor-exit v2

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 490
    :pswitch_4
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v2}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 491
    :try_start_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 492
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    .line 493
    iget v13, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 494
    iget v14, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 495
    iget v15, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 496
    iget v12, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 497
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne v1, v4, :cond_4

    goto :goto_8

    :cond_4
    move v4, v3

    .line 499
    :goto_8
    iget-object v1, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v1}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_9
    if-ge v3, v1, :cond_5

    .line 501
    iget-object v6, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v6}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v7, v5

    move v8, v13

    move v9, v14

    move v10, v15

    move v11, v12

    move/from16 v16, v12

    move v12, v4

    .line 503
    :try_start_d
    invoke-interface/range {v6 .. v12}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimized(Landroid/content/ComponentName;IIIIZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_a

    :catch_4
    :try_start_e
    const-string v6, "FreeformController"

    const-string/jumbo v7, "onMinimized, RemoteException occurred"

    .line 505
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move/from16 v12, v16

    goto :goto_9

    .line 508
    :cond_5
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 509
    monitor-exit v2

    goto :goto_b

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    .line 482
    :pswitch_5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v2, :cond_7

    .line 483
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmSmartPopupViewServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;

    move-result-object v0

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_b

    .line 477
    :pswitch_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v2, :cond_7

    .line 478
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmSmartPopupViewServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;

    move-result-object v0

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_b

    .line 470
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmMinimizeContainerServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;

    move-result-object v0

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_b

    .line 465
    :pswitch_8
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmMinimizeContainerServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;

    move-result-object v0

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_b

    .line 589
    :cond_6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v2}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v1, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 591
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040468

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
