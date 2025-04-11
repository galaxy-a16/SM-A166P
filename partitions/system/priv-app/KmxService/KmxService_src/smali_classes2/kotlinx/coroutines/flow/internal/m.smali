.class public final Lkotlinx/coroutines/flow/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/i;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final synthetic b:Lkotlin/coroutines/i;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/m;->a:Ljava/lang/Throwable;

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlin/coroutines/i;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lvb/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlin/coroutines/i;

    invoke-interface {p0, p1, p2}, Lkotlin/coroutines/i;->fold(Ljava/lang/Object;Lvb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlin/coroutines/i;

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public final minusKey(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlin/coroutines/i;

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->minusKey(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/m;->b:Lkotlin/coroutines/i;

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method
