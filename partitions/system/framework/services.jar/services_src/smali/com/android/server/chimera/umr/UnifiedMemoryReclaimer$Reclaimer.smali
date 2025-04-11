.class public abstract Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# static fields
.field public static final CONTROL_STRINGS:[Ljava/lang/String;

.field public static final MODE_STRINGS:[Ljava/lang/String;


# instance fields
.field public controlStatus:I

.field public efficiency:I

.field public mPerReclaimerHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;

.field public mode:I

.field public final name:Ljava/lang/String;

.field public nextMode:I


# direct methods
.method public static bridge synthetic -$$Nest$mswitchMode(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->switchMode()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "disabled"

    const-string v1, "enabled"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    const-string/jumbo v0, "suppressed"

    const-string/jumbo v1, "proactive"

    const-string v2, "default"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->MODE_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    iput v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    iput v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->nextMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mPerReclaimerHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;

    iput-object p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    return-void
.end method

.method public static _sendMessage(Landroid/os/Handler;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$smsendMessage(Landroid/os/Handler;II)V

    return-void
.end method

.method public static isUMRDisabled()Z
    .locals 1

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$sfgetDISABLED()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final __setControlStatus(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->initPerReclaimerHandler()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->switchModeAsync(I)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    return-void
.end method

.method public dumpInfo(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized getNextMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->nextMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getReclaimerProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->reclaimerPropertyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public final initPerReclaimerHandler()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mPerReclaimerHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UMR_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;-><init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mPerReclaimerHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProactive()Z
    .locals 1

    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuppressed()Z
    .locals 1

    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDefaultBegin()V
    .locals 0

    return-void
.end method

.method public onDefaultEnd()V
    .locals 0

    return-void
.end method

.method public onProactiveBegin()V
    .locals 0

    return-void
.end method

.method public onProactiveEnd()V
    .locals 0

    return-void
.end method

.method public onSuppressBegin()V
    .locals 0

    return-void
.end method

.method public onSuppressEnd()V
    .locals 0

    return-void
.end method

.method public final reclaimerPropertyStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.sys.kernelmemory.umr.reclaimer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerEvents(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setControlStatus(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(ILandroid/content/Context;)V

    return-void
.end method

.method public setControlStatus(ILandroid/content/Context;)V
    .locals 7

    const-string v0, "enabled"

    :try_start_0
    const-string v1, "%s: controlStatus=%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->getReclaimerProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "  failed: %s=%s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->reclaimerPropertyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object v1, p2, v6

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->__setControlStatus(I)V

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->registerEvents(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEfficiency(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    return-void
.end method

.method public setMode(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->switchModeAsync(I)V

    return-void
.end method

.method public final declared-synchronized setNextMode(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->nextMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final switchMode()V
    .locals 5

    iget v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->getNextMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s: switchMode: %d -> %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->onProactiveEnd()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->onSuppressEnd()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->onDefaultEnd()V

    :goto_0
    iput v1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->onProactiveBegin()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->onSuppressBegin()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->onDefaultBegin()V

    :goto_1
    return-void
.end method

.method public final switchModeAsync(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->setNextMode(I)V

    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mPerReclaimerHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->-$$Nest$smsendMessage(Landroid/os/Handler;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    sget-object v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->MODE_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    aget-object v2, v2, v3

    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: %s, %s, %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateMemorySafeThreshold(J)V
    .locals 0

    return-void
.end method
