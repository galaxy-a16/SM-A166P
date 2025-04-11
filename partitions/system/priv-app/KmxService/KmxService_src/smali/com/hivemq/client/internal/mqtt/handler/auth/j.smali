.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/j;->a:I

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/j;->a:I

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/j;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/k;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    return-void

    :goto_0
    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    check-cast p1, Ln8/a;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->e(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;Ln8/a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
