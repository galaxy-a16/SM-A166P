.class public final Lkotlinx/coroutines/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# static fields
.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _state:I

.field public final a:Lkotlinx/coroutines/y0;

.field public final b:Ljava/lang/Thread;

.field public c:Lkotlinx/coroutines/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/q1;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/q1;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/y0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/q1;->a:Lkotlinx/coroutines/y0;

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/q1;->_state:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/q1;->b:Ljava/lang/Thread;

    return-void
.end method

.method public static b(I)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/q1;->_state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x3

    if-ne v0, p0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/q1;->b(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    sget-object v1, Lkotlinx/coroutines/q1;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/q1;->c:Lkotlinx/coroutines/j0;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lkotlinx/coroutines/j0;->dispose()V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/q1;->a:Lkotlinx/coroutines/y0;

    const/4 v1, 0x1

    check-cast v0, Lkotlinx/coroutines/f1;

    invoke-virtual {v0, v1, v1, p0}, Lkotlinx/coroutines/f1;->D(ZZLvb/b;)Lkotlinx/coroutines/j0;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/q1;->c:Lkotlinx/coroutines/j0;

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/q1;->_state:I

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    if-eq v0, p0, :cond_2

    const/4 p0, 0x3

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/q1;->b(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v1, Lkotlinx/coroutines/q1;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    :cond_0
    iget p1, p0, Lkotlinx/coroutines/q1;->_state:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlinx/coroutines/q1;->b(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    sget-object v2, Lkotlinx/coroutines/q1;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/q1;->b:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iput v0, p0, Lkotlinx/coroutines/q1;->_state:I

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
