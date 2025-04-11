.class final Lkotlin/coroutines/CoroutineContext$plus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/c;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/coroutines/CoroutineContext$plus$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-direct {v0}, Lkotlin/coroutines/CoroutineContext$plus$1;-><init>()V

    sput-object v0, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE:Lkotlin/coroutines/CoroutineContext$plus$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/i;

    check-cast p2, Lkotlin/coroutines/g;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/CoroutineContext$plus$1;->invoke(Lkotlin/coroutines/i;Lkotlin/coroutines/g;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/i;Lkotlin/coroutines/g;)Lkotlin/coroutines/i;
    .locals 2

    .line 2
    const-string p0, "acc"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lkotlin/coroutines/g;->getKey()Lkotlin/coroutines/h;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/i;->minusKey(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lkotlin/coroutines/e;->f0:I

    sget-object v0, Le9/a;->c:Le9/a;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/e;

    if-nez v1, :cond_1

    new-instance p1, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p1, p0, p2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/i;Lkotlin/coroutines/g;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->minusKey(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    if-ne p0, p1, :cond_2

    new-instance p0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p0, p2, v1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/i;Lkotlin/coroutines/g;)V

    move-object p2, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/coroutines/CombinedContext;

    new-instance v0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v0, p0, p2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/i;Lkotlin/coroutines/g;)V

    invoke-direct {p1, v0, v1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/i;Lkotlin/coroutines/g;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method
