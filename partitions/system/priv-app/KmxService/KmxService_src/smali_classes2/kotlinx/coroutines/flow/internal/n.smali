.class public final Lkotlinx/coroutines/flow/internal/n;
.super Lkotlinx/coroutines/internal/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/x;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->m(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
