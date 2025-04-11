.class public final synthetic Landroidx/work/impl/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/WorkDatabase;

.field public final synthetic b:Lp1/q;

.field public final synthetic c:Lp1/q;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;Lp1/q;Lp1/q;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/f0;->a:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Landroidx/work/impl/f0;->b:Lp1/q;

    iput-object p3, p0, Landroidx/work/impl/f0;->c:Lp1/q;

    iput-object p4, p0, Landroidx/work/impl/f0;->d:Ljava/util/List;

    iput-object p5, p0, Landroidx/work/impl/f0;->e:Ljava/lang/String;

    iput-object p6, p0, Landroidx/work/impl/f0;->f:Ljava/util/Set;

    iput-boolean p7, p0, Landroidx/work/impl/f0;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/f0;->a:Landroidx/work/impl/WorkDatabase;

    const-string v2, "$workDatabase"

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/work/impl/f0;->b:Lp1/q;

    const-string v2, "$newWorkSpec"

    invoke-static {v3, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/work/impl/f0;->c:Lp1/q;

    const-string v4, "$oldWorkSpec"

    invoke-static {v2, v4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$schedulers"

    iget-object v5, v0, Landroidx/work/impl/f0;->d:Ljava/util/List;

    invoke-static {v5, v4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v0, Landroidx/work/impl/f0;->e:Ljava/lang/String;

    const-string v4, "$workSpecId"

    invoke-static {v13, v4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v0, Landroidx/work/impl/f0;->f:Ljava/util/Set;

    const-string v4, "$tags"

    invoke-static {v14, v4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v15

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->i()Lp1/v;

    move-result-object v12

    iget-object v5, v2, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    iget v8, v2, Lp1/q;->k:I

    iget-wide v9, v2, Lp1/q;->n:J

    iget v2, v2, Lp1/q;->t:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    const v16, 0x7dbfd

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v11, v2

    move-object v2, v12

    move/from16 v12, v16

    invoke-static/range {v3 .. v12}, Lp1/q;->b(Lp1/q;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/f;IJII)Lp1/q;

    move-result-object v3

    iget-object v4, v15, Lp1/s;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v5, v15, Lp1/s;->c:Lp1/r;

    invoke-virtual {v5}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v5, v6, v3}, Lp1/r;->bind(La1/i;Ljava/lang/Object;)V

    invoke-interface {v6}, La1/i;->v()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5, v6}, Landroidx/room/f0;->release(La1/i;)V

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v3, v2, Lp1/v;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v3, v2, Lp1/v;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/room/f0;

    invoke-virtual {v3}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4, v13}, La1/g;->r(ILjava/lang/String;)V

    iget-object v4, v2, Lp1/v;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_3
    invoke-interface {v3}, La1/i;->v()I

    iget-object v4, v2, Lp1/v;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v4, v2, Lp1/v;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v4, v2, Lp1/v;->d:Ljava/lang/Object;

    check-cast v4, Landroidx/room/f0;

    invoke-virtual {v4, v3}, Landroidx/room/f0;->release(La1/i;)V

    invoke-virtual {v2, v13, v14}, Lp1/v;->k(Ljava/lang/String;Ljava/util/Set;)V

    iget-boolean v0, v0, Landroidx/work/impl/f0;->g:Z

    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    invoke-virtual {v15, v2, v3, v13}, Lp1/s;->j(JLjava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()Lp1/o;

    move-result-object v0

    invoke-virtual {v0, v13}, Lp1/o;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v2, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, v2, Lp1/v;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/room/f0;

    invoke-virtual {v1, v3}, Landroidx/room/f0;->release(La1/i;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v5, v6}, Landroidx/room/f0;->release(La1/i;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
