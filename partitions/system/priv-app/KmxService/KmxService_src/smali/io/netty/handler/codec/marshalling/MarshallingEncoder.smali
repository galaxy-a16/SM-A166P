.class public Lio/netty/handler/codec/marshalling/MarshallingEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final LENGTH_PLACEHOLDER:[B


# instance fields
.field private final provider:Lio/netty/handler/codec/marshalling/MarshallerProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lio/netty/handler/codec/marshalling/MarshallingEncoder;->LENGTH_PLACEHOLDER:[B

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/marshalling/MarshallerProvider;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/marshalling/MarshallingEncoder;->provider:Lio/netty/handler/codec/marshalling/MarshallerProvider;

    return-void
.end method


# virtual methods
.method public encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 1

    iget-object p0, p0, Lio/netty/handler/codec/marshalling/MarshallingEncoder;->provider:Lio/netty/handler/codec/marshalling/MarshallerProvider;

    invoke-interface {p0, p1}, Lio/netty/handler/codec/marshalling/MarshallerProvider;->getMarshaller(Lio/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Marshaller;

    move-result-object p0

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p1

    sget-object v0, Lio/netty/handler/codec/marshalling/MarshallingEncoder;->LENGTH_PLACEHOLDER:[B

    invoke-virtual {p3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    new-instance v0, Lio/netty/handler/codec/marshalling/ChannelBufferByteOutput;

    invoke-direct {v0, p3}, Lio/netty/handler/codec/marshalling/ChannelBufferByteOutput;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p0, v0}, Lorg/jboss/marshalling/Marshaller;->start(Lorg/jboss/marshalling/ByteOutput;)V

    invoke-interface {p0, p2}, Lorg/jboss/marshalling/Marshaller;->writeObject(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/jboss/marshalling/Marshaller;->finish()V

    invoke-interface {p0}, Lorg/jboss/marshalling/Marshaller;->close()V

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {p3, p1, p0}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    return-void
.end method
