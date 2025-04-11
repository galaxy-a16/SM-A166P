.class public Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;
.super Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;
.source "CachedAppOptimizer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 1

    .line 1048
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const-string p1, "cachedAppOptimizer"

    const/4 v0, 0x0

    .line 1049
    invoke-direct {p0, p1, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onSuppressBegin()V
    .locals 1

    const-string p0, "CachedAppOptimizerReclaimer: suppress begin"

    const/4 v0, 0x0

    .line 1054
    invoke-static {p0, v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuppressEnd()V
    .locals 2

    const-string v0, "CachedAppOptimizerReclaimer: suppress end"

    const/4 v1, 0x0

    .line 1059
    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1060
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->compactAllDelayedCompactionProcesses()V

    return-void
.end method

.method public shouldSkipCompaction()Z
    .locals 0

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->isSuppressed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
