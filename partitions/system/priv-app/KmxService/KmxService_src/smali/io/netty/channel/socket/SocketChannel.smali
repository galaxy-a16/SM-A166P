.class public interface abstract Lio/netty/channel/socket/SocketChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/socket/DuplexChannel;


# virtual methods
.method public abstract synthetic attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
.end method

.method public abstract config()Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic hasAttr(Lio/netty/util/AttributeKey;)Z
.end method

.method public abstract localAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract parent()Lio/netty/channel/socket/ServerSocketChannel;
.end method

.method public abstract remoteAddress()Ljava/net/InetSocketAddress;
.end method
