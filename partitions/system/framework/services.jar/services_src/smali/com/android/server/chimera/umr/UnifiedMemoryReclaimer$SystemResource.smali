.class public final Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# instance fields
.field public cancelCount:I

.field public name:Ljava/lang/String;

.field public psiThresholdMS:I

.field public psiWindowMS:I

.field public resetResourceStatusTask:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

.field public status:I

.field public timer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetname(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetStatus(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->setStatus(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->status:I

    iput v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->cancelCount:I

    iput-object p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiThresholdMS:I

    iput p3, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->timer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public final cancelResetResourceStatusTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->resetResourceStatusTask:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->hasExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->resetResourceStatusTask:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SystemResource[%s]: cancel pre-scheduled task"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->cancelCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->cancelCount:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->timer:Ljava/util/Timer;

    invoke-virtual {p0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method

.method public getPsiThresholdMS()I
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiThresholdMS:I

    return p0
.end method

.method public getPsiWindowMS()I
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->status:I

    return p0
.end method

.method public isBusy()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->getStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final scheduleResetResourceStatusTask(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->cancelResetResourceStatusTask()V

    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;-><init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask-IA;)V

    iput-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->resetResourceStatusTask:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SystemResource[%s]: schedule reset in %dms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->timer:Ljava/util/Timer;

    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->resetResourceStatusTask:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public setBusy()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->setStatus(I)V

    iget v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    add-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->scheduleResetResourceStatusTask(I)V

    return-void
.end method

.method public setPsiThresholdMS(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiThresholdMS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SystemResource[%s]: update psiThresholdMS %d -> %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiThresholdMS:I

    return-void
.end method

.method public setPsiWindowMS(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SystemResource[%s]: update psiWindowMS %d -> %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->status:I

    return-void
.end method
