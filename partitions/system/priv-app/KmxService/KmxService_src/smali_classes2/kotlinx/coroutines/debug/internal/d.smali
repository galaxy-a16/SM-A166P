.class public final Lkotlinx/coroutines/debug/internal/d;
.super Lkotlin/collections/i;
.source "SourceFile"


# instance fields
.field public final a:Lvb/c;

.field public final synthetic b:Lkotlinx/coroutines/debug/internal/e;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/e;Lvb/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/d;->b:Lkotlinx/coroutines/debug/internal/e;

    invoke-direct {p0}, Lkotlin/collections/i;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/d;->a:Lvb/c;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    sget-object p0, Lkotlinx/coroutines/debug/internal/f;->a:Lkotlinx/coroutines/internal/z;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/d;->b:Lkotlinx/coroutines/debug/internal/e;

    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/e;->d()I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/d;->b:Lkotlinx/coroutines/debug/internal/e;

    iget-object v0, v0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/debug/internal/b;

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/d;->a:Lvb/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/coroutines/debug/internal/a;

    invoke-direct {v1, v0, p0}, Lkotlinx/coroutines/debug/internal/a;-><init>(Lkotlinx/coroutines/debug/internal/b;Lvb/c;)V

    return-object v1
.end method
