.class public final Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;
.super Ljava/lang/Thread;
.source "UnifiedMemoryReclaimer.java"


# instance fields
.field public needToExit:Z

.field public final synthetic this$0:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->this$0:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->needToExit:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;-><init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, "StatusMonitorThread start"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->needToExit:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$smwaitForStatusUpdate()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->needToExit:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->this$0:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-static {v1, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->-$$Nest$mupdatePressureInfo(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "StatusMonitorThread crashed!"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const-string p0, "StatusMonitorThread exited"

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void
.end method
