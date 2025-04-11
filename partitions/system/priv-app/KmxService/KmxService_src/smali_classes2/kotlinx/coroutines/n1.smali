.class public Lkotlinx/coroutines/n1;
.super Lkotlinx/coroutines/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/i;Z)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->b:Lkotlin/coroutines/i;

    invoke-static {p0, p1}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
