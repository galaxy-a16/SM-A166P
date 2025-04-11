.class public final Lkotlinx/coroutines/debug/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Lvb/c;

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final synthetic e:Lkotlinx/coroutines/debug/internal/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/b;Lvb/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/a;->e:Lkotlinx/coroutines/debug/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/a;->a:Lvb/c;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/debug/internal/a;->b:I

    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/debug/internal/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/debug/internal/a;->b:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/a;->e:Lkotlinx/coroutines/debug/internal/b;

    iget v2, v1, Lkotlinx/coroutines/debug/internal/b;->a:I

    if-ge v0, v2, :cond_3

    iget-object v2, v1, Lkotlinx/coroutines/debug/internal/b;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/a;->c:Ljava/lang/Object;

    iget-object v0, v1, Lkotlinx/coroutines/debug/internal/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/debug/internal/a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/debug/internal/l;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/debug/internal/l;

    iget-object v0, v0, Lkotlinx/coroutines/debug/internal/l;->a:Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_0

    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/a;->d:Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/debug/internal/a;->b:I

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/a;->e:Lkotlinx/coroutines/debug/internal/b;

    iget p0, p0, Lkotlinx/coroutines/debug/internal/b;->a:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlinx/coroutines/debug/internal/a;->b:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/a;->e:Lkotlinx/coroutines/debug/internal/b;

    iget v1, v1, Lkotlinx/coroutines/debug/internal/b;->a:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/a;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lkotlinx/coroutines/debug/internal/a;->d:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/a;->a:Lvb/c;

    invoke-interface {v1, v0, v2}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/a;->a()V

    return-object v0

    :cond_0
    const-string p0, "value"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "key"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    sget-object p0, Lkotlinx/coroutines/debug/internal/f;->a:Lkotlinx/coroutines/internal/z;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
