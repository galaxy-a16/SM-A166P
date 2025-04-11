.class public abstract Lcom/hivemq/client/internal/mqtt/handler/auth/c;
.super Lp6/a;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/auth/d;


# static fields
.field public static final e:Lv5/a;


# instance fields
.field public final c:Lw5/h;

.field public d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->e:Lv5/a;

    return-void
.end method

.method public constructor <init>(Lw5/h;)V
    .locals 1

    invoke-direct {p0}, Lp6/a;-><init>()V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->c:Lw5/h;

    return-void
.end method

.method public static h(Ld/p0;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ld/p0;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->e:Lv5/a;

    const-string v1, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v0, v1, p0}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final d()J
    .locals 0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 0

    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object p0
.end method
