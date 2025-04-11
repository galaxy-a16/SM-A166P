.class public final Lc6/d;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;
.source "SourceFile"


# static fields
.field public static final p:Lio/netty/buffer/ByteBuf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lc6/d;->p:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Lu6/c;Ld/m;)Lio/netty/buffer/ByteBuf;
    .locals 0

    check-cast p1, Ld7/a;

    sget-object p0, Lc6/d;->p:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method
