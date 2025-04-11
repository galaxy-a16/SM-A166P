.class final Lio/netty/channel/ChannelOutboundBuffer$Entry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/internal/ObjectPool$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/ChannelOutboundBuffer$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/internal/ObjectPool$ObjectCreator<",
        "Lio/netty/channel/ChannelOutboundBuffer$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newObject(Lio/netty/util/internal/ObjectPool$Handle;)Lio/netty/channel/ChannelOutboundBuffer$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/channel/ChannelOutboundBuffer$Entry;",
            ">;)",
            "Lio/netty/channel/ChannelOutboundBuffer$Entry;"
        }
    .end annotation

    .line 1
    new-instance p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;-><init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/channel/ChannelOutboundBuffer$1;)V

    return-object p0
.end method

.method public bridge synthetic newObject(Lio/netty/util/internal/ObjectPool$Handle;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/channel/ChannelOutboundBuffer$Entry$1;->newObject(Lio/netty/util/internal/ObjectPool$Handle;)Lio/netty/channel/ChannelOutboundBuffer$Entry;

    move-result-object p0

    return-object p0
.end method
