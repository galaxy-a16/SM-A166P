.class public final Ln6/a;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lio/netty/handler/ssl/SslHandler;

.field public final b:Ljava/lang/String;

.field public final c:Ljavax/net/ssl/HostnameVerifier;

.field public final d:Ljava/util/function/Consumer;

.field public final e:Ljava/util/function/BiConsumer;

.field public f:Z


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslHandler;Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;Lh6/a;Lh6/b;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln6/a;->f:Z

    iput-object p1, p0, Ln6/a;->a:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Ln6/a;->b:Ljava/lang/String;

    iput-object p3, p0, Ln6/a;->c:Ljavax/net/ssl/HostnameVerifier;

    iput-object p4, p0, Ln6/a;->d:Ljava/util/function/Consumer;

    iput-object p5, p0, Ln6/a;->e:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-boolean v0, p0, Ln6/a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln6/a;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Ln6/a;->e:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final isSharable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-eqz v0, :cond_4

    check-cast p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    iget-boolean v0, p0, Ln6/a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln6/a;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslCompletionEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object p2, p0, Ln6/a;->c:Ljavax/net/ssl/HostnameVerifier;

    if-eqz p2, :cond_2

    iget-object v0, p0, Ln6/a;->a:Lio/netty/handler/ssl/SslHandler;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iget-object v1, p0, Ln6/a;->b:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    new-instance p2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v0, "Hostname verification failed"

    invoke-direct {p2, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Ln6/a;->d:Ljava/util/function/Consumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslCompletionEvent;->cause()Ljava/lang/Throwable;

    move-result-object p2

    :goto_2
    iget-object p0, p0, Ln6/a;->e:Ljava/util/function/BiConsumer;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :cond_5
    :goto_3
    return-void
.end method
