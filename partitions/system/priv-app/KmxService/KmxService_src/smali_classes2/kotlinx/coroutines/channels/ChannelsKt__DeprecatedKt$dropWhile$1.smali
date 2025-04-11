.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lvb/c;


# annotations
.annotation runtime Lrb/c;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1"
    f = "Deprecated.kt"
    l = {
        0xb5,
        0xb6,
        0xb7,
        0xbb,
        0xbc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $predicate:Lvb/c;

.field final synthetic $this_dropWhile:Lkotlinx/coroutines/channels/a0;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/a0;Lvb/c;Lkotlin/coroutines/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/a0;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$predicate:Lvb/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/a0;

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$predicate:Lvb/c;

    invoke-direct {v0, v1, p0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;-><init>(Lkotlinx/coroutines/channels/a0;Lvb/c;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/y;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->invoke(Lkotlinx/coroutines/channels/y;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/y;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;

    sget-object p1, Lkotlin/s;->a:Lkotlin/s;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/a;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/y;

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v1

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/a;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/y;

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/y;

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$2:Ljava/lang/Object;

    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/a;

    iget-object v9, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/y;

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_5
    move-object v10, v8

    move-object v8, v1

    move-object v1, v10

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/a;

    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/y;

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    move-object v9, v8

    :goto_0
    move-object v8, v1

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/y;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/a0;

    invoke-interface {v1}, Lkotlinx/coroutines/channels/a0;->iterator()Lkotlinx/coroutines/channels/a;

    move-result-object v1

    :goto_1
    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$2:Ljava/lang/Object;

    iput v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_8

    return-object v0

    :cond_8
    move-object v9, p1

    move-object p1, v8

    goto :goto_0

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v8}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$predicate:Lvb/c;

    iput-object v9, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$2:Ljava/lang/Object;

    iput v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    invoke-interface {p1, v1, p0}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    iput-object v9, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    move-object v1, v9

    check-cast v1, Lkotlinx/coroutines/channels/x;

    invoke-virtual {v1, v8, p0}, Lkotlinx/coroutines/channels/x;->i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    move-object v9, v1

    goto :goto_5

    :cond_a
    move-object p1, v9

    goto :goto_1

    :cond_b
    :goto_5
    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/a0;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/a0;->iterator()Lkotlinx/coroutines/channels/a;

    move-result-object p1

    move-object v2, v9

    :goto_6
    iput-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_c

    return-object v0

    :cond_c
    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    :goto_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p1

    iput-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    check-cast v2, Lkotlinx/coroutines/channels/x;

    invoke-virtual {v2, p1, p0}, Lkotlinx/coroutines/channels/x;->i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_d
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
