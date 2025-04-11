.class public Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;
.super Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.source "SourceFile"


# instance fields
.field private final auth:Li8/a;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V

    iget-object p1, p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->auth:Li8/a;

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->auth:Li8/a;

    return-void
.end method

.method public constructor <init>(Li8/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->auth:Li8/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lh8/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->getMqttMessage()Li8/a;

    move-result-object p0

    return-object p0
.end method

.method public getMqttMessage()Li8/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;->auth:Li8/a;

    return-object p0
.end method
