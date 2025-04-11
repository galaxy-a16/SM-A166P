.class public abstract Lkotlinx/coroutines/channels/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/d0;


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final a:Lvb/b;

.field public final b:Lkotlinx/coroutines/internal/i;

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "onCloseHandler"

    const-class v2, Lkotlinx/coroutines/channels/l;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lvb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    new-instance p1, Lkotlinx/coroutines/internal/i;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/i;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/channels/l;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final c(Lkotlinx/coroutines/channels/l;Lkotlinx/coroutines/h;Ljava/lang/Object;Lkotlinx/coroutines/channels/u;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lkotlinx/coroutines/channels/l;->n(Lkotlinx/coroutines/channels/u;)V

    iget-object p3, p3, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    if-nez p3, :cond_0

    new-instance p3, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v0, "Channel was closed"

    invoke-direct {p3, v0}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lkotlinx/coroutines/internal/t;->b(Lvb/b;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, p3}, Lkotlin/h;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static n(Lkotlinx/coroutines/channels/u;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/channels/z;

    if-eqz v3, :cond_0

    check-cast v2, Lkotlinx/coroutines/channels/z;

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_1
    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    instance-of v0, v1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    check-cast v1, Lkotlinx/coroutines/channels/z;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/channels/z;->s(Lkotlinx/coroutines/channels/u;)V

    goto :goto_3

    :cond_1
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, -0x1

    add-int/2addr v0, v2

    :goto_2
    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/z;

    invoke-virtual {v3, p0}, Lkotlinx/coroutines/channels/z;->s(Lkotlinx/coroutines/channels/u;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    return-void

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->n()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/v;

    iget-object v2, v2, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->l()V

    goto :goto_0

    :cond_4
    invoke-static {v1, v2}, Lfc/e;->M(Ljava/lang/Object;Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)Z
    .locals 5

    new-instance v0, Lkotlinx/coroutines/channels/u;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/u;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/channels/u;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/n;->f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/u;

    :goto_1
    invoke-static {v0}, Lkotlinx/coroutines/channels/l;->n(Lkotlinx/coroutines/channels/u;)V

    if-eqz v1, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v2, Lkotlinx/coroutines/channels/t;->f:Lkotlinx/coroutines/internal/z;

    if-eq v0, v2, :cond_3

    sget-object v3, Lkotlinx/coroutines/channels/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v4, v0}, Li4/g;->g(ILjava/lang/Object;)V

    check-cast v0, Lvb/b;

    invoke-interface {v0, p1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method public final f(Lvb/b;)V
    .locals 3

    sget-object v0, Lkotlinx/coroutines/channels/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lkotlinx/coroutines/channels/t;->f:Lkotlinx/coroutines/internal/z;

    if-nez v1, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/channels/l;->onCloseHandler:Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Another handler was already registered and successfully invoked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered: "

    invoke-static {v0, p0}, Landroidx/activity/b;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/l;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/channels/t;->b:Lkotlinx/coroutines/internal/z;

    if-ne p1, v0, :cond_0

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    goto :goto_1

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/t;->c:Lkotlinx/coroutines/internal/z;

    const-string v1, "Channel was closed"

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lkotlinx/coroutines/channels/s;->b:Lkotlinx/coroutines/channels/r;

    return-object p0

    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/channels/l;->n(Lkotlinx/coroutines/channels/u;)V

    iget-object p0, p0, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_3

    new-instance p0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lkotlinx/coroutines/channels/u;

    if-eqz p0, :cond_4

    check-cast p1, Lkotlinx/coroutines/channels/u;

    invoke-static {p1}, Lkotlinx/coroutines/channels/l;->n(Lkotlinx/coroutines/channels/u;)V

    iget-object p0, p1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_3

    new-instance p0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_0
    new-instance p1, Lkotlinx/coroutines/channels/q;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/q;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trySend returned "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/l;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/t;->b:Lkotlinx/coroutines/internal/z;

    sget-object v2, Lkotlin/s;->a:Lkotlin/s;

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p2}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p2

    invoke-static {p2}, Ll9/b;->e0(Lkotlin/coroutines/d;)Lkotlinx/coroutines/h;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/b0;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-nez v0, :cond_3

    new-instance v0, Lkotlinx/coroutines/channels/e0;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/channels/e0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;)V

    goto :goto_1

    :cond_3
    new-instance v3, Lkotlinx/coroutines/channels/f0;

    invoke-direct {v3, p1, p2, v0}, Lkotlinx/coroutines/channels/f0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;Lvb/b;)V

    move-object v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/l;->k(Lkotlinx/coroutines/channels/e0;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance p0, Lkotlinx/coroutines/m1;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/m1;-><init>(Lkotlinx/coroutines/internal/n;)V

    invoke-virtual {p2, p0}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    goto :goto_3

    :cond_4
    instance-of v0, v3, Lkotlinx/coroutines/channels/u;

    if-eqz v0, :cond_5

    check-cast v3, Lkotlinx/coroutines/channels/u;

    invoke-static {p0, p2, p1, v3}, Lkotlinx/coroutines/channels/l;->c(Lkotlinx/coroutines/channels/l;Lkotlinx/coroutines/h;Ljava/lang/Object;Lkotlinx/coroutines/channels/u;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lkotlinx/coroutines/channels/t;->e:Lkotlinx/coroutines/internal/z;

    if-eq v3, v0, :cond_7

    instance-of v0, v3, Lkotlinx/coroutines/channels/z;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "enqueueSend returned "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/l;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    sget-object v3, Lkotlinx/coroutines/channels/t;->c:Lkotlinx/coroutines/internal/z;

    if-eq v0, v3, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/channels/u;

    if-eqz v1, :cond_b

    check-cast v0, Lkotlinx/coroutines/channels/u;

    invoke-static {p0, p2, p1, v0}, Lkotlinx/coroutines/channels/l;->c(Lkotlinx/coroutines/channels/l;Lkotlinx/coroutines/h;Ljava/lang/Object;Lkotlinx/coroutines/channels/u;)V

    :goto_3
    invoke-virtual {p2}, Lkotlinx/coroutines/h;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_9

    goto :goto_4

    :cond_9
    move-object p0, v2

    :goto_4
    if-ne p0, p1, :cond_a

    return-object p0

    :cond_a
    return-object v2

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "offerInternal returned "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k(Lkotlinx/coroutines/channels/e0;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->o()Z

    move-result v0

    iget-object v1, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/channels/b0;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/n;->f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/i;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlinx/coroutines/channels/h;

    const/4 v2, 0x1

    invoke-direct {v0, p1, p0, v2}, Lkotlinx/coroutines/channels/h;-><init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/channels/l;I)V

    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    instance-of v3, p0, Lkotlinx/coroutines/channels/b0;

    if-eqz v3, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, v1, v0}, Lkotlinx/coroutines/internal/n;->q(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/k;)I

    move-result p0

    if-eq p0, v2, :cond_5

    const/4 v3, 0x2

    if-eq p0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    if-nez v2, :cond_6

    sget-object p0, Lkotlinx/coroutines/channels/t;->e:Lkotlinx/coroutines/internal/z;

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final m()Lkotlinx/coroutines/channels/u;
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/channels/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/channels/u;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlinx/coroutines/channels/l;->n(Lkotlinx/coroutines/channels/u;)V

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method public abstract o()Z
.end method

.method public abstract p()Z
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->r()Lkotlinx/coroutines/channels/b0;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/channels/t;->c:Lkotlinx/coroutines/internal/z;

    return-object p0

    :cond_1
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlinx/coroutines/channels/b0;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public r()Lkotlinx/coroutines/channels/b0;
    .locals 3

    iget-object p0, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/n;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_0
    instance-of v2, v0, Lkotlinx/coroutines/channels/b0;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/b0;

    instance-of v1, v1, Lkotlinx/coroutines/channels/u;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->m()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->o()Lkotlinx/coroutines/internal/n;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_2
    check-cast v0, Lkotlinx/coroutines/channels/b0;

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->l()V

    goto :goto_0
.end method

.method public final s()Lkotlinx/coroutines/channels/c0;
    .locals 3

    iget-object p0, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/n;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_0
    instance-of v2, v0, Lkotlinx/coroutines/channels/c0;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/c0;

    instance-of v1, v1, Lkotlinx/coroutines/channels/u;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->m()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->o()Lkotlinx/coroutines/internal/n;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_2
    check-cast v0, Lkotlinx/coroutines/channels/c0;

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->l()V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    if-ne v2, v1, :cond_0

    const-string v1, "EmptyQueue"

    goto/16 :goto_2

    :cond_0
    instance-of v3, v2, Lkotlinx/coroutines/channels/u;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lkotlinx/coroutines/channels/z;

    if-eqz v3, :cond_2

    const-string v3, "ReceiveQueued"

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lkotlinx/coroutines/channels/c0;

    if-eqz v3, :cond_3

    const-string v3, "SendQueued"

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UNEXPECTED:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v4

    if-eq v4, v2, :cond_6

    const-string v2, ",queueSize="

    invoke-static {v3, v2}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/internal/n;

    const/4 v5, 0x0

    :goto_1
    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    instance-of v6, v3, Lkotlinx/coroutines/internal/n;

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v4, Lkotlinx/coroutines/channels/u;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v3

    :cond_7
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
