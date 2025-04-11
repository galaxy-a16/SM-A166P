.class public final Lkotlinx/coroutines/flow/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# instance fields
.field public final a:Lkotlin/coroutines/i;

.field public final b:Ljava/lang/Object;

.field public final c:Lvb/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/w;->a:Lkotlin/coroutines/i;

    invoke-static {p2}, Lkotlinx/coroutines/internal/b0;->b(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/w;->b:Ljava/lang/Object;

    new-instance p2, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;-><init>(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)V

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/w;->c:Lvb/c;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/w;->c:Lvb/c;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/w;->a:Lkotlin/coroutines/i;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/w;->b:Ljava/lang/Object;

    invoke-static {v1, p1, p0, v0, p2}, Lh3/a;->Z(Lkotlin/coroutines/i;Ljava/lang/Object;Ljava/lang/Object;Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
