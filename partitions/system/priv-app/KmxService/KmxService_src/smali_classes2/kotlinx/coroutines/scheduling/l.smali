.class public final Lkotlinx/coroutines/scheduling/l;
.super Lkotlinx/coroutines/t;
.source "SourceFile"


# static fields
.field public static final c:Lkotlinx/coroutines/scheduling/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/l;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/l;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->c:Lkotlinx/coroutines/scheduling/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Lkotlinx/coroutines/scheduling/e;->d:Lkotlinx/coroutines/scheduling/e;

    sget-object p1, Lkotlinx/coroutines/scheduling/k;->g:Lcom/google/gson/internal/c;

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/h;->c:Lkotlinx/coroutines/scheduling/c;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/c;->b(Ljava/lang/Runnable;Lcom/google/gson/internal/c;Z)V

    return-void
.end method

.method public final t(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Lkotlinx/coroutines/scheduling/e;->d:Lkotlinx/coroutines/scheduling/e;

    sget-object p1, Lkotlinx/coroutines/scheduling/k;->g:Lcom/google/gson/internal/c;

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/h;->c:Lkotlinx/coroutines/scheduling/c;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/c;->b(Ljava/lang/Runnable;Lcom/google/gson/internal/c;Z)V

    return-void
.end method
