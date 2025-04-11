.class public final Le6/c;
.super Le6/e;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Le6/c;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le6/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()I
    .locals 0

    sget p0, Le6/c;->q:I

    return p0
.end method

.method public final K(Lu6/e;)I
    .locals 4

    check-cast p1, Lb7/a;

    iget-wide v0, p1, Lb7/a;->e:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    iget-object p1, p1, Lb7/a;->f:Lf6/j;

    invoke-static {p1}, Lh3/a;->E(Lf6/j;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public final N(Lu6/e;Lio/netty/buffer/ByteBuf;)V
    .locals 4

    check-cast p1, Lb7/a;

    iget-wide v0, p1, Lb7/a;->e:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    long-to-int p0, v0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    :cond_0
    iget-object p0, p1, Lb7/a;->f:Lf6/j;

    if-eqz p0, :cond_1

    const/16 p1, 0x1c

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    :cond_1
    return-void
.end method

.method public final P()Lh8/b;
    .locals 0

    sget-object p0, Ll8/a;->a:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object p0
.end method
