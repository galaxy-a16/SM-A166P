.class public final Lbc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lbc/f;

.field public static final i:Ljava/util/logging/Logger;

.field public static final j:Lcom/google/gson/internal/d;


# instance fields
.field public a:I

.field public b:Z

.field public c:J

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lbc/e;

.field public final g:Lbc/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/gson/internal/d;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/internal/d;-><init>(II)V

    sput-object v0, Lbc/f;->j:Lcom/google/gson/internal/d;

    new-instance v0, Lbc/f;

    new-instance v1, Lbc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lac/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TaskRunner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lac/b;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lac/b;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, Lbc/d;-><init>(Lac/b;)V

    invoke-direct {v0, v1}, Lbc/f;-><init>(Lbc/d;)V

    sput-object v0, Lbc/f;->h:Lbc/f;

    const-class v0, Lbc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(TaskRunner::class.java.name)"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lbc/f;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lbc/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc/f;->g:Lbc/d;

    const/16 p1, 0x2710

    iput p1, p0, Lbc/f;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbc/f;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbc/f;->e:Ljava/util/ArrayList;

    new-instance p1, Lbc/e;

    invoke-direct {p1, p0}, Lbc/e;-><init>(Lbc/f;)V

    iput-object p1, p0, Lbc/f;->f:Lbc/e;

    return-void
.end method

.method public static final a(Lbc/f;Lbc/a;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lac/c;->a:[B

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "currentThread"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lbc/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lbc/a;->a()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, v2, v3}, Lbc/f;->b(Lbc/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception v2

    monitor-enter p0

    const-wide/16 v3, -0x1

    :try_start_2
    invoke-virtual {p0, p1, v3, v4}, Lbc/f;->b(Lbc/a;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final b(Lbc/a;J)V
    .locals 7

    sget-object v0, Lac/c;->a:[B

    iget-object v0, p1, Lbc/a;->a:Lbc/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lbc/c;->b:Lbc/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lbc/c;->d:Z

    iput-boolean v3, v0, Lbc/c;->d:Z

    iput-object v1, v0, Lbc/c;->b:Lbc/a;

    iget-object v1, p0, Lbc/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v5, -0x1

    cmp-long v1, p2, v5

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    iget-boolean v1, v0, Lbc/c;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, p1, p2, p3, v4}, Lbc/c;->d(Lbc/a;JZ)Z

    :cond_1
    iget-object p1, v0, Lbc/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_2

    iget-object p0, p0, Lbc/f;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public final c()Lbc/a;
    .locals 16

    move-object/from16 v1, p0

    sget-object v0, Lac/c;->a:[B

    :goto_0
    iget-object v0, v1, Lbc/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, v1, Lbc/f;->g:Lbc/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide v7, 0x7fffffffffffffffL

    move-object v9, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbc/c;

    iget-object v10, v10, Lbc/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbc/a;

    iget-wide v11, v10, Lbc/a;->b:J

    sub-long/2addr v11, v4

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    cmp-long v15, v11, v13

    if-lez v15, :cond_1

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move-object v9, v10

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v9, :cond_7

    sget-object v4, Lac/c;->a:[B

    const-wide/16 v4, -0x1

    iput-wide v4, v9, Lbc/a;->b:J

    iget-object v4, v9, Lbc/a;->a:Lbc/c;

    if-eqz v4, :cond_6

    iget-object v3, v4, Lbc/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v9, v4, Lbc/c;->b:Lbc/a;

    iget-object v3, v1, Lbc/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_4

    iget-boolean v3, v1, Lbc/f;->b:Z

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "runnable"

    iget-object v1, v1, Lbc/f;->f:Lbc/e;

    invoke-static {v1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v2, Lbc/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-object v9

    :cond_6
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_7
    iget-boolean v0, v1, Lbc/f;->b:Z

    if-eqz v0, :cond_9

    iget-wide v9, v1, Lbc/f;->c:J

    sub-long/2addr v9, v4

    cmp-long v0, v7, v9

    if-gez v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    :cond_8
    return-object v3

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, v1, Lbc/f;->b:Z

    add-long/2addr v4, v7

    iput-wide v4, v1, Lbc/f;->c:J

    const-wide/32 v2, 0xf4240

    :try_start_0
    div-long v4, v7, v2

    mul-long/2addr v2, v4

    sub-long v2, v7, v2

    cmp-long v0, v4, v13

    if-gtz v0, :cond_a

    cmp-long v0, v7, v13

    if-lez v0, :cond_b

    :cond_a
    long-to-int v0, v2

    invoke-virtual {v1, v4, v5, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_4

    :catch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lbc/f;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, v1, Lbc/f;->b:Z

    goto/16 :goto_0

    :goto_4
    iput-boolean v2, v1, Lbc/f;->b:Z

    throw v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lbc/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbc/c;

    invoke-virtual {v2}, Lbc/c;->b()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lbc/f;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbc/c;

    invoke-virtual {v1}, Lbc/c;->b()Z

    iget-object v1, v1, Lbc/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    goto :goto_1

    :cond_2
    return-void
.end method

.method public final e(Lbc/c;)V
    .locals 2

    const-string v0, "taskQueue"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lac/c;->a:[B

    iget-object v0, p1, Lbc/c;->b:Lbc/a;

    if-nez v0, :cond_1

    iget-object v0, p1, Lbc/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lbc/f;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "$this$addIfAbsent"

    invoke-static {v1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lbc/f;->b:Z

    iget-object v0, p0, Lbc/f;->g:Lbc/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_1

    :cond_2
    const-string p1, "runnable"

    iget-object p0, p0, Lbc/f;->f:Lbc/e;

    invoke-static {p0, p1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Lbc/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final f()Lbc/c;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbc/f;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbc/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance v1, Lbc/c;

    const-string v2, "Q"

    invoke-static {v2, v0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lbc/c;-><init>(Lbc/f;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
