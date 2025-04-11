.class public final synthetic Lj6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj6/g;

.field public final synthetic c:Lio/netty/channel/Channel;

.field public final synthetic d:Lj6/c;


# direct methods
.method public synthetic constructor <init>(Lj6/g;Lio/netty/channel/Channel;Lj6/c;I)V
    .locals 0

    iput p4, p0, Lj6/e;->a:I

    iput-object p1, p0, Lj6/e;->b:Lj6/g;

    iput-object p2, p0, Lj6/e;->c:Lio/netty/channel/Channel;

    iput-object p3, p0, Lj6/e;->d:Lj6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4

    iget p1, p0, Lj6/e;->a:I

    iget-object v0, p0, Lj6/e;->d:Lj6/c;

    iget-object v1, p0, Lj6/e;->c:Lio/netty/channel/Channel;

    iget-object p0, p0, Lj6/e;->b:Lj6/g;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1, v0}, Lj6/g;->b(Lio/netty/channel/Channel;Lj6/c;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v1, v0}, Lj6/g;->b(Lio/netty/channel/Channel;Lj6/c;)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance v2, Lj6/e;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v0, v3}, Lj6/e;-><init>(Lj6/g;Lio/netty/channel/Channel;Lj6/c;I)V

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void

    :goto_0
    invoke-virtual {p0, v1, v0}, Lj6/g;->b(Lio/netty/channel/Channel;Lj6/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
