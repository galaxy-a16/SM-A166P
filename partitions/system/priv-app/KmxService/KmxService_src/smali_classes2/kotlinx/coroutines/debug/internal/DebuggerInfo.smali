.class public final Lkotlinx/coroutines/debug/internal/DebuggerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final coroutineId:Ljava/lang/Long;

.field private final dispatcher:Ljava/lang/String;

.field private final lastObservedStackTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final lastObservedThreadName:Ljava/lang/String;

.field private final lastObservedThreadState:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final sequenceNumber:J

.field private final state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/g;Lkotlin/coroutines/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lkotlinx/coroutines/w;->b:Ll4/e;

    invoke-interface {p2, p1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->coroutineId:Ljava/lang/Long;

    sget-object v0, Le9/a;->c:Le9/a;

    invoke-interface {p2, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->dispatcher:Ljava/lang/String;

    sget-object v0, Lkotlinx/coroutines/x;->b:Ll4/e;

    invoke-interface {p2, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p2

    invoke-static {p2}, Lcom/google/protobuf/n;->z(Lkotlin/coroutines/g;)V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->name:Ljava/lang/String;

    throw p1
.end method


# virtual methods
.method public final getCoroutineId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->coroutineId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getDispatcher()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->dispatcher:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastObservedStackTrace()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->lastObservedStackTrace:Ljava/util/List;

    return-object p0
.end method

.method public final getLastObservedThreadName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->lastObservedThreadName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastObservedThreadState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->lastObservedThreadState:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->sequenceNumber:J

    return-wide v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->state:Ljava/lang/String;

    return-object p0
.end method
