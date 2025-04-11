.class public abstract Lh6/e;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# instance fields
.field public a:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lio/netty/channel/ChannelHandlerContext;Lj6/c;)V
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public isSharable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lj6/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    move-object v0, p2

    check-cast v0, Lj6/c;

    invoke-virtual {p0, p1, v0}, Lh6/e;->a(Lio/netty/channel/ChannelHandlerContext;Lj6/c;)V

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method
