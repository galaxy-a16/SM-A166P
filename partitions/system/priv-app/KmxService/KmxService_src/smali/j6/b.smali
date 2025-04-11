.class public final Lj6/b;
.super Lj6/c;
.source "SourceFile"


# instance fields
.field public final c:Ls7/a;


# direct methods
.method public constructor <init>(Lb7/a;Ls7/a;)V
    .locals 2

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    const-string v1, "Client sent DISCONNECT"

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Ll8/a;Ljava/lang/String;)V

    sget-object p1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->USER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-direct {p0, v0, p1}, Lj6/c;-><init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    iput-object p2, p0, Lj6/b;->c:Ls7/a;

    return-void
.end method
