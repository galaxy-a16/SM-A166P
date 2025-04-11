.class Lio/netty/channel/AbstractChannel$AbstractUnsafe$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannel$AbstractUnsafe;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;


# direct methods
.method public constructor <init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$2;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$2;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object p0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {p0}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    return-void
.end method
