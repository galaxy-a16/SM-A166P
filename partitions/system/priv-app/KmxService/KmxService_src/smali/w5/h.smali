.class public final Lw5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/hivemq/client/mqtt/MqttVersion;

.field public volatile b:Lf6/a;

.field public final c:Lw5/j;

.field public final d:Lx5/a;

.field public final e:Lw5/g;

.field public final f:Lv7/t;

.field public final g:Lv7/t;

.field public final h:Ln2/l;

.field public volatile i:Lio/netty/channel/EventLoop;

.field public j:I

.field public k:J

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;

.field public volatile m:Lw5/i;

.field public n:Lw5/m;

.field public o:Lio/netty/handler/ssl/SslContext;

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/MqttVersion;Lf6/a;Lw5/m;Lw5/j;Lx5/a;Lw5/g;Lv7/t;Lv7/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    iput-object p2, p0, Lw5/h;->b:Lf6/a;

    iput-object p4, p0, Lw5/h;->c:Lw5/j;

    iput-object p5, p0, Lw5/h;->d:Lx5/a;

    iput-object p6, p0, Lw5/h;->e:Lw5/g;

    iput-object p7, p0, Lw5/h;->f:Lv7/t;

    iput-object p8, p0, Lw5/h;->g:Lv7/t;

    sget-object p1, Lr6/c;->a:Lr6/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp1/c;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p4}, Lp1/c;-><init>(Lr6/b;I)V

    iput-object p0, p2, Lp1/c;->b:Ljava/lang/Object;

    new-instance p1, Ln2/l;

    iget-object p2, p2, Lp1/c;->c:Ljava/lang/Object;

    check-cast p2, Lr6/b;

    invoke-direct {p1, p2, p0}, Ln2/l;-><init>(Lr6/b;Lw5/h;)V

    iput-object p1, p0, Lw5/h;->h:Ln2/l;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lw5/h;->n:Lw5/m;

    return-void
.end method


# virtual methods
.method public final a()Lio/netty/channel/EventLoop;
    .locals 5

    iget-object v0, p0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lw5/h;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lw5/h;->j:I

    iget-wide v1, p0, Lw5/h;->k:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lw5/h;->k:J

    iget-object v1, p0, Lw5/h;->i:Lio/netty/channel/EventLoop;

    if-nez v1, :cond_0

    sget-object v1, Lr7/d;->e:Lr7/d;

    iget-object v2, p0, Lw5/h;->c:Lw5/j;

    iget-object v3, v2, Lw5/j;->b:Ljava/util/concurrent/Executor;

    iget v2, v2, Lw5/j;->c:I

    invoke-virtual {v1, v2, v3}, Lr7/d;->b(ILjava/util/concurrent/Executor;)Lio/netty/channel/EventLoop;

    move-result-object v1

    iput-object v1, p0, Lw5/h;->i:Lio/netty/channel/EventLoop;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 0

    iget-object p0, p0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/MqttClientState;

    return-object p0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lw5/h;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lw5/h;->j:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lw5/h;->i:Lio/netty/channel/EventLoop;

    iget-wide v2, p0, Lw5/h;->k:J

    new-instance v4, Lw5/f;

    invoke-direct {v4, p0, v2, v3}, Lw5/f;-><init>(Lw5/h;J)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
