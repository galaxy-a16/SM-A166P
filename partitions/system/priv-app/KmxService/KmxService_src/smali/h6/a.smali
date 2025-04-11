.class public final synthetic Lh6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lh6/c;


# direct methods
.method public synthetic constructor <init>(Lh6/c;)V
    .locals 0

    iput-object p1, p0, Lh6/a;->a:Lh6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lio/netty/channel/Channel;

    iget-object p0, p0, Lh6/a;->a:Lh6/c;

    iget-object v0, p0, Lh6/c;->a:Lw5/h;

    iget-object v0, v0, Lw5/h;->n:Lw5/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    return-void
.end method
