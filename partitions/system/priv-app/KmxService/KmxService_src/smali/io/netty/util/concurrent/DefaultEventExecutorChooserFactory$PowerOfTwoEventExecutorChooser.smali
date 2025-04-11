.class final Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerOfTwoEventExecutorChooser"
.end annotation


# instance fields
.field private final executors:[Lio/netty/util/concurrent/EventExecutor;

.field private final idx:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>([Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;->idx:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    return-void
.end method


# virtual methods
.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 2

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;->idx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object p0, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0
.end method
