.class public final Lkotlinx/coroutines/channels/n;
.super Lkotlinx/coroutines/channels/j;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:Lkotlinx/coroutines/channels/BufferOverflow;

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;

.field public g:[Ljava/lang/Object;

.field public h:I

.field private volatile synthetic size:I


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lvb/b;)V
    .locals 0

    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/j;-><init>(Lvb/b;)V

    iput p1, p0, Lkotlinx/coroutines/channels/n;->d:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/n;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p3, :cond_1

    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lkotlinx/coroutines/channels/n;->f:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p3, 0x8

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object p3, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    invoke-static {p1, p3}, Lkotlin/collections/l;->j0([Ljava/lang/Object;Lkotlinx/coroutines/internal/z;)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iput p2, p0, Lkotlinx/coroutines/channels/n;->size:I

    return-void

    :cond_1
    const-string p0, "ArrayChannel capacity must be at least 1, but "

    const-string p2, " was specified"

    invoke-static {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/n;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_1
    :try_start_2
    iget-object v3, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget v4, p0, Lkotlinx/coroutines/channels/n;->h:I

    aget-object v5, v3, v4

    const/4 v6, 0x0

    aput-object v6, v3, v4

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lkotlinx/coroutines/channels/n;->size:I

    iget v3, p0, Lkotlinx/coroutines/channels/n;->d:I

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_4

    move-object v3, v6

    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->s()Lkotlinx/coroutines/channels/c0;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v6, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v6}, Lkotlinx/coroutines/channels/c0;->u(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/internal/z;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v8}, Lkotlinx/coroutines/channels/c0;->s()Ljava/lang/Object;

    move-result-object v3

    move v7, v4

    move-object v6, v8

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/c0;->v()V

    move-object v3, v8

    goto :goto_1

    :cond_4
    :goto_2
    move-object v3, v2

    :goto_3
    if-eq v3, v2, :cond_5

    instance-of v2, v3, Lkotlinx/coroutines/channels/u;

    if-nez v2, :cond_5

    iput v1, p0, Lkotlinx/coroutines/channels/n;->size:I

    iget-object v2, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/n;->h:I

    add-int/2addr v8, v1

    array-length v1, v2

    rem-int/2addr v8, v1

    aput-object v3, v2, v8

    :cond_5
    iget v1, p0, Lkotlinx/coroutines/channels/n;->h:I

    add-int/2addr v1, v4

    iget-object v2, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/channels/n;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_6

    invoke-static {v6}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/c0;->r()V

    :cond_6
    return-object v5

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final B(Lkotlinx/coroutines/selects/g;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/n;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_1
    :try_start_2
    iget-object v3, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget v4, p0, Lkotlinx/coroutines/channels/n;->h:I

    aget-object v5, v3, v4

    const/4 v6, 0x0

    aput-object v6, v3, v4

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lkotlinx/coroutines/channels/n;->size:I

    iget v3, p0, Lkotlinx/coroutines/channels/n;->d:I

    const/4 v4, 0x1

    if-ne v1, v3, :cond_6

    :cond_2
    new-instance v3, Lkotlinx/coroutines/channels/g;

    iget-object v7, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    invoke-direct {v3, v7}, Lkotlinx/coroutines/channels/g;-><init>(Lkotlinx/coroutines/internal/i;)V

    move-object v7, p1

    check-cast v7, Lkotlinx/coroutines/selects/c;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lkotlinx/coroutines/selects/a;

    invoke-direct {v8, v7, v3}, Lkotlinx/coroutines/selects/a;-><init>(Lkotlinx/coroutines/selects/c;Lkotlinx/coroutines/internal/a;)V

    invoke-virtual {v8, v6}, Lkotlinx/coroutines/internal/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/m;->h()Lkotlinx/coroutines/internal/n;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lkotlinx/coroutines/channels/c0;

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/c0;->s()Ljava/lang/Object;

    move-result-object v7

    move v3, v4

    goto :goto_1

    :cond_3
    if-eq v7, v2, :cond_6

    sget-object v3, Lkotlinx/coroutines/internal/t;->b:Lkotlinx/coroutines/internal/z;

    if-eq v7, v3, :cond_2

    sget-object v3, Lkotlinx/coroutines/selects/h;->b:Lkotlinx/coroutines/internal/z;

    if-ne v7, v3, :cond_4

    iput v1, p0, Lkotlinx/coroutines/channels/n;->size:I

    iget-object p1, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget p0, p0, Lkotlinx/coroutines/channels/n;->h:I

    aput-object v5, p1, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v7

    :cond_4
    :try_start_3
    instance-of v3, v7, Lkotlinx/coroutines/channels/u;

    if-eqz v3, :cond_5

    move v3, v4

    move-object v6, v7

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performAtomicTrySelect(describeTryOffer) returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 v3, 0x0

    move-object v7, v2

    :goto_1
    if-eq v7, v2, :cond_7

    instance-of v2, v7, Lkotlinx/coroutines/channels/u;

    if-nez v2, :cond_7

    iput v1, p0, Lkotlinx/coroutines/channels/n;->size:I

    iget-object p1, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget v2, p0, Lkotlinx/coroutines/channels/n;->h:I

    add-int/2addr v2, v1

    array-length v1, p1

    rem-int/2addr v2, v1

    aput-object v7, p1, v2

    goto :goto_2

    :cond_7
    check-cast p1, Lkotlinx/coroutines/selects/c;

    invoke-virtual {p1}, Lkotlinx/coroutines/selects/c;->x()Z

    move-result p1

    if-nez p1, :cond_8

    iput v1, p0, Lkotlinx/coroutines/channels/n;->size:I

    iget-object p1, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget p0, p0, Lkotlinx/coroutines/channels/n;->h:I

    aput-object v5, p1, p0

    sget-object p0, Lkotlinx/coroutines/selects/h;->b:Lkotlinx/coroutines/internal/z;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_8
    :goto_2
    :try_start_4
    iget p1, p0, Lkotlinx/coroutines/channels/n;->h:I

    add-int/2addr p1, v4

    iget-object v1, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/channels/n;->h:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v3, :cond_9

    invoke-static {v6}, Li4/f;->g(Ljava/lang/Object;)V

    check-cast v6, Lkotlinx/coroutines/channels/c0;

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/c0;->r()V

    :cond_9
    return-object v5

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final C(ILjava/lang/Object;)V
    .locals 7

    iget v0, p0, Lkotlinx/coroutines/channels/n;->d:I

    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    array-length v2, v1

    if-lt p1, v2, :cond_1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget v5, p0, Lkotlinx/coroutines/channels/n;->h:I

    add-int/2addr v5, v3

    array-length v6, v4

    rem-int/2addr v5, v6

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    invoke-static {v1, p1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object v1, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/channels/n;->h:I

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget p0, p0, Lkotlinx/coroutines/channels/n;->h:I

    add-int/2addr p0, p1

    array-length p1, v0

    rem-int/2addr p0, p1

    aput-object p2, v0, p0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/n;->h:I

    array-length v2, v0

    rem-int v2, v1, v2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/2addr p1, v1

    array-length v2, v0

    rem-int/2addr p1, v2

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lkotlinx/coroutines/channels/n;->h:I

    :goto_1
    return-void
.end method

.method public final k(Lkotlinx/coroutines/channels/e0;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/l;->k(Lkotlinx/coroutines/channels/e0;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(buffer:capacity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lkotlinx/coroutines/channels/n;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/coroutines/channels/n;->size:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->q(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p()Z
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/channels/n;->size:I

    iget v1, p0, Lkotlinx/coroutines/channels/n;->d:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/channels/n;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/n;->size:I

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_0
    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/channels/n;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v3, Lkotlinx/coroutines/channels/t;->b:Lkotlinx/coroutines/internal/z;

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    :try_start_2
    iput v2, p0, Lkotlinx/coroutines/channels/n;->size:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/n;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v4, Lkotlinx/coroutines/channels/m;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    move-object v2, v3

    goto :goto_1

    :cond_4
    sget-object v2, Lkotlinx/coroutines/channels/t;->c:Lkotlinx/coroutines/internal/z;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_5
    if-nez v1, :cond_9

    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->r()Lkotlinx/coroutines/channels/b0;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    instance-of v4, v2, Lkotlinx/coroutines/channels/u;

    if-eqz v4, :cond_8

    iput v1, p0, Lkotlinx/coroutines/channels/n;->size:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_8
    :try_start_4
    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/b0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/z;

    move-result-object v4

    if-eqz v4, :cond_6

    iput v1, p0, Lkotlinx/coroutines/channels/n;->size:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/b0;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlinx/coroutines/channels/b0;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_2
    :try_start_5
    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/channels/n;->C(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final u(Lkotlinx/coroutines/channels/z;)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/j;->u(Lkotlinx/coroutines/channels/z;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/channels/n;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0}, Lkotlinx/coroutines/channels/j;->x()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final y(Z)V
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    iget-object v1, p0, Lkotlinx/coroutines/channels/n;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v2, p0, Lkotlinx/coroutines/channels/n;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    iget-object v6, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget v7, p0, Lkotlinx/coroutines/channels/n;->h:I

    aget-object v6, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v7, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    if-eqz v0, :cond_0

    if-eq v6, v7, :cond_0

    :try_start_1
    invoke-static {v0, v6, v4}, Lkotlinx/coroutines/internal/t;->b(Lvb/b;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v4

    :cond_0
    iget-object v6, p0, Lkotlinx/coroutines/channels/n;->g:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/n;->h:I

    aput-object v7, v6, v8

    add-int/lit8 v8, v8, 0x1

    array-length v6, v6

    rem-int/2addr v8, v6

    iput v8, p0, Lkotlinx/coroutines/channels/n;->h:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lkotlinx/coroutines/channels/n;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/j;->y(Z)V

    if-nez v4, :cond_2

    return-void

    :cond_2
    throw v4

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
