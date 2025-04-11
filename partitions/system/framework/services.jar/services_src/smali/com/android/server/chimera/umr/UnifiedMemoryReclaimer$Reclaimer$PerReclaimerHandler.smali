.class public final Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;
.super Landroid/os/Handler;
.source "UnifiedMemoryReclaimer.java"


# instance fields
.field public final mReclaimer:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 715
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 716
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;->mReclaimer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 721
    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer$PerReclaimerHandler;->mReclaimer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;

    if-nez p0, :cond_0

    return-void

    .line 726
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 729
    :cond_1
    invoke-static {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->-$$Nest$mswitchMode(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerReclaimerHandler: failed to handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UMR"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
