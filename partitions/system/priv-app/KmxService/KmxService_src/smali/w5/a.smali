.class public final synthetic Lw5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lw5/a;->a:I

    iput-object p1, p0, Lw5/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lw5/a;->a:I

    iget-object p0, p0, Lw5/a;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Ly6/a;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    check-cast p2, Ljava/lang/Throwable;

    sget p2, Lcom/hivemq/client/internal/mqtt/handler/auth/g;->f:I

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v1, "Server CONNACK with reason code SUCCESS not accepted."

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lk8/a;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lp9/d;->D(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Lt8/a;

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_0
    :try_start_0
    move-object p2, p1

    check-cast p2, Lm7/a;

    iget-object p2, p2, Lu6/f;->e:Lv7/t;

    invoke-interface {p2, v0}, Lv7/t;->listIterator(I)Lv7/s;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/b;

    invoke-interface {v0}, Lh8/b;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;

    const-string v0, "SUBACK contains at least one error code."

    invoke-direct {p2, p1, v0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;-><init>(Lt8/a;Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :goto_2
    check-cast p0, Lo6/e;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/List;

    sget-object v1, Lo6/e;->l:Lv5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ll7/b;

    const-string v2, "Immutable list"

    invoke-static {p2, v2}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, p2, Lv7/t;

    if-eqz v3, :cond_3

    check-cast p2, Lv7/t;

    invoke-interface {p2}, Lv7/t;->t()Lv7/t;

    move-result-object p2

    goto :goto_4

    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p2

    new-instance v3, Lv7/g;

    invoke-static {p2, v2}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_4

    aget-object v2, p2, v0

    invoke-static {v0, v2}, Lp9/d;->G(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-direct {v3, p2}, Lv7/g;-><init>([Ljava/lang/Object;)V

    move-object p2, v3

    goto :goto_4

    :cond_5
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    new-instance v2, Lv7/i;

    invoke-static {v0, p2}, Lp9/d;->G(ILjava/lang/Object;)V

    invoke-direct {v2, p2}, Lv7/i;-><init>(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_4

    :cond_6
    sget-object p2, Lv7/m;->a:Lv7/m;

    :goto_4
    sget-object v0, Lf6/h;->c:Lf6/h;

    invoke-direct {v1, p2, v0}, Ll7/b;-><init>(Lv7/t;Lf6/h;)V

    iget-object p0, p0, Lo6/e;->e:Lv7/w;

    new-instance p2, Lo6/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p2, v1, p1, v0}, Lo6/c;-><init>(Ll7/b;ILo6/d;)V

    iget-object p1, p0, Lv7/w;->a:Ld/g0;

    if-nez p1, :cond_7

    iput-object p2, p0, Lv7/w;->b:Ld/g0;

    goto :goto_5

    :cond_7
    iput-object p2, p1, Ld/g0;->a:Ljava/lang/Object;

    iput-object p1, p2, Ld/g0;->b:Ljava/lang/Object;

    :goto_5
    iput-object p2, p0, Lv7/w;->a:Ld/g0;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
