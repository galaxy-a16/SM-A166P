.class public abstract synthetic Lkotlinx/coroutines/flow/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "kotlinx.coroutines.flow.defaultConcurrency"

    const/16 v1, 0x10

    int-to-long v1, v1

    const/4 v3, 0x1

    int-to-long v3, v3

    const v5, 0x7fffffff

    int-to-long v5, v5

    invoke-static/range {v0 .. v6}, Lv4/b;->W(Ljava/lang/String;JJJ)J

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/f;Lvb/c;)Lkotlinx/coroutines/flow/internal/h;
    .locals 6

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;-><init>(Lvb/c;Lkotlin/coroutines/d;)V

    new-instance p1, Lkotlinx/coroutines/flow/internal/h;

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    const/4 v4, -0x2

    sget-object v5, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/h;-><init>(Lvb/d;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-object p1
.end method
