.class final Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e022e8b5b1c1e37L


# instance fields
.field final synthetic this$0:Lio/reactivex/subjects/h;


# direct methods
.method public constructor <init>(Lio/reactivex/subjects/h;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-object p0, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/b;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-boolean v0, v0, Lio/reactivex/subjects/h;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/subjects/h;->e:Z

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    invoke-virtual {v0}, Lio/reactivex/subjects/h;->b()V

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-object v0, v0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-object v0, v0, Lio/reactivex/subjects/h;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-object v0, v0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-boolean v0, p0, Lio/reactivex/subjects/h;->j:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/b;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-boolean p0, p0, Lio/reactivex/subjects/h;->e:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-object p0, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/b;->isEmpty()Z

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

    iget-object p0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    iget-object p0, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->this$0:Lio/reactivex/subjects/h;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/subjects/h;->j:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
