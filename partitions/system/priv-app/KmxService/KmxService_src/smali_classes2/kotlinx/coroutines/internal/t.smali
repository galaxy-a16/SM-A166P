.class public abstract Lkotlinx/coroutines/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/z;

.field public static final b:Lkotlinx/coroutines/internal/z;

.field public static final c:Lkotlinx/coroutines/internal/z;

.field public static final d:Lkotlinx/coroutines/internal/z;

.field public static final e:Lkotlinx/coroutines/internal/z;

.field public static final f:Lkotlinx/coroutines/internal/z;

.field public static final g:Lkotlinx/coroutines/internal/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/t;->a:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "RETRY_ATOMIC"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/t;->b:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/t;->c:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/t;->d:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/t;->f:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "REMOVE_PREPARED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/t;->g:Lkotlinx/coroutines/internal/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/i;)Lvb/b;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/i;)V

    return-object v0
.end method

.method public static final b(Lvb/b;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {p2, p0}, Lkotlin/h;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/UndeliveredElementException;

    const-string v0, "Exception in undelivered element handler for "

    invoke-static {v0, p1}, Landroidx/activity/b;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lkotlinx/coroutines/internal/UndeliveredElementException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static final c(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 7

    instance-of v0, p2, Lkotlinx/coroutines/internal/e;

    if-eqz v0, :cond_a

    check-cast p2, Lkotlinx/coroutines/internal/e;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Lkotlinx/coroutines/r;

    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/r;-><init>(Ljava/lang/Object;Lvb/b;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlinx/coroutines/q;

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    move-object v0, p0

    :goto_0
    iget-object p0, p2, Lkotlinx/coroutines/internal/e;->e:Lkotlin/coroutines/d;

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/e;->getContext()Lkotlin/coroutines/i;

    move-result-object v2

    iget-object v3, p2, Lkotlinx/coroutines/internal/e;->d:Lkotlinx/coroutines/t;

    invoke-virtual {v3, v2}, Lkotlinx/coroutines/t;->x(Lkotlin/coroutines/i;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iput-object v0, p2, Lkotlinx/coroutines/internal/e;->f:Ljava/lang/Object;

    iput v4, p2, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/e;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    invoke-virtual {v3, p0, p2}, Lkotlinx/coroutines/t;->i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/p1;->a()Lkotlinx/coroutines/r0;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/coroutines/r0;->N()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v0, p2, Lkotlinx/coroutines/internal/e;->f:Ljava/lang/Object;

    iput v4, p2, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {v2, p2}, Lkotlinx/coroutines/r0;->H(Lkotlinx/coroutines/g0;)V

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/r0;->M(Z)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/e;->getContext()Lkotlin/coroutines/i;

    move-result-object v5

    sget-object v6, Lc3/l;->f:Lc3/l;

    invoke-interface {v5, v6}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/y0;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lkotlinx/coroutines/y0;->isActive()Z

    move-result v6

    if-nez v6, :cond_4

    check-cast v5, Lkotlinx/coroutines/f1;

    invoke-virtual {v5}, Lkotlinx/coroutines/f1;->u()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lkotlinx/coroutines/internal/e;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {v1}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lkotlinx/coroutines/internal/e;->resumeWith(Ljava/lang/Object;)V

    move v1, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_1
    if-nez v1, :cond_9

    iget-object v0, p2, Lkotlinx/coroutines/internal/e;->g:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/b0;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/z;

    if-eq v0, v4, :cond_5

    invoke-static {p0, v1, v0}, Lkotlinx/coroutines/a0;->O(Lkotlin/coroutines/d;Lkotlin/coroutines/i;Ljava/lang/Object;)Lkotlinx/coroutines/s1;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    move-object v4, v3

    :goto_2
    :try_start_1
    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Lkotlinx/coroutines/s1;->T()Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_6
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lkotlinx/coroutines/s1;->T()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    :cond_8
    throw p0

    :cond_9
    :goto_3
    invoke-virtual {v2}, Lkotlinx/coroutines/r0;->O()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_9

    goto :goto_5

    :goto_4
    :try_start_3
    invoke-virtual {p2, p0, v3}, Lkotlinx/coroutines/g0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    invoke-virtual {v2}, Lkotlinx/coroutines/r0;->y()V

    goto :goto_6

    :catchall_2
    move-exception p0

    invoke-virtual {v2}, Lkotlinx/coroutines/r0;->y()V

    throw p0

    :cond_a
    invoke-interface {p2, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_6
    return-void
.end method
