.class public final synthetic Lw5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw5/h;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lw5/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/f;->a:Lw5/h;

    iput-wide p2, p0, Lw5/f;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lw5/f;->a:Lw5/h;

    iget-wide v1, p0, Lw5/f;->b:J

    iget-object p0, v0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p0

    :try_start_0
    iget-wide v3, v0, Lw5/h;->k:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lw5/h;->i:Lio/netty/channel/EventLoop;

    sget-object v1, Lr7/d;->e:Lr7/d;

    iget-object v0, v0, Lw5/h;->c:Lw5/j;

    iget-object v0, v0, Lw5/j;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0}, Lr7/d;->c(Ljava/util/concurrent/Executor;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
