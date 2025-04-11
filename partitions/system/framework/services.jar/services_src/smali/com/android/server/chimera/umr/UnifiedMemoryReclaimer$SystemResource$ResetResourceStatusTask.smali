.class public final Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;
.super Ljava/util/TimerTask;
.source "UnifiedMemoryReclaimer.java"


# instance fields
.field public expired:Z

.field public final synthetic this$0:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->this$0:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->expired:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;-><init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;)V

    return-void
.end method


# virtual methods
.method public hasExpired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->expired:Z

    return p0
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->expired:Z

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->this$0:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;

    invoke-static {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->-$$Nest$fgetname(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SystemResource[%s]: reset status"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->this$0:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;

    invoke-static {p0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;->-$$Nest$msetStatus(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemResource;I)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->updateSystemStatus()V

    return-void
.end method
