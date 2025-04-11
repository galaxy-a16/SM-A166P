.class public abstract Lkotlin/coroutines/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g;


# instance fields
.field public final a:Lkotlin/coroutines/h;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/a;->a:Lkotlin/coroutines/h;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lvb/c;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Li4/g;->n(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lkotlin/coroutines/h;
    .locals 0

    iget-object p0, p0, Lkotlin/coroutines/a;->a:Lkotlin/coroutines/h;

    return-object p0
.end method

.method public minusKey(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;
    .locals 0

    invoke-static {p0, p1}, Li4/g;->t(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/coroutines/f;->a(Lkotlin/coroutines/i;Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method
