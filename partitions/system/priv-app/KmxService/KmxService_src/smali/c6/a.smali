.class public final Lc6/a;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# instance fields
.field public final a:Lc6/c;

.field public final b:Ld/m;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lc6/c;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc6/a;->c:Z

    iput-boolean v0, p0, Lc6/a;->d:Z

    iput-object p1, p0, Lc6/a;->a:Lc6/c;

    new-instance p1, Ld/m;

    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {p1, v0}, Ld/m;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    iput-object p1, p0, Lc6/a;->b:Ld/m;

    return-void
.end method


# virtual methods
.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc6/a;->c:Z

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc6/a;->c:Z

    iget-boolean v1, p0, Lc6/a;->d:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lc6/a;->d:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method

.method public final flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lc6/a;->c:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc6/a;->d:Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public final isSharable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    instance-of v0, p2, Lu6/c;

    if-eqz v0, :cond_3

    check-cast p2, Lu6/c;

    invoke-interface {p2}, Lh8/a;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    iget-object v1, p0, Lc6/a;->a:Lc6/c;

    if-ltz v0, :cond_1

    iget-object v1, v1, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lc6/a;->b:Ld/m;

    invoke-virtual {v0, p2, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->h(Lu6/c;Ld/m;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_3
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_2
    return-void
.end method
