.class public abstract Lio/netty/handler/ssl/AbstractSniHandler;
.super Lio/netty/handler/ssl/SslClientHelloHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/ssl/SslClientHelloHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private hostname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslClientHelloHandler;-><init>()V

    return-void
.end method

.method private static extractSniHostname(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    add-int/lit8 v0, v0, 0x22

    sub-int v2, v1, v0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    if-gt v0, v1, :cond_4

    :goto_0
    sub-int v1, v0, v2

    const/4 v3, 0x4

    if-lt v1, v3, :cond_4

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    if-ge v4, v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_3

    add-int/lit8 v2, v2, 0x2

    sub-int v1, v0, v2

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v1

    add-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2, v1, v0}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_0
    new-instance p3, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {p3, p2, p0}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, p3}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method


# virtual methods
.method public lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lio/netty/handler/ssl/AbstractSniHandler;->extractSniHostname(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->lookup(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public abstract lookup(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public abstract onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation
.end method
