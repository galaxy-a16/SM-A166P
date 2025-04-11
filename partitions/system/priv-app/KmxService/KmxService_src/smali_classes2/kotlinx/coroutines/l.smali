.class public final Lkotlinx/coroutines/l;
.super Lkotlinx/coroutines/z0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/k;


# instance fields
.field public final e:Lkotlinx/coroutines/m;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/f1;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/z0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/l;->e:Lkotlinx/coroutines/m;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->r()Lkotlinx/coroutines/f1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->q(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/l;->s(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->r()Lkotlinx/coroutines/f1;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/l;->e:Lkotlinx/coroutines/m;

    check-cast p0, Lkotlinx/coroutines/f1;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->m(Ljava/lang/Object;)Z

    return-void
.end method
