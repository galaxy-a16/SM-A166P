.class public final Landroidx/work/impl/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final v:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Lva/f;

.field public final e:Lp1/q;

.field public f:Landroidx/work/n;

.field public final g:Lr1/a;

.field public h:Landroidx/work/m;

.field public final i:Landroidx/work/b;

.field public final j:Lo1/a;

.field public final k:Landroidx/work/impl/WorkDatabase;

.field public final l:Lp1/s;

.field public final m:Lp1/c;

.field public final n:Ljava/util/List;

.field public p:Ljava/lang/String;

.field public final q:Landroidx/work/impl/utils/futures/i;

.field public final t:Landroidx/work/impl/utils/futures/i;

.field public volatile u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/h0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/work/j;

    invoke-direct {v0}, Landroidx/work/j;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/i0;->h:Landroidx/work/m;

    new-instance v0, Landroidx/work/impl/utils/futures/i;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/i;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/i0;->q:Landroidx/work/impl/utils/futures/i;

    new-instance v0, Landroidx/work/impl/utils/futures/i;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/i;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/i0;->t:Landroidx/work/impl/utils/futures/i;

    iget-object v0, p1, Landroidx/work/impl/h0;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/work/impl/i0;->a:Landroid/content/Context;

    iget-object v0, p1, Landroidx/work/impl/h0;->c:Ljava/lang/Object;

    check-cast v0, Lr1/a;

    iput-object v0, p0, Landroidx/work/impl/i0;->g:Lr1/a;

    iget-object v0, p1, Landroidx/work/impl/h0;->b:Ljava/lang/Object;

    check-cast v0, Lo1/a;

    iput-object v0, p0, Landroidx/work/impl/i0;->j:Lo1/a;

    iget-object v0, p1, Landroidx/work/impl/h0;->f:Ljava/lang/Object;

    check-cast v0, Lp1/q;

    iput-object v0, p0, Landroidx/work/impl/i0;->e:Lp1/q;

    iget-object v0, v0, Lp1/q;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    iget-object v0, p1, Landroidx/work/impl/h0;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/work/impl/i0;->c:Ljava/util/List;

    iget-object v0, p1, Landroidx/work/impl/h0;->i:Ljava/lang/Object;

    check-cast v0, Lva/f;

    iput-object v0, p0, Landroidx/work/impl/i0;->d:Lva/f;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/work/impl/i0;->f:Landroidx/work/n;

    iget-object v0, p1, Landroidx/work/impl/h0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/work/b;

    iput-object v0, p0, Landroidx/work/impl/i0;->i:Landroidx/work/b;

    iget-object v0, p1, Landroidx/work/impl/h0;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    iput-object v0, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Lp1/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/i0;->m:Lp1/c;

    iget-object p1, p1, Landroidx/work/impl/h0;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/work/impl/i0;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/m;)V
    .locals 11

    instance-of v0, p1, Landroidx/work/l;

    iget-object v1, p0, Landroidx/work/impl/i0;->e:Lp1/q;

    sget-object v2, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Worker result SUCCESS for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/i0;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/work/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lp1/q;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/work/impl/i0;->m:Lp1/c;

    iget-object v0, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    iget-object v3, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v5, v0}, Lp1/s;->m(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/work/impl/i0;->h:Landroidx/work/m;

    check-cast v5, Landroidx/work/l;

    iget-object v5, v5, Landroidx/work/l;->a:Landroidx/work/f;

    invoke-virtual {v1, v0, v5}, Lp1/s;->l(Ljava/lang/String;Landroidx/work/f;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v0}, Lp1/c;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lp1/s;->f(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v8

    sget-object v9, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    if-ne v8, v9, :cond_1

    invoke-virtual {p1, v7}, Lp1/c;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting status to enqueued for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroidx/work/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v8, v7}, Lp1/s;->m(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6, v7}, Lp1/s;->k(JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {p0, v4}, Landroidx/work/impl/i0;->e(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {p0, v4}, Landroidx/work/impl/i0;->e(Z)V

    throw p1

    :cond_3
    instance-of p1, p1, Landroidx/work/k;

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Worker result RETRY for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/i0;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/work/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/work/impl/i0;->c()V

    goto :goto_2

    :cond_4
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Worker result FAILURE for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/i0;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/work/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lp1/q;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {p0}, Landroidx/work/impl/i0;->d()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/work/impl/i0;->g()V

    :goto_2
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-virtual {p0}, Landroidx/work/impl/i0;->h()Z

    move-result v0

    iget-object v1, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    invoke-virtual {v0, v1}, Lp1/s;->f(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->g()Lp1/o;

    move-result-object v3

    invoke-virtual {v3, v1}, Lp1/o;->e(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/work/impl/i0;->e(Z)V

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/work/impl/i0;->h:Landroidx/work/m;

    invoke-virtual {p0, v0}, Landroidx/work/impl/i0;->a(Landroidx/work/m;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/work/impl/i0;->c()V

    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/i0;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/r;

    invoke-interface {v4, v1}, Landroidx/work/impl/r;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroidx/work/impl/i0;->i:Landroidx/work/b;

    invoke-static {p0, v2, v0}, Landroidx/work/impl/s;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    iget-object v2, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v4, v0}, Lp1/s;->m(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, Lp1/s;->k(JLjava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v0}, Lp1/s;->j(JLjava/lang/String;)V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {p0, v3}, Landroidx/work/impl/i0;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {p0, v3}, Landroidx/work/impl/i0;->e(Z)V

    throw v0
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    iget-object v2, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, Lp1/s;->k(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v4, v1, Lp1/s;->a:Landroidx/room/RoomDatabase;

    :try_start_1
    sget-object v5, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v5, v0}, Lp1/s;->m(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v5, v1, Lp1/s;->j:Lp1/r;

    invoke-virtual {v5}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v0, :cond_0

    invoke-interface {v6, v7}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v6, v7, v0}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v6}, La1/i;->v()I

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v5, v6}, Landroidx/room/f0;->release(La1/i;)V

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v5, v1, Lp1/s;->f:Lp1/r;

    invoke-virtual {v5}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v6

    if-nez v0, :cond_1

    invoke-interface {v6, v7}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v6, v7, v0}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v6}, La1/i;->v()I

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v5, v6}, Landroidx/room/f0;->release(La1/i;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v0}, Lp1/s;->j(JLjava/lang/String;)V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {p0, v3}, Landroidx/work/impl/i0;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v5, v6}, Landroidx/room/f0;->release(La1/i;)V

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v5, v6}, Landroidx/room/f0;->release(La1/i;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {p0, v3}, Landroidx/work/impl/i0;->e(Z)V

    throw v0
.end method

.method public final e(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v1

    iget-object v0, v0, Lp1/s;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v0, v1}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/d0;->i()V

    if-nez v3, :cond_1

    iget-object v0, p0, Landroidx/work/impl/i0;->a:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v1, v2}, Lq1/k;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lp1/s;->m(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    iget-object v1, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lp1/s;->j(JLjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Landroidx/work/impl/i0;->e:Lp1/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/i0;->f:Landroidx/work/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/i0;->j:Lo1/a;

    iget-object v1, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    check-cast v0, Landroidx/work/impl/p;

    iget-object v2, v0, Landroidx/work/impl/p;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, v0, Landroidx/work/impl/p;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    :try_start_4
    iget-object v0, p0, Landroidx/work/impl/i0;->j:Lo1/a;

    iget-object v1, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    check-cast v0, Landroidx/work/impl/p;

    iget-object v2, v0, Landroidx/work/impl/p;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v3, v0, Landroidx/work/impl/p;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/work/impl/p;->h()V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v0, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/i0;->q:Landroidx/work/impl/utils/futures/i;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z

    return-void

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/d0;->i()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    iget-object v1, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp1/s;->f(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    const-string v3, "Status for "

    sget-object v4, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is RUNNING; not doing any work and rescheduling for later execution"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/work/impl/i0;->e(Z)V

    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    if-nez v4, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lp1/s;->f(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v6

    sget-object v7, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-eq v6, v7, :cond_0

    sget-object v6, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v5, v6, v4}, Lp1/s;->m(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Landroidx/work/impl/i0;->m:Lp1/c;

    invoke-virtual {v5, v4}, Lp1/c;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/work/impl/i0;->h:Landroidx/work/m;

    check-cast v3, Landroidx/work/j;

    iget-object v3, v3, Landroidx/work/j;->a:Landroidx/work/f;

    invoke-virtual {v5, v0, v3}, Lp1/s;->l(Ljava/lang/String;Landroidx/work/f;)V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {p0, v2}, Landroidx/work/impl/i0;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {p0, v2}, Landroidx/work/impl/i0;->e(Z)V

    throw v0
.end method

.method public final h()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/work/impl/i0;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Work interrupted for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/work/impl/i0;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/i0;->l:Lp1/s;

    iget-object v2, p0, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lp1/s;->f(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/work/impl/i0;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroidx/work/impl/i0;->e(Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public final run()V
    .locals 25

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/work/impl/i0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tags={ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/work/impl/i0;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v3, " } ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroidx/work/impl/i0;->p:Ljava/lang/String;

    iget-object v3, v1, Landroidx/work/impl/i0;->e:Lp1/q;

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/i0;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_e

    :cond_2
    iget-object v5, v1, Landroidx/work/impl/i0;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v3, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    sget-object v6, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v8, v3, Lp1/q;->c:Ljava/lang/String;

    sget-object v9, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    if-eq v0, v6, :cond_3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/i0;->f()V

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lp1/q;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v3, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    if-ne v0, v6, :cond_4

    iget v0, v3, Lp1/q;->k:I

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v7

    :goto_2
    if-eqz v0, :cond_6

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Lp1/q;->a()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-gez v0, :cond_6

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    const-string v2, "Delaying execution for %s because it is being executed before schedule."

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v8, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroidx/work/impl/i0;->e(Z)V

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_3
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    goto/16 :goto_e

    :cond_6
    :try_start_2
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v3}, Lp1/q;->d()Z

    move-result v0

    iget-object v6, v3, Lp1/q;->e:Landroidx/work/f;

    iget-object v10, v1, Landroidx/work/impl/i0;->l:Lp1/s;

    iget-object v11, v1, Landroidx/work/impl/i0;->i:Landroidx/work/b;

    if-eqz v0, :cond_7

    :goto_4
    move-object v14, v6

    goto/16 :goto_9

    :cond_7
    iget-object v0, v11, Landroidx/work/b;->d:Lh5/d;

    iget-object v12, v3, Lp1/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/work/i;->a:Ljava/lang/String;

    :try_start_3
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v13, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v13, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/i;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v13

    const-string v14, "Trouble instantiating + "

    invoke-static {v14, v12}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Landroidx/work/i;->a:Ljava/lang/String;

    invoke-virtual {v13, v14, v12, v0}, Landroidx/work/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_8

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not create Input Merger "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lp1/q;->d:Ljava/lang/String;

    goto/16 :goto_a

    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-static {v4, v6}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v6

    if-nez v2, :cond_9

    invoke-virtual {v6, v4}, Landroidx/room/d0;->A(I)V

    goto :goto_6

    :cond_9
    invoke-virtual {v6, v4, v2}, Landroidx/room/d0;->r(ILjava/lang/String;)V

    :goto_6
    iget-object v4, v10, Lp1/s;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v4, v6}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_8

    :cond_a
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    :goto_8
    invoke-static {v14}, Landroidx/work/f;->a([B)Landroidx/work/f;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Landroidx/room/d0;->i()V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v12}, Landroidx/work/i;->a(Ljava/util/ArrayList;)Landroidx/work/f;

    move-result-object v6

    goto/16 :goto_4

    :goto_9
    new-instance v0, Landroidx/work/WorkerParameters;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v13

    iget-object v15, v1, Landroidx/work/impl/i0;->n:Ljava/util/List;

    iget-object v4, v1, Landroidx/work/impl/i0;->d:Lva/f;

    iget v3, v3, Lp1/q;->k:I

    iget-object v6, v11, Landroidx/work/b;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v7, v1, Landroidx/work/impl/i0;->g:Lr1/a;

    iget-object v11, v11, Landroidx/work/b;->c:Landroidx/work/b0;

    new-instance v12, Lq1/s;

    move-object/from16 v23, v2

    iget-object v2, v1, Landroidx/work/impl/i0;->g:Lr1/a;

    invoke-direct {v12, v5, v2}, Lq1/s;-><init>(Landroidx/work/impl/WorkDatabase;Lr1/a;)V

    move-object/from16 v24, v10

    new-instance v10, Lq1/r;

    move-object/from16 v16, v12

    iget-object v12, v1, Landroidx/work/impl/i0;->j:Lo1/a;

    invoke-direct {v10, v5, v12, v2}, Lq1/r;-><init>(Landroidx/work/impl/WorkDatabase;Lo1/a;Lr1/a;)V

    move-object/from16 v21, v16

    move-object v12, v0

    move-object/from16 v16, v4

    move/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    move-object/from16 v22, v10

    invoke-direct/range {v12 .. v22}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/f;Ljava/util/List;Lva/f;ILjava/util/concurrent/ExecutorService;Lr1/a;Landroidx/work/b0;Lq1/s;Lq1/r;)V

    iget-object v3, v1, Landroidx/work/impl/i0;->f:Landroidx/work/n;

    if-nez v3, :cond_c

    iget-object v3, v1, Landroidx/work/impl/i0;->a:Landroid/content/Context;

    invoke-virtual {v11, v3, v8, v0}, Landroidx/work/c0;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/n;

    move-result-object v3

    iput-object v3, v1, Landroidx/work/impl/i0;->f:Landroidx/work/n;

    :cond_c
    iget-object v3, v1, Landroidx/work/impl/i0;->f:Landroidx/work/n;

    if-nez v3, :cond_d

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_d
    invoke-virtual {v3}, Landroidx/work/n;->isUsed()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received an already-used Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; Worker Factory should return new instances"

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroidx/work/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/i0;->g()V

    goto/16 :goto_e

    :cond_e
    iget-object v3, v1, Landroidx/work/impl/i0;->f:Landroidx/work/n;

    invoke-virtual {v3}, Landroidx/work/n;->setUsed()V

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    :try_start_5
    invoke-virtual {v4, v3}, Lp1/s;->f(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v6

    sget-object v7, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v6, v7, :cond_10

    sget-object v6, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    invoke-virtual {v4, v6, v3}, Lp1/s;->m(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    iget-object v6, v4, Lp1/s;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v4, v4, Lp1/s;->i:Lp1/r;

    invoke-virtual {v4}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v3, :cond_f

    invoke-interface {v7, v8}, La1/g;->A(I)V

    goto :goto_c

    :cond_f
    invoke-interface {v7, v8, v3}, La1/g;->r(ILjava/lang/String;)V

    :goto_c
    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v7}, La1/i;->v()I

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v4, v7}, Landroidx/room/f0;->release(La1/i;)V

    const/4 v3, 0x1

    goto :goto_d

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v4, v7}, Landroidx/room/f0;->release(La1/i;)V

    throw v0

    :cond_10
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/i0;->h()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_e

    :cond_11
    new-instance v3, Lq1/q;

    iget-object v5, v1, Landroidx/work/impl/i0;->a:Landroid/content/Context;

    iget-object v6, v1, Landroidx/work/impl/i0;->e:Lp1/q;

    iget-object v7, v1, Landroidx/work/impl/i0;->f:Landroidx/work/n;

    iget-object v8, v0, Landroidx/work/WorkerParameters;->j:Landroidx/work/h;

    iget-object v9, v1, Landroidx/work/impl/i0;->g:Lr1/a;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lq1/q;-><init>(Landroid/content/Context;Lp1/q;Landroidx/work/n;Landroidx/work/h;Lr1/a;)V

    check-cast v2, Lp1/v;

    iget-object v0, v2, Lp1/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Ld/p0;

    const/16 v4, 0xb

    iget-object v3, v3, Lq1/q;->a:Landroidx/work/impl/utils/futures/i;

    invoke-direct {v0, v4, v1, v3}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ld/r0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ld/r0;-><init>(I)V

    iget-object v5, v1, Landroidx/work/impl/i0;->t:Landroidx/work/impl/utils/futures/i;

    invoke-virtual {v5, v0, v4}, Landroidx/work/impl/utils/futures/h;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v0, Landroidx/appcompat/widget/k;

    const/4 v4, 0x6

    invoke-direct {v0, v4, v1, v3}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, Lp1/v;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v0, v4}, Landroidx/work/impl/utils/futures/h;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, v1, Landroidx/work/impl/i0;->p:Ljava/lang/String;

    new-instance v3, Landroidx/appcompat/widget/k;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1, v0}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Lq1/m;

    invoke-virtual {v5, v3, v0}, Landroidx/work/impl/utils/futures/h;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_e

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/i0;->f()V

    :goto_e
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Landroidx/room/d0;->i()V

    throw v0

    :catchall_3
    move-exception v0

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
