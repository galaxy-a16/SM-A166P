.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->a:I

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->a:I

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    check-cast p0, Ljava/util/Queue;

    check-cast v1, Lf6/f;

    check-cast p1, Ll6/k;

    new-instance v0, Ll6/i;

    invoke-direct {v0, p1, v1}, Ll6/i;-><init>(Ll6/k;Lf6/f;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/g;

    check-cast v1, Ly6/a;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    sget v0, Lcom/hivemq/client/internal/mqtt/handler/auth/g;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/auth/k;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/k;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/g;)V

    const-string v3, "auth"

    invoke-interface {v0, p0, v3, v2}, Lio/netty/channel/ChannelPipeline;->replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void

    :goto_0
    check-cast p0, Lma/a;

    check-cast v1, Ljava/util/List;

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lg2/m;->g([B)[B

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
