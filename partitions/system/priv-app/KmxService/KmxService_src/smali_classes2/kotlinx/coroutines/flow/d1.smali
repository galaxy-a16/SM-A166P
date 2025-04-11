.class public final Lkotlinx/coroutines/flow/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lkotlinx/coroutines/y;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/y;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/d1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lkotlinx/coroutines/flow/d1;->b:Lkotlinx/coroutines/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p0, Lkotlinx/coroutines/flow/d1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/y1;

    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    check-cast p2, Lkotlinx/coroutines/flow/l2;

    invoke-virtual {p2, p1}, Lkotlinx/coroutines/flow/l2;->i(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lkotlinx/coroutines/flow/d1;->b:Lkotlinx/coroutines/y;

    invoke-interface {p0}, Lkotlinx/coroutines/y;->c()Lkotlin/coroutines/i;

    move-result-object p0

    invoke-static {p0}, Lp9/d;->K(Lkotlin/coroutines/i;)Lkotlinx/coroutines/y0;

    throw v1
.end method
