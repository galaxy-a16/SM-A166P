.class public final Lkotlinx/coroutines/sync/c;
.super Lkotlinx/coroutines/sync/e;
.source "SourceFile"


# instance fields
.field public final f:Lkotlinx/coroutines/g;

.field public final synthetic g:Lkotlinx/coroutines/sync/h;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/h;Lkotlinx/coroutines/h;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/c;->g:Lkotlinx/coroutines/sync/h;

    invoke-direct {p0}, Lkotlinx/coroutines/sync/e;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/c;->f:Lkotlinx/coroutines/g;

    return-void
.end method


# virtual methods
.method public final r()V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/sync/c;->f:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    iget v0, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h;->l(I)V

    return-void
.end method

.method public final s()Z
    .locals 5

    sget-object v0, Lkotlinx/coroutines/sync/e;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    new-instance v3, Lkotlinx/coroutines/sync/MutexImpl$LockCont$tryResumeLockWaiter$1;

    iget-object v4, p0, Lkotlinx/coroutines/sync/c;->g:Lkotlinx/coroutines/sync/h;

    invoke-direct {v3, v4, p0}, Lkotlinx/coroutines/sync/MutexImpl$LockCont$tryResumeLockWaiter$1;-><init>(Lkotlinx/coroutines/sync/h;Lkotlinx/coroutines/sync/c;)V

    iget-object p0, p0, Lkotlinx/coroutines/sync/c;->f:Lkotlinx/coroutines/g;

    check-cast p0, Lkotlinx/coroutines/h;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lkotlinx/coroutines/h;->w(Ljava/lang/Object;Ljava/lang/Object;Lvb/b;)Lkotlinx/coroutines/internal/z;

    move-result-object p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LockCont["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/sync/e;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/c;->f:Lkotlinx/coroutines/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/sync/c;->g:Lkotlinx/coroutines/sync/h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
