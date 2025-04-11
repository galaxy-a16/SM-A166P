.class public abstract Ll6/a;
.super Lh/e;
.source "SourceFile"

# interfaces
.implements Leb/d;
.implements Lvc/d;
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Lvc/c;

.field public final e:Ll6/c;

.field public final f:Z

.field public g:J

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public j:Z

.field public k:Ljava/lang/Throwable;

.field public l:I

.field public m:I

.field public n:J

.field public p:Z


# direct methods
.method public constructor <init>(Lvc/c;Lw5/h;Ll6/f;Z)V
    .locals 1

    invoke-direct {p0, p2}, Lh/e;-><init>(Lw5/h;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Ll6/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Ll6/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Ll6/a;->d:Lvc/c;

    iget-object p1, p3, Ll6/f;->d:Ll6/c;

    iput-object p1, p0, Ll6/a;->e:Ll6/c;

    iput-boolean p4, p0, Ll6/a;->f:Z

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Ll6/a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll6/a;->j:Z

    invoke-virtual {p0}, Ll6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ll6/a;->d:Lvc/c;

    invoke-interface {p0}, Lvc/c;->onComplete()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ll6/a;->e:Ll6/c;

    invoke-virtual {p0}, Ll6/c;->a()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ll6/a;->j:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Ll6/a;->k:Ljava/lang/Throwable;

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Ll6/a;->k:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll6/a;->j:Z

    invoke-virtual {p0}, Ll6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Ll6/a;->d:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ll6/a;->e:Ll6/c;

    invoke-virtual {p0}, Ll6/c;->a()V

    :goto_0
    return-void
.end method

.method public final request(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lh/e;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll6/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lh3/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, Ll6/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lh/e;->b:Ljava/lang/Object;

    check-cast p1, Lio/netty/channel/EventLoop;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    iget v0, p0, Ll6/a;->l:I

    if-lez v0, :cond_0

    iget-object p0, p0, Ll6/a;->e:Ll6/c;

    invoke-virtual {p0}, Ll6/c;->a()V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lh/e;->b:Ljava/lang/Object;

    check-cast v0, Lio/netty/channel/EventLoop;

    new-instance v1, Lt/a;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lt/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x()Z
    .locals 1

    iget v0, p0, Ll6/a;->l:I

    if-nez v0, :cond_0

    iget v0, p0, Ll6/a;->m:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lh/e;->x()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
