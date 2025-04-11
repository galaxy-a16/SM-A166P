.class public final Lkotlinx/coroutines/flow/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# instance fields
.field public final a:Lkotlinx/coroutines/flow/f;

.field public final b:Lvb/b;

.field public final c:Lvb/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/flow/y;->a:Lvb/b;

    sget-object v1, Lkotlinx/coroutines/flow/y;->b:Lvb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/e;->a:Lkotlinx/coroutines/flow/f;

    iput-object v0, p0, Lkotlinx/coroutines/flow/e;->b:Lvb/b;

    iput-object v1, p0, Lkotlinx/coroutines/flow/e;->c:Lvb/c;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lkotlinx/coroutines/flow/internal/l;->b:Lkotlinx/coroutines/internal/z;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Lkotlinx/coroutines/flow/d;

    invoke-direct {v1, p0, v0, p1}, Lkotlinx/coroutines/flow/d;-><init>(Lkotlinx/coroutines/flow/e;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/g;)V

    iget-object p0, p0, Lkotlinx/coroutines/flow/e;->a:Lkotlinx/coroutines/flow/f;

    invoke-interface {p0, v1, p2}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
