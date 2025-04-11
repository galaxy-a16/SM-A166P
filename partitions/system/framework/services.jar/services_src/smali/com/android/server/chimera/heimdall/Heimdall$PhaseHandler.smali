.class public Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;
.super Landroid/os/Handler;
.source "Heimdall.java"


# instance fields
.field public final mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/Heimdall;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/os/Looper;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/os/Looper;Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public getNumberOfPendingMessages()I
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 145
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    invoke-static {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall;->-$$Nest$mprocessNextPhase(Lcom/android/server/chimera/heimdall/Heimdall;Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    :goto_0
    return-void
.end method

.method public requestNextPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 3

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 128
    iget-wide v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
