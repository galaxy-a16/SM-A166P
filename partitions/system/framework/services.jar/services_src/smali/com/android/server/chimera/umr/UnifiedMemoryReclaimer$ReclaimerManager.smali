.class public final Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# static fields
.field public static reclaimers:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$0keGwPkIxR4m1GD-O0Dk5Yv2Ldo(ILjava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->lambda$forEachReclaimersApplyPolicy$0(ILjava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;-><init>()V

    return-void
.end method

.method public static synthetic lambda$forEachReclaimersApplyPolicy$0(ILjava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 0

    .line 817
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 819
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized applyReclaimPolicy(I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    .line 806
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->forEachReclaimersApplyPolicy(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 808
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->forEachReclaimersApplyPolicy(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 810
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->forEachReclaimersApplyPolicy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 752
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->forEachReclaimersApplyPolicy(I)V

    .line 753
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->unregisterKernelReclaimers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final forEachReclaimersApplyPolicy(I)V
    .locals 1

    .line 815
    sget-object p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public getDefaultReclaimerMode()I
    .locals 1

    .line 794
    sget-object p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 798
    :cond_0
    :try_start_0
    sget-object p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->getMode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public getReclaimer(Ljava/lang/String;)Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;
    .locals 0

    .line 789
    sget-object p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;

    return-object p0
.end method

.method public getReclaimers()Ljava/util/HashMap;
    .locals 0

    .line 785
    sget-object p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    return-object p0
.end method

.method public init()V
    .locals 0

    .line 748
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->registerKernelReclaimers()V

    return-void
.end method

.method public final registerKernelReclaimers()V
    .locals 1

    .line 771
    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;

    invoke-direct {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->registerReclaimer(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    .line 773
    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer;->getDamonReclaimer()Lcom/android/server/chimera/umr/DamonReclaimer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->registerReclaimer(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public declared-synchronized registerReclaimer(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 3

    monitor-enter p0

    .line 757
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->getName()Ljava/lang/String;

    move-result-object v0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registering reclaimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 759
    sget-object v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 762
    :cond_0
    sget-object v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unregisterKernelReclaimers()V
    .locals 1

    .line 778
    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;

    invoke-direct {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->unregisterReclaimer(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    .line 780
    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer;->getDamonReclaimer()Lcom/android/server/chimera/umr/DamonReclaimer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->unregisterReclaimer(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public declared-synchronized unregisterReclaimer(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 2

    monitor-enter p0

    .line 766
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregistering reclaimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 767
    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
