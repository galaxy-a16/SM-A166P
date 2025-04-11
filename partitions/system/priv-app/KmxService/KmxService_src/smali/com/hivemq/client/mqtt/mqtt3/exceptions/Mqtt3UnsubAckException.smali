.class public Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;
.super Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;->copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;)V

    return-object v0
.end method

.method public getMqttMessage()Lf8/a;
    .locals 0

    .line 1
    sget-object p0, Lq7/a;->a:Lq7/a;

    return-object p0
.end method

.method public bridge synthetic getMqttMessage()Lz7/a;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;->getMqttMessage()Lf8/a;

    move-result-object p0

    return-object p0
.end method
