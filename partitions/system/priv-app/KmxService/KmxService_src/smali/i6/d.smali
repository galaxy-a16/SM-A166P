.class public final Li6/d;
.super Leb/t;
.source "SourceFile"


# static fields
.field public static final c:Lv5/a;


# instance fields
.field public final a:Lw5/h;

.field public final b:Lx6/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Li6/d;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Li6/d;->c:Lv5/a;

    return-void
.end method

.method public constructor <init>(Lw5/h;Lx6/a;)V
    .locals 10

    invoke-direct {p0}, Leb/t;-><init>()V

    iput-object p1, p0, Li6/d;->a:Lw5/h;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lw5/h;->e:Lw5/g;

    iget-object p1, p1, Lw5/g;->a:Lv6/c;

    if-eqz p1, :cond_2

    iget-object v0, p2, Lx6/a;->g:Lv6/c;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v9, Lx6/a;

    iget v2, p2, Lx6/a;->c:I

    iget-boolean v3, p2, Lx6/a;->d:Z

    iget-wide v4, p2, Lx6/a;->e:J

    iget-object v6, p2, Lx6/a;->f:Lx6/b;

    if-nez v0, :cond_1

    move-object v7, p1

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_0
    iget-object v8, p2, Lu6/h;->b:Lf6/h;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lx6/a;-><init>(IZJLx6/b;Lv6/c;Lf6/h;)V

    move-object p2, v9

    :cond_2
    :goto_1
    iput-object p2, p0, Li6/d;->b:Lx6/a;

    return-void
.end method

.method public static c(Lw5/h;Lx6/a;Li6/b;Lio/netty/channel/EventLoop;)V
    .locals 8

    iget-object v0, p2, Li6/b;->b:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw5/h;->c()V

    iget-object p0, p0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw5/h;->h:Ln2/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lva/f;

    invoke-direct {v1, v0}, Lva/f;-><init>(Ln2/l;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lva/f;->a:Ljava/lang/Object;

    iput-object p2, v1, Lva/f;->b:Ljava/lang/Object;

    new-instance v0, Lr6/a;

    iget-object v1, v1, Lva/f;->c:Ljava/lang/Object;

    check-cast v1, Ln2/l;

    invoke-direct {v0, v1, p1, p2}, Lr6/a;-><init>(Ln2/l;Lx6/a;Li6/b;)V

    iget-object v0, v0, Lr6/a;->g:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh6/c;

    new-instance v1, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v1}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    sget-object v2, Lr7/d;->e:Lr7/d;

    iget-object v2, v2, Lr7/d;->c:Lio/netty/channel/ChannelFactory;

    invoke-virtual {v1, v2}, Lio/netty/bootstrap/AbstractBootstrap;->channelFactory(Lio/netty/channel/ChannelFactory;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v1, v0}, Lio/netty/bootstrap/AbstractBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lw5/h;->n:Lw5/m;

    invoke-virtual {v0, p3}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    iget-object v1, v1, Lw5/m;->a:Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v7, Lj6/d;

    const/4 v6, 0x2

    move-object v1, v7

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lj6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v7}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lx6/a;ILi6/b;Lio/netty/channel/EventLoop;)V
    .locals 8

    new-instance v6, Ls6/a;

    iget-object v0, p0, Lw5/h;->n:Lw5/m;

    invoke-direct {v6, p6, p4, p3, v0}, Ls6/a;-><init>(Lio/netty/channel/EventLoop;ILx6/a;Lw5/m;)V

    sget-object p3, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_3_1_1:Lcom/hivemq/client/mqtt/MqttVersion;

    iget-object p4, p0, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    const/4 v7, 0x0

    if-ne p4, p3, :cond_0

    new-instance p3, Lva/e;

    new-instance p4, Lf9/b;

    const/16 v0, 0x1b

    invoke-direct {p4, p0, v0}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2}, Lg2/m;->j(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lt6/a;

    invoke-direct {v1, v6, v7}, Lt6/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p3, p4, p1, v0, v1}, Lva/e;-><init>(Lf9/b;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lt6/a;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/google/firebase/messaging/r;

    invoke-direct {p3, p0, p1, p2, v6}, Lcom/google/firebase/messaging/r;-><init>(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Ls6/a;)V

    :goto_0
    iget-object p1, p0, Lw5/h;->g:Lv7/t;

    invoke-interface {p1, v7}, Lv7/t;->listIterator(I)Lv7/s;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ly7/c;

    :try_start_0
    check-cast p4, Lcom/samsung/android/kmxservice/trustchain/client/network/a;

    iget-object p4, p4, Lcom/samsung/android/kmxservice/trustchain/client/network/a;->a:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    invoke-static {p4, p3}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->a(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;Ly7/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p4

    sget-object v0, Li6/d;->c:Lv5/a;

    const-string v1, "Unexpected exception thrown by disconnected listener."

    invoke-interface {v0, v1, p4}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ls6/a;->b()V

    iget-boolean p1, v6, Ls6/a;->c:Z

    iget-object p3, p0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance p1, Lr2/a;

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, v6

    move-object v2, p0

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lr2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Ls6/a;->b()V

    const-string p3, "Time unit"

    invoke-static {p2, p3}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide p3, v6, Ls6/a;->d:J

    invoke-virtual {p2, p3, p4, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p3

    invoke-interface {p6, p1, p3, p4, p2}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    invoke-virtual {v6}, Ls6/a;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw5/h;->p:Z

    invoke-virtual {v6}, Ls6/a;->b()V

    iput-boolean v7, p0, Lw5/h;->q:Z

    iput-boolean p1, v6, Ls6/a;->g:Z

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lw5/h;->c()V

    if-eqz p5, :cond_3

    iget-object p0, p5, Li6/b;->a:Leb/u;

    if-eqz p0, :cond_3

    invoke-interface {p0, p2}, Leb/u;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static e(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lx6/a;Li6/b;Lio/netty/channel/EventLoop;)V
    .locals 9

    iget-boolean v0, p4, Li6/b;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v1, p4, Li6/b;->d:Z

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p4, Li6/b;->c:I

    add-int/lit8 v6, v0, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Li6/d;->d(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lx6/a;ILi6/b;Lio/netty/channel/EventLoop;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Leb/u;)V
    .locals 4

    iget-object v0, p0, Li6/d;->a:Lw5/h;

    iget-object v1, v0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object v3, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    const-string v0, "MQTT client is already connected or connecting."

    invoke-direct {p0, v0}, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Leb/u;)V

    return-void

    :cond_0
    new-instance v1, Li6/b;

    invoke-direct {v1, p1}, Li6/b;-><init>(Leb/u;)V

    iget-object v2, v1, Li6/b;->b:Lio/reactivex/disposables/b;

    invoke-interface {p1, v2}, Leb/u;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object p0, p0, Li6/d;->b:Lx6/a;

    invoke-virtual {v0}, Lw5/h;->a()Lio/netty/channel/EventLoop;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Li6/d;->c(Lw5/h;Lx6/a;Li6/b;Lio/netty/channel/EventLoop;)V

    return-void
.end method
