.class public final synthetic Ls2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/a;
.implements Lcom/google/firebase/concurrent/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/concurrent/e;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;I)V
    .locals 0

    .line 1
    iput p6, p0, Ls2/g;->a:I

    iput-object p1, p0, Ls2/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Ls2/g;->d:Ljava/lang/Object;

    iput-wide p3, p0, Ls2/g;->b:J

    iput-object p5, p0, Ls2/g;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ls2/i;Ljava/lang/Iterable;Lo2/j;J)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Ls2/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Ls2/g;->d:Ljava/lang/Object;

    iput-object p3, p0, Ls2/g;->e:Ljava/lang/Object;

    iput-wide p4, p0, Ls2/g;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ld/s0;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6

    iget v0, p0, Ls2/g;->a:I

    iget-wide v1, p0, Ls2/g;->b:J

    iget-object v3, p0, Ls2/g;->e:Ljava/lang/Object;

    iget-object v4, p0, Ls2/g;->d:Ljava/lang/Object;

    iget-object p0, p0, Ls2/g;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/firebase/concurrent/e;

    check-cast v4, Ljava/util/concurrent/Callable;

    check-cast v3, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/work/impl/n;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v4, p1, v5}, Landroidx/work/impl/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/google/firebase/concurrent/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Lcom/google/firebase/concurrent/e;

    check-cast v4, Ljava/lang/Runnable;

    check-cast v3, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/concurrent/c;

    const/4 v5, 0x2

    invoke-direct {v0, p0, v4, p1, v5}, Lcom/google/firebase/concurrent/c;-><init>(Lcom/google/firebase/concurrent/e;Ljava/lang/Runnable;Ld/s0;I)V

    iget-object p0, p0, Lcom/google/firebase/concurrent/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final execute()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Ls2/g;->c:Ljava/lang/Object;

    check-cast v0, Ls2/i;

    iget-object v1, p0, Ls2/g;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, p0, Ls2/g;->e:Ljava/lang/Object;

    check-cast v2, Lo2/j;

    iget-object v3, v0, Ls2/i;->c:Lt2/d;

    check-cast v3, Lt2/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lt2/k;->y(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lr2/b;

    const/4 v5, 0x2

    const-string v6, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    invoke-direct {v4, v3, v1, v6, v5}, Lr2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    :goto_0
    iget-object v0, v0, Ls2/i;->g:Lv2/a;

    check-cast v0, Lv2/b;

    invoke-virtual {v0}, Lv2/b;->a()J

    move-result-wide v0

    iget-wide v4, p0, Ls2/g;->b:J

    add-long/2addr v0, v4

    new-instance p0, Lt2/e;

    invoke-direct {p0, v0, v1, v2}, Lt2/e;-><init>(JLo2/j;)V

    invoke-virtual {v3, p0}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
