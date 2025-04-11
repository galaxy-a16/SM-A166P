.class public final Lkotlinx/coroutines/g1;
.super Lkotlinx/coroutines/n1;
.source "SourceFile"


# instance fields
.field public final c:Lkotlin/coroutines/d;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Lvb/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/n1;-><init>(Lkotlin/coroutines/i;Z)V

    invoke-static {p2, p0, p0}, Ll9/b;->S(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/g1;->c:Lkotlin/coroutines/d;

    return-void
.end method


# virtual methods
.method public final L()V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/g1;->c:Lkotlin/coroutines/d;

    :try_start_0
    invoke-static {v0}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    sget-object v1, Lkotlin/s;->a:Lkotlin/s;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lkotlinx/coroutines/internal/t;->c(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/a;->resumeWith(Ljava/lang/Object;)V

    throw v0
.end method
