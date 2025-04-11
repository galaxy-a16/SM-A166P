.class public Lio/netty/util/concurrent/FastThreadLocalThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final cleanupFastThreadLocals:Z

.field private threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method


# virtual methods
.method public final setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;

    return-void
.end method

.method public final threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 0

    iget-object p0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;

    return-object p0
.end method
