.class public Lj6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final b:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6/c;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lj6/c;->b:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-void
.end method
