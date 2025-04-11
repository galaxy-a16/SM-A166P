.class public final La6/a;
.super Lz5/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(La6/c;La6/h;La6/d;La6/f;La6/g;La6/e;La6/i;La6/j;Lz5/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lz5/d;-><init>()V

    iget-object v0, p0, Lz5/d;->a:[Lz5/c;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    aput-object p2, p1, v0

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p3, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p4, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p5, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p6, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p7, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p8, p1, p2

    iget-object p0, p0, Lz5/d;->a:[Lz5/c;

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PINGRESP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p1

    aput-object p9, p0, p1

    return-void
.end method

.method public constructor <init>(Lb6/c;Lb6/i;Lb6/e;Lb6/g;Lb6/h;Lb6/f;Lb6/j;Lb6/k;Lz5/e;Lb6/d;Lb6/a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lz5/d;-><init>()V

    iget-object v0, p0, Lz5/d;->a:[Lz5/c;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->CONNACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    aput-object p2, p1, v0

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p3, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p4, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p5, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p6, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->SUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p7, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->UNSUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p8, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PINGRESP:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p9, p1, p2

    iget-object p1, p0, Lz5/d;->a:[Lz5/c;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p10, p1, p2

    iget-object p0, p0, Lz5/d;->a:[Lz5/c;

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->AUTH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p1

    aput-object p11, p0, p1

    return-void
.end method
