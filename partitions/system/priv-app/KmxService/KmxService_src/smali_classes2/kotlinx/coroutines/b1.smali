.class public abstract Lkotlinx/coroutines/b1;
.super Lkotlinx/coroutines/internal/n;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/j0;
.implements Lkotlinx/coroutines/v0;
.implements Lvb/b;


# instance fields
.field public d:Lkotlinx/coroutines/f1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->r()Lkotlinx/coroutines/f1;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/b1;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lkotlinx/coroutines/a0;->j:Lkotlinx/coroutines/l0;

    sget-object v3, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lkotlinx/coroutines/v0;

    if-eqz v0, :cond_3

    check-cast v1, Lkotlinx/coroutines/v0;

    invoke-interface {v1}, Lkotlinx/coroutines/v0;->e()Lkotlinx/coroutines/i1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->n()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final e()Lkotlinx/coroutines/i1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParent()Lkotlinx/coroutines/y0;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->r()Lkotlinx/coroutines/f1;

    move-result-object p0

    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final r()Lkotlinx/coroutines/f1;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/b1;->d:Lkotlinx/coroutines/f1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "job"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract s(Ljava/lang/Throwable;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

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

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->r()Lkotlinx/coroutines/f1;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
