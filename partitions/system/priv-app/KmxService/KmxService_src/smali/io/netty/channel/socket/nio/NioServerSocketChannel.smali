.class public Lio/netty/channel/socket/nio/NioServerSocketChannel;
.super Lio/netty/channel/nio/AbstractNioMessageChannel;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/socket/ServerSocketChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/socket/nio/NioServerSocketChannel$NioServerSocketChannelConfig;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/socket/ServerSocketChannelConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

    const-class v0, Lio/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

    invoke-static {v0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;-><init>(Ljava/nio/channels/ServerSocketChannel;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 2

    .line 2
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/netty/channel/nio/AbstractNioMessageChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V

    new-instance p1, Lio/netty/channel/socket/nio/NioServerSocketChannel$NioServerSocketChannelConfig;

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->javaChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0, v1}, Lio/netty/channel/socket/nio/NioServerSocketChannel$NioServerSocketChannelConfig;-><init>(Lio/netty/channel/socket/nio/NioServerSocketChannel;Lio/netty/channel/socket/nio/NioServerSocketChannel;Ljava/net/ServerSocket;Lio/netty/channel/socket/nio/NioServerSocketChannel$1;)V

    iput-object p1, p0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->config:Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/channel/socket/nio/NioServerSocketChannel;-><init>(Ljava/nio/channels/ServerSocketChannel;)V

    return-void
.end method

.method public static synthetic access$100(Lio/netty/channel/socket/nio/NioServerSocketChannel;)V
    .locals 0

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPending()V

    return-void
.end method

.method private static newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/ServerSocketChannel;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lio/netty/channel/ChannelException;

    const-string v1, "Failed to open a server socket."

    invoke-direct {v0, v1, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public closeOnReadError(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/nio/AbstractNioMessageChannel;->closeOnReadError(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->config()Lio/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object p0

    return-object p0
.end method

.method public config()Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->config:Lio/netty/channel/socket/ServerSocketChannelConfig;

    return-object p0
.end method

.method public doBind(Ljava/net/SocketAddress;)V
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->javaChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iget-object p0, p0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->config:Lio/netty/channel/socket/ServerSocketChannelConfig;

    invoke-interface {p0}, Lio/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Ljava/nio/channels/ServerSocketChannel;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->javaChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    iget-object p0, p0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->config:Lio/netty/channel/socket/ServerSocketChannelConfig;

    invoke-interface {p0}, Lio/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    :goto_0
    return-void
.end method

.method public doClose()V
    .locals 0

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->javaChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public doDisconnect()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public doFinishConnect()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public doReadMessages(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->javaChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/SocketUtils;->accept(Ljava/nio/channels/ServerSocketChannel;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-direct {v1, p0, v0}, Lio/netty/channel/socket/nio/NioSocketChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SocketChannel;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    sget-object p1, Lio/netty/channel/socket/nio/NioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to create a new channel from an accepted socket."

    invoke-interface {p1, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    sget-object p1, Lio/netty/channel/socket/nio/NioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "Failed to close a socket."

    invoke-interface {p1, v0, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public doWriteMessage(Ljava/lang/Object;Lio/netty/channel/ChannelOutboundBuffer;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->javaChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic javaChannel()Ljava/nio/channels/SelectableChannel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->javaChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object p0

    return-object p0
.end method

.method public javaChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 0

    .line 2
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioChannel;->javaChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object p0

    check-cast p0, Ljava/nio/channels/ServerSocketChannel;

    return-object p0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 0

    .line 1
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public localAddress0()Ljava/net/SocketAddress;
    .locals 0

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->javaChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p0

    invoke-static {p0}, Lio/netty/util/internal/SocketUtils;->localSocketAddress(Ljava/net/ServerSocket;)Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 0

    sget-object p0, Lio/netty/channel/socket/nio/NioServerSocketChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object p0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public remoteAddress0()Ljava/net/SocketAddress;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
