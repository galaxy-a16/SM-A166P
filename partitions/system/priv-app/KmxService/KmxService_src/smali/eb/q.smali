.class public final Leb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Runnable;

.field public final c:J

.field public d:J

.field public e:J

.field public f:J

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Runnable;JLjava/util/concurrent/atomic/AtomicReference;JI)V
    .locals 0

    iput p10, p0, Leb/q;->a:I

    iput-object p1, p0, Leb/q;->h:Ljava/lang/Object;

    iput-object p4, p0, Leb/q;->b:Ljava/lang/Runnable;

    iput-object p7, p0, Leb/q;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p8, p0, Leb/q;->c:J

    iput-wide p5, p0, Leb/q;->e:J

    iput-wide p2, p0, Leb/q;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Leb/q;->a:I

    iget-wide v1, p0, Leb/q;->c:J

    const-wide/16 v3, 0x1

    iget-object v5, p0, Leb/q;->h:Ljava/lang/Object;

    iget-object v6, p0, Leb/q;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v7, p0, Leb/q;->b:Ljava/lang/Runnable;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    check-cast v6, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v6}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast v5, Leb/r;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0}, Leb/r;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sget-wide v9, Leb/s;->a:J

    add-long v11, v7, v9

    iget-wide v13, p0, Leb/q;->e:J

    cmp-long v11, v11, v13

    if-ltz v11, :cond_1

    add-long/2addr v13, v1

    add-long/2addr v13, v9

    cmp-long v9, v7, v13

    if-ltz v9, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v9, p0, Leb/q;->f:J

    iget-wide v11, p0, Leb/q;->d:J

    add-long/2addr v11, v3

    iput-wide v11, p0, Leb/q;->d:J

    mul-long/2addr v11, v1

    add-long/2addr v11, v9

    goto :goto_1

    :cond_1
    :goto_0
    add-long v11, v7, v1

    iget-wide v9, p0, Leb/q;->d:J

    add-long/2addr v9, v3

    iput-wide v9, p0, Leb/q;->d:J

    mul-long/2addr v1, v9

    sub-long v1, v11, v1

    iput-wide v1, p0, Leb/q;->f:J

    :goto_1
    iput-wide v7, p0, Leb/q;->e:J

    sub-long/2addr v11, v7

    invoke-virtual {v5, p0, v11, v12, v0}, Leb/r;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p0

    invoke-virtual {v6, p0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/b;)Z

    :cond_2
    return-void

    :goto_2
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    check-cast v6, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_5

    check-cast v5, Ljb/p;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljb/q;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sget-wide v9, Ljb/q;->b:J

    add-long v11, v7, v9

    iget-wide v13, p0, Leb/q;->e:J

    cmp-long v11, v11, v13

    if-ltz v11, :cond_4

    add-long/2addr v13, v1

    add-long/2addr v13, v9

    cmp-long v9, v7, v13

    if-ltz v9, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v9, p0, Leb/q;->f:J

    iget-wide v11, p0, Leb/q;->d:J

    add-long/2addr v11, v3

    iput-wide v11, p0, Leb/q;->d:J

    mul-long/2addr v11, v1

    add-long/2addr v11, v9

    goto :goto_4

    :cond_4
    :goto_3
    add-long v11, v7, v1

    iget-wide v9, p0, Leb/q;->d:J

    add-long/2addr v9, v3

    iput-wide v9, p0, Leb/q;->d:J

    mul-long/2addr v1, v9

    sub-long v1, v11, v1

    iput-wide v1, p0, Leb/q;->f:J

    :goto_4
    iput-wide v7, p0, Leb/q;->e:J

    sub-long/2addr v11, v7

    invoke-virtual {v5, p0, v11, v12, v0}, Ljb/p;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

    move-result-object p0

    invoke-virtual {v6, p0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/b;)Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
