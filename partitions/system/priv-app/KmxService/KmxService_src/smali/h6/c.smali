.class public final Lh6/c;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lw5/h;

.field public final b:Lx6/a;

.field public final c:Li6/b;

.field public final d:Lc6/a;

.field public final e:Li6/e;

.field public final f:Lj6/g;

.field public final g:Lcom/hivemq/client/internal/mqtt/handler/auth/d;


# direct methods
.method public constructor <init>(Lw5/h;Lx6/a;Li6/b;Lc6/a;Li6/e;Lj6/g;Lcom/hivemq/client/internal/mqtt/handler/auth/d;Lcb/a;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    iput-object p1, p0, Lh6/c;->a:Lw5/h;

    iput-object p2, p0, Lh6/c;->b:Lx6/a;

    iput-object p3, p0, Lh6/c;->c:Li6/b;

    iput-object p4, p0, Lh6/c;->d:Lc6/a;

    iput-object p5, p0, Lh6/c;->e:Li6/e;

    iput-object p6, p0, Lh6/c;->f:Lj6/g;

    iput-object p7, p0, Lh6/c;->g:Lcom/hivemq/client/internal/mqtt/handler/auth/d;

    return-void
.end method

.method public static a(Lh6/c;Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    iget-object v0, p0, Lh6/c;->a:Lw5/h;

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    new-instance v2, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v2, p2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lh6/c;->b:Lx6/a;

    iget-object v4, p0, Lh6/c;->c:Li6/b;

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Li6/d;->e(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lx6/a;Li6/b;Lio/netty/channel/EventLoop;)V

    return-void
.end method


# virtual methods
.method public final handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 8

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lio/netty/channel/socket/SocketChannel;->config()Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/channel/socket/SocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lio/netty/channel/socket/SocketChannelConfig;->setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/netty/channel/socket/SocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    iget-object v2, p0, Lh6/c;->a:Lw5/h;

    iget-object v3, v2, Lw5/h;->n:Lw5/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x2710

    invoke-interface {v0, v3}, Lio/netty/channel/socket/SocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    iget-object v0, v2, Lw5/h;->n:Lw5/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lw5/h;->n:Lw5/m;

    iget-object v3, v0, Lw5/m;->b:Lw5/k;

    if-nez v3, :cond_0

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "encoder"

    iget-object v1, p0, Lh6/c;->d:Lc6/a;

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "auth"

    iget-object v1, p0, Lh6/c;->g:Lcom/hivemq/client/internal/mqtt/handler/auth/d;

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "connect"

    iget-object v1, p0, Lh6/c;->e:Li6/e;

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "disconnect"

    iget-object p0, p0, Lh6/c;->f:Lj6/g;

    invoke-interface {p1, v0, p0}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    goto/16 :goto_1

    :cond_0
    new-instance v5, Lh6/a;

    invoke-direct {v5, p0}, Lh6/a;-><init>(Lh6/c;)V

    new-instance v6, Lh6/b;

    invoke-direct {v6, p0}, Lh6/b;-><init>(Lh6/c;)V

    iget-object p0, v0, Lw5/m;->a:Ljava/net/InetSocketAddress;

    :try_start_0
    iget-object v0, v2, Lw5/h;->o:Lio/netty/handler/ssl/SslContext;

    if-nez v0, :cond_2

    iget-object v0, v3, Lw5/k;->d:Lv7/t;

    invoke-static {}, Lio/netty/handler/ssl/SslContextBuilder;->forClient()Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v4

    iget-object v7, v3, Lw5/k;->b:Ljavax/net/ssl/TrustManagerFactory;

    invoke-virtual {v4, v7}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager(Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v4

    iget-object v7, v3, Lw5/k;->a:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v4, v7}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljavax/net/ssl/KeyManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Lio/netty/handler/ssl/SslContextBuilder;->protocols([Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/handler/ssl/SupportedCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/SupportedCipherSuiteFilter;

    iget-object v4, v3, Lw5/k;->c:Lv7/t;

    invoke-virtual {v0, v4, v1}, Lio/netty/handler/ssl/SslContextBuilder;->ciphers(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object v0

    iput-object v0, v2, Lw5/h;->o:Lio/netty/handler/ssl/SslContext;

    :cond_2
    invoke-interface {p1}, Lio/netty/channel/Channel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lio/netty/handler/ssl/SslContext;->newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Lio/netty/handler/ssl/SslHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v3, Lw5/k;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeTimeoutMillis(J)V

    iget-object v4, v3, Lw5/k;->f:Ljavax/net/ssl/HostnameVerifier;

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    const-string v2, "HTTPS"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    :cond_3
    new-instance v7, Ln6/a;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Ln6/a;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;Lh6/a;Lh6/b;)V

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p0

    const-string p1, "ssl"

    invoke-interface {p0, p1, v0}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p0

    const-string p1, "ssl.adapter"

    invoke-interface {p0, p1, v7}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v6, p1, p0}, Lh6/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final isSharable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
