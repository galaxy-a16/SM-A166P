.class public final Lkotlinx/coroutines/flow/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;
.implements Lrb/b;


# instance fields
.field public final a:Lkotlin/coroutines/d;

.field public final b:Lkotlin/coroutines/i;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/u;->a:Lkotlin/coroutines/d;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/u;->b:Lkotlin/coroutines/i;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lrb/b;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/u;->a:Lkotlin/coroutines/d;

    instance-of v0, p0, Lrb/b;

    if-eqz v0, :cond_0

    check-cast p0, Lrb/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/u;->b:Lkotlin/coroutines/i;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/u;->a:Lkotlin/coroutines/d;

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
