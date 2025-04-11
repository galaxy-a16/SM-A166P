.class public final Lkotlinx/serialization/json/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/serialization/json/internal/v;

.field public final b:Z

.field public c:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/i;Lkotlinx/serialization/json/internal/v;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    iget-boolean p1, p1, Lkotlinx/serialization/json/i;->c:Z

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/o;->b:Z

    return-void
.end method

.method public static final a(Lkotlinx/serialization/json/internal/o;Lkotlin/b;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    iget v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    invoke-direct {v0, p0, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Lkotlinx/serialization/json/internal/o;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/serialization/json/internal/o;

    iget-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/b;

    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p2, v7}, Lkotlinx/serialization/json/internal/v;->h(B)B

    move-result v2

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/v;->s()B

    move-result v9

    if-eq v9, v6, :cond_a

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    :goto_1
    iget-object v9, p0, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/v;->b()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/o;->b:Z

    iget-object v9, p0, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/v;->k()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lkotlinx/serialization/json/internal/v;->h(B)B

    sget-object v9, Lkotlin/s;->a:Lkotlin/s;

    iput-object p2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    move-object v10, p2

    check-cast v10, Lkotlin/c;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v10, Lkotlin/c;->c:Lkotlin/coroutines/d;

    iput-object v9, v10, Lkotlin/c;->b:Ljava/lang/Object;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v9, v1, :cond_4

    goto :goto_6

    :cond_4
    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    move-object v12, v9

    move-object v9, p2

    move-object p2, v12

    :goto_3
    check-cast p2, Lkotlinx/serialization/json/l;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v2, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->g()B

    move-result p0

    if-eq p0, v6, :cond_6

    if-ne p0, v3, :cond_5

    move-object v11, v2

    move v2, p0

    move-object p0, v11

    goto :goto_4

    :cond_5
    iget-object p0, v2, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    const-string p1, "Expected end of the object or comma"

    invoke-static {p0, p1, v5, v8, v7}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8

    :cond_6
    move-object p2, v9

    move-object v11, v2

    move v2, p0

    move-object p0, v11

    goto :goto_1

    :cond_7
    :goto_4
    iget-object p0, p0, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    if-ne v2, v7, :cond_8

    invoke-virtual {p0, v3}, Lkotlinx/serialization/json/internal/v;->h(B)B

    goto :goto_5

    :cond_8
    if-eq v2, v6, :cond_9

    :goto_5
    new-instance v1, Lkotlinx/serialization/json/w;

    invoke-direct {v1, p1}, Lkotlinx/serialization/json/w;-><init>(Ljava/util/Map;)V

    :goto_6
    return-object v1

    :cond_9
    const-string p1, "Unexpected trailing comma"

    invoke-static {p0, p1, v5, v8, v7}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8

    :cond_a
    const-string p0, "Unexpected leading comma"

    invoke-static {p2, p0, v5, v8, v7}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8
.end method


# virtual methods
.method public final b()Lkotlinx/serialization/json/l;
    .locals 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->s()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/o;->d(Z)Lkotlinx/serialization/json/a0;

    move-result-object p0

    goto/16 :goto_7

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lkotlinx/serialization/json/internal/o;->d(Z)Lkotlinx/serialization/json/a0;

    move-result-object p0

    goto/16 :goto_7

    :cond_1
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v1, v4, :cond_d

    iget v1, p0, Lkotlinx/serialization/json/internal/o;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/serialization/json/internal/o;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    new-instance v0, Ll6/l;

    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    invoke-direct {v1, p0, v5}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/o;Lkotlin/coroutines/d;)V

    invoke-direct {v0, v1}, Ll6/l;-><init>(Lvb/d;)V

    sget-object v1, Lkotlin/a;->a:Ljava/lang/Object;

    new-instance v1, Lkotlin/c;

    iget-object v0, v0, Ll6/l;->a:Ljava/lang/Object;

    check-cast v0, Lvb/d;

    invoke-direct {v1, v0}, Lkotlin/c;-><init>(Lvb/d;)V

    :cond_2
    :goto_0
    iget-object v0, v1, Lkotlin/c;->d:Ljava/lang/Object;

    iget-object v2, v1, Lkotlin/c;->c:Lkotlin/coroutines/d;

    if-nez v2, :cond_3

    invoke-static {v0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/l;

    goto/16 :goto_6

    :cond_3
    sget-object v3, Lkotlin/a;->a:Ljava/lang/Object;

    invoke-static {v3, v0}, Lkotlin/Result;->equals-impl0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    iget-object v0, v1, Lkotlin/c;->a:Lvb/d;

    iget-object v3, v1, Lkotlin/c;->b:Ljava/lang/Object;

    const-string v4, "null cannot be cast to non-null type kotlin.Function3<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.startCoroutineUninterceptedOrReturn, P of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.startCoroutineUninterceptedOrReturn, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.startCoroutineUninterceptedOrReturn>, kotlin.Any?>"

    invoke-static {v0, v4}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-static {v4, v0}, Li4/g;->g(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v3, v2}, Lvb/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eq v0, v3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    iput-object v3, v1, Lkotlin/c;->d:Ljava/lang/Object;

    :goto_2
    invoke-interface {v2, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/internal/v;->h(B)B

    move-result v1

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->s()B

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_c

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->b()Z

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_9

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/o;->b:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->k()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lkotlinx/serialization/json/internal/v;->h(B)B

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/o;->b()Lkotlinx/serialization/json/l;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->g()B

    move-result v1

    if-eq v1, v6, :cond_6

    if-ne v1, v8, :cond_8

    goto :goto_4

    :cond_8
    const-string p0, "Expected end of the object or comma"

    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_9
    :goto_4
    if-ne v1, v4, :cond_a

    invoke-virtual {v0, v8}, Lkotlinx/serialization/json/internal/v;->h(B)B

    goto :goto_5

    :cond_a
    if-eq v1, v6, :cond_b

    :goto_5
    new-instance v0, Lkotlinx/serialization/json/w;

    invoke-direct {v0, v2}, Lkotlinx/serialization/json/w;-><init>(Ljava/util/Map;)V

    :goto_6
    iget v1, p0, Lkotlinx/serialization/json/internal/o;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/o;->c:I

    move-object p0, v0

    goto :goto_7

    :cond_b
    const-string p0, "Unexpected trailing comma"

    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_c
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_d
    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/o;->c()Lkotlinx/serialization/json/d;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_e
    const-string p0, "Cannot begin reading element, unexpected token: "

    invoke-static {p0, v1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public final c()Lkotlinx/serialization/json/d;
    .locals 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->g()B

    move-result v1

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->s()B

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eq v2, v6, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->b()Z

    move-result v7

    const/16 v8, 0x9

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/o;->b()Lkotlinx/serialization/json/l;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->g()B

    move-result v1

    if-eq v1, v6, :cond_0

    if-ne v1, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    iget v8, v0, Lkotlinx/serialization/json/internal/v;->a:I

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Expected end of the array or comma"

    invoke-static {v0, p0, v8, v5, v6}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_3
    const/16 p0, 0x8

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, v8}, Lkotlinx/serialization/json/internal/v;->h(B)B

    goto :goto_2

    :cond_4
    if-eq v1, v6, :cond_5

    :goto_2
    new-instance p0, Lkotlinx/serialization/json/d;

    invoke-direct {p0, v2}, Lkotlinx/serialization/json/d;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_5
    const-string p0, "Unexpected trailing comma"

    invoke-static {v0, p0, v4, v5, v3}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_6
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v4, v5, v3}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public final d(Z)Lkotlinx/serialization/json/a0;
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/o;->b:Z

    iget-object p0, p0, Lkotlinx/serialization/json/internal/o;->a:Lkotlinx/serialization/json/internal/v;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->k()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p1, :cond_2

    const-string v0, "null"

    invoke-static {p0, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lkotlinx/serialization/json/t;->INSTANCE:Lkotlinx/serialization/json/t;

    return-object p0

    :cond_2
    new-instance v0, Lkotlinx/serialization/json/q;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/q;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method
