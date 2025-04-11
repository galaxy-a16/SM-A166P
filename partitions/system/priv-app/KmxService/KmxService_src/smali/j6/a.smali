.class public final Lj6/a;
.super Leb/a;
.source "SourceFile"


# instance fields
.field public final a:Lw5/h;

.field public final b:Lb7/a;


# direct methods
.method public constructor <init>(Lw5/h;Lb7/a;)V
    .locals 0

    invoke-direct {p0}, Leb/a;-><init>()V

    iput-object p1, p0, Lj6/a;->a:Lw5/h;

    iput-object p2, p0, Lj6/a;->b:Lb7/a;

    return-void
.end method


# virtual methods
.method public final b(Leb/b;)V
    .locals 3

    iget-object v0, p0, Lj6/a;->a:Lw5/h;

    iget-object v0, v0, Lw5/h;->m:Lw5/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lw5/i;->i:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v1, "disconnect"

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lj6/g;

    if-nez v0, :cond_1

    :goto_0
    invoke-static {}, Lv9/a;->E()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object p0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Leb/b;)V

    return-void

    :cond_1
    new-instance v1, Ls7/a;

    invoke-direct {v1, p1}, Ls7/a;-><init>(Leb/b;)V

    invoke-interface {p1, v1}, Leb/b;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object p0, p0, Lj6/a;->b:Lb7/a;

    new-instance p1, Landroidx/emoji2/text/n;

    const/4 v2, 0x6

    invoke-direct {p1, v0, p0, v1, v2}, Landroidx/emoji2/text/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, v0, Lj6/g;->b:Lw5/h;

    iget-object p0, p0, Lw5/h;->i:Lio/netty/channel/EventLoop;

    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lv9/a;->E()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object p0

    iget-object p1, v1, Ls7/a;->a:Leb/b;

    invoke-interface {p1, p0}, Leb/b;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
