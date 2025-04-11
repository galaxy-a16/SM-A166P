.class public final synthetic Li6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ls6/a;

.field public final synthetic b:Lw5/h;

.field public final synthetic c:Li6/b;

.field public final synthetic d:Lio/netty/channel/EventLoop;


# direct methods
.method public synthetic constructor <init>(Ls6/a;Lw5/h;Li6/b;Lio/netty/channel/EventLoop;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/c;->a:Ls6/a;

    iput-object p2, p0, Li6/c;->b:Lw5/h;

    iput-object p3, p0, Li6/c;->c:Li6/b;

    iput-object p4, p0, Li6/c;->d:Lio/netty/channel/EventLoop;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Ljava/lang/Throwable;

    iget-object p1, p0, Li6/c;->a:Ls6/a;

    invoke-virtual {p1}, Ls6/a;->b()V

    iget-boolean v0, p1, Ls6/a;->c:Z

    iget-object v1, p0, Li6/c;->b:Lw5/h;

    iget-object v2, p0, Li6/c;->c:Li6/b;

    if-eqz v0, :cond_1

    iget-object p2, v1, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object v3, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ls6/a;->b()V

    iget-object p2, v1, Lw5/h;->n:Lw5/m;

    iget-object v0, p1, Ls6/a;->e:Lw5/m;

    invoke-virtual {p2, v0}, Lw5/m;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iput-object v0, v1, Lw5/h;->n:Lw5/m;

    const/4 p2, 0x0

    iput-object p2, v1, Lw5/h;->o:Lio/netty/handler/ssl/SslContext;

    :cond_0
    invoke-virtual {p1}, Ls6/a;->b()V

    new-instance p2, Li6/b;

    invoke-direct {p2, v2}, Li6/b;-><init>(Li6/b;)V

    iget-object p1, p1, Ls6/a;->f:Lx6/a;

    iget-object p0, p0, Li6/c;->d:Lio/netty/channel/EventLoop;

    invoke-static {v1, p1, p2, p0}, Li6/d;->c(Lw5/h;Lx6/a;Li6/b;Lio/netty/channel/EventLoop;)V

    goto :goto_1

    :cond_1
    iget-object p0, v1, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lw5/h;->c()V

    if-eqz v2, :cond_3

    new-instance p0, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    if-nez p2, :cond_2

    const-string p1, "Reconnect was cancelled."

    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, v2, Li6/b;->a:Leb/u;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Leb/u;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
