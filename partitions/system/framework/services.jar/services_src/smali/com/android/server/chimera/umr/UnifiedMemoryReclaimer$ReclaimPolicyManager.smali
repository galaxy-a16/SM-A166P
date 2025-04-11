.class public final Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# instance fields
.field public currentReclaimPolicy:I

.field public enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 832
    iput v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    .line 833
    iput-boolean v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->enabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 836
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 841
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->enabled:Z

    .line 842
    iput v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateReclaimPolicy()V
    .locals 7

    monitor-enter p0

    .line 846
    :try_start_0
    iget v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    .line 848
    iget-boolean v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->enabled:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$sfgetmSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 852
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$sfgetmSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->isInCameraLaunch()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 853
    iput v4, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    goto :goto_0

    .line 854
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$sfgetmSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->isInAppLaunch()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 855
    iput v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    goto :goto_0

    .line 856
    :cond_2
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$sfgetmSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->isCpuBusy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 857
    iput v3, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    goto :goto_0

    .line 858
    :cond_3
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$sfgetmSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->isMemFreeLow()Z

    move-result v1

    const/16 v6, 0x1388

    if-eqz v1, :cond_4

    .line 859
    iput v5, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    .line 860
    invoke-static {v4, v6}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$smsendMessage(II)V

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    .line 861
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$sfgetmSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v1

    .line 862
    invoke-virtual {v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->isMemFreeSafe()Z

    move-result v1

    if-nez v1, :cond_5

    .line 864
    iput v5, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    .line 865
    invoke-static {v4, v6}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$smsendMessage(II)V

    goto :goto_0

    .line 867
    :cond_5
    iput v2, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    .line 870
    :goto_0
    iget v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    if-eq v0, v1, :cond_6

    const-string v1, "ReclaimerPolicyManager: update policy %d -> %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 872
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    iget v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 871
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 873
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->applyReclaimPolicy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    :cond_6
    monitor-exit p0

    return-void

    .line 849
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
