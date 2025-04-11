.class public Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;
.super Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.source "SourceFile"


# instance fields
.field private final connAck:Lk8/a;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V

    iget-object p1, p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;->connAck:Lk8/a;

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;->connAck:Lk8/a;

    return-void
.end method

.method public constructor <init>(Lk8/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;->connAck:Lk8/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;->copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lh8/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;->getMqttMessage()Lk8/a;

    move-result-object p0

    return-object p0
.end method

.method public getMqttMessage()Lk8/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;->connAck:Lk8/a;

    return-object p0
.end method
