.class final Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;
.super Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x43f4c9bf08ec328eL


# instance fields
.field final synthetic this$0:Lio/reactivex/rxjava3/processors/g;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/processors/g;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/processors/g;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/rxjava3/processors/g;->h:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-object v0, v0, Lio/reactivex/rxjava3/processors/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-object v0, v0, Lio/reactivex/rxjava3/processors/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-object v0, v0, Lio/reactivex/rxjava3/processors/g;->j:Lio/reactivex/rxjava3/internal/subscriptions/BasicIntQueueSubscription;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-object v0, v0, Lio/reactivex/rxjava3/processors/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/g;->l:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/operators/g;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/operators/g;->clear()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/operators/g;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/operators/g;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/operators/g;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/operators/g;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/g;->b:Lio/reactivex/rxjava3/operators/g;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/operators/g;->poll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public request(J)V
    .locals 1

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    iget-object v0, v0, Lio/reactivex/rxjava3/processors/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lh3/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/g;->f()V

    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/UnicastProcessor$UnicastQueueSubscription;->this$0:Lio/reactivex/rxjava3/processors/g;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/processors/g;->l:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
