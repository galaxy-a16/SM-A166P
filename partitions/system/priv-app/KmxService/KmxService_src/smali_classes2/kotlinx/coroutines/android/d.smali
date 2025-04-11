.class public final Lkotlinx/coroutines/android/d;
.super Lkotlinx/coroutines/android/e;
.source "SourceFile"


# instance fields
.field private volatile _immediate:Lkotlinx/coroutines/android/d;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lkotlinx/coroutines/android/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/coroutines/android/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/android/e;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    iput-object p2, p0, Lkotlinx/coroutines/android/d;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lkotlinx/coroutines/android/d;->e:Z

    if-eqz p3, :cond_0

    move-object p3, p0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lkotlinx/coroutines/android/d;->_immediate:Lkotlinx/coroutines/android/d;

    iget-object p3, p0, Lkotlinx/coroutines/android/d;->_immediate:Lkotlinx/coroutines/android/d;

    if-nez p3, :cond_1

    new-instance p3, Lkotlinx/coroutines/android/d;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lkotlinx/coroutines/android/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lkotlinx/coroutines/android/d;->_immediate:Lkotlinx/coroutines/android/d;

    :cond_1
    iput-object p3, p0, Lkotlinx/coroutines/android/d;->f:Lkotlinx/coroutines/android/d;

    return-void
.end method


# virtual methods
.method public final b(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/j0;
    .locals 3

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/android/c;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/android/c;-><init>(Lkotlinx/coroutines/android/d;Ljava/lang/Runnable;)V

    return-object p1

    :cond_1
    invoke-virtual {p0, p4, p3}, Lkotlinx/coroutines/android/d;->y(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    sget-object p0, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    return-object p0
.end method

.method public final d(JLkotlinx/coroutines/h;)V
    .locals 4

    new-instance v0, Lr3/l;

    const/16 v1, 0xe

    invoke-direct {v0, p3, p0, v1}, Lr3/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    move-wide p1, v1

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$1;

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$1;-><init>(Lkotlinx/coroutines/android/d;Ljava/lang/Runnable;)V

    invoke-virtual {p3, p1}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/android/d;->y(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/android/d;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/android/d;

    iget-object p1, p1, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    iget-object p0, p0, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/android/d;->y(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    sget-object v0, Lkotlinx/coroutines/internal/s;->a:Lkotlinx/coroutines/h1;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Lkotlinx/coroutines/android/d;

    iget-object v0, v0, Lkotlinx/coroutines/android/d;->f:Lkotlinx/coroutines/android/d;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/android/d;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean p0, p0, Lkotlinx/coroutines/android/d;->e:Z

    if-eqz p0, :cond_3

    const-string p0, ".immediate"

    invoke-static {v0, p0}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final x(Lkotlin/coroutines/i;)Z
    .locals 0

    iget-boolean p1, p0, Lkotlinx/coroutines/android/d;->e:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/android/d;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final y(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lp9/d;->j(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Lkotlinx/coroutines/h0;->b:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/d;->i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    return-void
.end method
