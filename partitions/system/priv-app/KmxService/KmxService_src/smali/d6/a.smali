.class public final Ld6/a;
.super Lc6/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ld6/c;Ld6/j;Ld6/f;Ld6/h;Ld6/i;Ld6/g;Ld6/k;Ld6/l;Lc6/d;Ld6/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc6/c;-><init>()V

    iget-object v0, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    aput-object p2, p1, v0

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p3, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p4, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p5, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p6, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p7, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p8, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p9, p1, p2

    iget-object p0, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p1

    aput-object p10, p0, p1

    return-void
.end method

.method public constructor <init>(Le6/b;Le6/k;Le6/g;Le6/i;Le6/j;Le6/h;Le6/l;Le6/m;Lc6/d;Le6/c;Le6/a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lc6/c;-><init>()V

    iget-object v0, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    aput-object p2, p1, v0

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p3, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p4, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p5, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p6, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p7, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p8, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p9, p1, p2

    iget-object p1, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p10, p1, p2

    iget-object p0, p0, Lc6/c;->a:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->AUTH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p1

    aput-object p11, p0, p1

    return-void
.end method
