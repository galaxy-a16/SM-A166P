.class public Lkc/d;
.super Lkc/v;
.source "SourceFile"


# static fields
.field public static final h:J

.field public static final i:J

.field public static j:Lkc/d;


# instance fields
.field public e:Z

.field public f:Lkc/d;

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkc/d;->h:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkc/d;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkc/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 9

    iget-boolean v0, p0, Lkc/d;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    iget-wide v2, p0, Lkc/v;->c:J

    iget-boolean v0, p0, Lkc/v;->a:Z

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lkc/d;->e:Z

    const-class v1, Lkc/d;

    monitor-enter v1

    :try_start_0
    sget-object v5, Lkc/d;->j:Lkc/d;

    if-nez v5, :cond_1

    new-instance v5, Lkc/d;

    invoke-direct {v5}, Lkc/d;-><init>()V

    sput-object v5, Lkc/d;->j:Lkc/d;

    new-instance v5, Lj3/e;

    invoke-direct {v5}, Lj3/e;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkc/v;->c()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    :goto_0
    add-long/2addr v2, v5

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lkc/v;->c()J

    move-result-wide v2

    :goto_1
    iput-wide v2, p0, Lkc/d;->g:J

    sub-long/2addr v2, v5

    sget-object v0, Lkc/d;->j:Lkc/d;

    if-eqz v0, :cond_7

    :goto_2
    iget-object v4, v0, Lkc/d;->f:Lkc/d;

    if-eqz v4, :cond_5

    iget-wide v7, v4, Lkc/d;->g:J

    sub-long/2addr v7, v5

    cmp-long v7, v2, v7

    if-gez v7, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v4

    goto :goto_2

    :cond_5
    :goto_3
    iput-object v4, p0, Lkc/d;->f:Lkc/d;

    iput-object p0, v0, Lkc/d;->f:Lkc/d;

    sget-object p0, Lkc/d;->j:Lkc/d;

    if-ne v0, p0, :cond_6

    const-class p0, Lkc/d;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v1

    return-void

    :cond_7
    :try_start_1
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_9
    const-string p0, "Unbalanced enter/exit"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Z
    .locals 4

    iget-boolean v0, p0, Lkc/d;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lkc/d;->e:Z

    const-class v0, Lkc/d;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lkc/d;->j:Lkc/d;

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, v2, Lkc/d;->f:Lkc/d;

    if-ne v3, p0, :cond_1

    iget-object v3, p0, Lkc/d;->f:Lkc/d;

    iput-object v3, v2, Lkc/d;->f:Lkc/d;

    const/4 v2, 0x0

    iput-object v2, p0, Lkc/d;->f:Lkc/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 v1, 0x1

    :goto_1
    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method

.method public k()V
    .locals 0

    return-void
.end method
