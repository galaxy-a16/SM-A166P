.class public abstract Lio/netty/channel/nio/AbstractNioMessageChannel;
.super Lio/netty/channel/nio/AbstractNioChannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;
    }
.end annotation


# instance fields
.field inputShutdown:Z


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/nio/AbstractNioChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V

    return-void
.end method


# virtual methods
.method public closeOnReadError(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-interface {p0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_2

    instance-of p0, p0, Lio/netty/channel/ServerChannel;

    xor-int/2addr p0, v1

    return p0

    :cond_2
    return v1
.end method

.method public continueOnWriteError()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public doBeginRead()V
    .locals 1

    iget-boolean v0, p0, Lio/netty/channel/nio/AbstractNioMessageChannel;->inputShutdown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioChannel;->doBeginRead()V

    return-void
.end method

.method public abstract doReadMessages(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 6

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    and-int/lit8 p0, v1, 0x4

    if-eqz p0, :cond_4

    and-int/lit8 p0, v1, -0x5

    invoke-virtual {v0, p0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/ChannelConfig;->getWriteSpinCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {p0, v2, p1}, Lio/netty/channel/nio/AbstractNioMessageChannel;->doWriteMessage(Ljava/lang/Object;Lio/netty/channel/ChannelOutboundBuffer;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    or-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->continueOnWriteError()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_5
    throw v2
.end method

.method public abstract doWriteMessage(Ljava/lang/Object;Lio/netty/channel/ChannelOutboundBuffer;)Z
.end method

.method public bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    move-result-object p0

    return-object p0
.end method

.method public newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
    .locals 2

    .line 2
    new-instance v0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioMessageChannel;Lio/netty/channel/nio/AbstractNioMessageChannel$1;)V

    return-object v0
.end method
