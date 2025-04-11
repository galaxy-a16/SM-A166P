.class public final Lcom/hivemq/client/internal/mqtt/handler/auth/k;
.super Lcom/hivemq/client/internal/mqtt/handler/auth/c;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/g;)V
    .locals 0

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->c:Lw5/h;

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/c;-><init>(Lw5/h;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/netty/channel/ChannelHandlerContext;Lj6/c;)V
    .locals 2

    invoke-virtual {p0}, Lp6/a;->b()V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq p1, v0, :cond_0

    new-instance p1, Ld/p0;

    const/16 v1, 0x1b

    invoke-direct {p1, v1, p0, p2}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->h(Ld/p0;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    :cond_0
    return-void
.end method

.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lv6/a;

    if-nez v0, :cond_2

    instance-of v0, p2, Lb7/a;

    if-eqz v0, :cond_1

    check-cast p2, Lb7/a;

    invoke-virtual {p0}, Lp6/a;->b()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_0

    new-instance v0, Ld/p0;

    const/16 v2, 0x1a

    invoke-direct {v0, v2, p0, p2}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->h(Ld/p0;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void

    :cond_2
    check-cast p2, Lv6/a;

    invoke-virtual {p0}, Lp6/a;->b()V

    iget-object p0, p2, Lv6/a;->e:Lf6/j;

    const/4 p0, 0x0

    throw p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "Timeout while waiting for AUTH or DISCONNECT."

    return-object p0
.end method
