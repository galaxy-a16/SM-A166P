.class final Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;->invoke()V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    sget-object p0, Lkotlinx/coroutines/debug/internal/j;->a:Lkotlinx/coroutines/debug/internal/e;

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/e;->a:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 4
    :goto_1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/e;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lkotlinx/coroutines/debug/internal/k;

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/debug/internal/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v2, v0, Lkotlinx/coroutines/debug/internal/k;->a:I

    const v3, -0x61c88647

    mul-int/2addr v2, v3

    .line 7
    iget v3, v1, Lkotlinx/coroutines/debug/internal/b;->b:I

    ushr-int/2addr v2, v3

    .line 8
    :goto_2
    iget-object v3, v1, Lkotlinx/coroutines/debug/internal/b;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/debug/internal/k;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, v0, :cond_2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/debug/internal/b;->c(I)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget v2, v1, Lkotlinx/coroutines/debug/internal/b;->a:I

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must be created with weakRefQueue = true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
