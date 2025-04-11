.class public final Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;
.super Landroid/content/BroadcastReceiver;
.source "DamonReclaimer.java"


# instance fields
.field public final PROACTIVE_RECLAIM_BATTERY_THRESHOLD:I

.field public final PROACTIVE_RECLAIM_TIMEOUTMS:I

.field public mLastCheckTime:J

.field public mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

.field public mSystemStatus:I

.field public final synthetic this$0:Lcom/android/server/chimera/umr/DamonReclaimer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPolicyHandler(Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;)Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSystemStatus(Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->getSystemStatus()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/chimera/umr/DamonReclaimer;)V
    .locals 2

    .line 688
    iput-object p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->this$0:Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo p1, "ro.sys.kernelmemory.umr.proactive_reclaim_battery_threshold"

    const/16 v0, 0x46

    .line 656
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->PROACTIVE_RECLAIM_BATTERY_THRESHOLD:I

    const-string/jumbo p1, "ro.sys.kernelmemory.umr.proactive_reclaim_timeoutms"

    const v0, 0x2bf20

    .line 658
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->PROACTIVE_RECLAIM_TIMEOUTMS:I

    const/4 p1, 0x0

    .line 686
    iput-object p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    const/4 p1, 0x0

    .line 690
    iput p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mLastCheckTime:J

    .line 692
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->initDamonPolicyHandler()V

    return-void
.end method


# virtual methods
.method public final destroyDamonPolicyHandler()V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 726
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 728
    iput-object v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 698
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->destroyDamonPolicyHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 701
    throw v0
.end method

.method public declared-synchronized getDamonEnableTimeout()I
    .locals 4

    monitor-enter p0

    .line 751
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDamonEnableTimeout entry mSystemStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->this$0:Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->isProactive()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "getDamonEnableTimeout: it is not proactive"

    .line 754
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    monitor-exit p0

    return v1

    .line 760
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    if-eqz v0, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    const/16 v2, 0x14

    const v3, 0x2bf20

    if-eq v0, v2, :cond_1

    const/4 v0, 0x5

    .line 771
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->unsetBitsToCheck(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_3

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const v1, 0x15f90

    .line 776
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStartReason()Ljava/lang/String;
    .locals 2

    .line 786
    iget p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    const-string v0, "HOME_SCREEN"

    if-eqz p0, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "CHARGER_CONNECTED_SCREEN_OFF"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getSystemStatus()I
    .locals 0

    .line 819
    iget p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    return p0
.end method

.method public handleDamonDisable()Z
    .locals 2

    const-string v0, "handleDamonDisable: sending stop message"

    .line 740
    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 741
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->_sendMessage(Landroid/os/Handler;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public handleDamonEnable()Z
    .locals 2

    const-string v0, "handleDamonEnable: sending start message"

    .line 733
    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 734
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->_sendMessage(Landroid/os/Handler;II)V

    return v1
.end method

.method public final initDamonPolicyHandler()V
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    if-eqz v0, :cond_0

    return-void

    .line 712
    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "UMR_DAMON_POLICY_HANDLER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 714
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 715
    new-instance v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;-><init>(Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 838
    iget v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    .line 839
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v1, v8

    goto :goto_1

    :sswitch_0
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v7

    goto :goto_1

    :sswitch_5
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 841
    :pswitch_0
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 842
    invoke-virtual {p0, v5}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->setBits(I)V

    goto :goto_2

    .line 844
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->unsetBits(I)V

    goto :goto_2

    .line 870
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->setBits(I)V

    goto :goto_2

    .line 867
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->unsetBits(I)V

    goto :goto_2

    .line 850
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mLastCheckTime:J

    sub-long/2addr v1, v4

    const-wide/32 v4, 0x2bf20

    cmp-long p1, v1, v4

    if-gez p1, :cond_7

    goto :goto_2

    .line 853
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mLastCheckTime:J

    const-string/jumbo p1, "level"

    .line 854
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v1, "scale"

    .line 855
    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 857
    iget p2, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->PROACTIVE_RECLAIM_BATTERY_THRESHOLD:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_8

    .line 858
    invoke-virtual {p0, v7}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->setBits(I)V

    goto :goto_2

    .line 860
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->unsetBits(I)V

    goto :goto_2

    .line 873
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->unsetBits(I)V

    goto :goto_2

    .line 864
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->setBits(I)V

    .line 877
    :goto_2
    iget p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    if-eq v0, p1, :cond_9

    .line 878
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    invoke-static {p0, v7, v3}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->_sendMessage(Landroid/os/Handler;II)V

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_5
        -0x7073f927 -> :sswitch_4
        -0x5bb23923 -> :sswitch_3
        0x311a1d6c -> :sswitch_2
        0x3cbf870b -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAppStart(Z)V
    .locals 2

    .line 803
    iget v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->setBits(I)V

    const/4 p1, 0x0

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->unsetBits(I)V

    const/16 p1, 0x7d0

    .line 813
    :goto_0
    iget v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    if-eq v0, v1, :cond_1

    .line 814
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mPolicyHandler:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->_sendMessage(Landroid/os/Handler;II)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized setBits(I)V
    .locals 2

    monitor-enter p0

    .line 823
    :try_start_0
    iget v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unsetBits(I)V
    .locals 2

    monitor-enter p0

    .line 827
    :try_start_0
    iget v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unsetBitsToCheck(I)I
    .locals 2

    monitor-enter p0

    .line 831
    :try_start_0
    iget v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->mSystemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    .line 833
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
