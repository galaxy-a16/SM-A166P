.class public final Landroidx/activity/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/k;->a:I

    iput-object p1, p0, Landroidx/activity/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 5

    iget-object v0, p0, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/n;

    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    iget-object v0, v0, Landroidx/room/n;->a:Landroidx/room/RoomDatabase;

    new-instance v2, La1/a;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, La1/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v3}, Landroidx/room/RoomDatabase;->query$default(Landroidx/room/RoomDatabase;La1/h;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lkotlin/collections/builders/SetBuilder;->build()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/n;

    iget-object v1, v1, Landroidx/room/n;->h:La1/i;

    const-string v2, "Required value was null."

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/n;

    iget-object p0, p0, Landroidx/room/n;->h:La1/i;

    if-eqz p0, :cond_1

    invoke-interface {p0}, La1/i;->v()I

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/activity/k;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_15

    :pswitch_1
    new-instance v0, Landroidx/core/view/a0;

    iget-object v1, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v1, Lh/f;

    iget-object v3, v1, Lh/f;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->e:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-direct {v0, v3}, Landroidx/core/view/a0;-><init>(Landroid/view/View;)V

    iget-object v3, v1, Lh/f;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v2, v1, Lh/f;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-static {v3, v3, v3, v3}, Landroidx/core/view/z;->a(IIII)Landroidx/core/view/z;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/core/view/a0;->a(Landroid/view/View;Landroidx/core/view/z;)V

    iget-object v1, v1, Lh/f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->e:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    :pswitch_2
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Lb3/j;

    iput-boolean v5, v0, Lb3/j;->c:Z

    iget-object v1, v0, Lb3/j;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Li0/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Li0/d;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lb3/j;->d:I

    invoke-virtual {v0, v1}, Lb3/j;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lb3/j;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    if-ne v3, v2, :cond_1

    iget v0, v0, Lb3/j;->d:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_3
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Lr3/m;

    iget-object v2, v0, Lr3/m;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Lr3/m;

    iget-object v0, v0, Lr3/m;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr3/c;

    if-eqz v1, :cond_2

    check-cast v0, Lr3/c;

    invoke-interface {v0}, Lr3/c;->a()V

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_4
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Lq3/a;

    iget-object v2, v0, Lq3/a;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {v0}, Lq3/a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "WakeLock"

    iget-object v3, v0, Lq3/a;->j:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " ** IS FORCE-RELEASED ON TIMEOUT **"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lq3/a;->d()V

    invoke-virtual {v0}, Lq3/a;->b()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iput v4, v0, Lq3/a;->c:I

    invoke-virtual {v0}, Lq3/a;->e()V

    :goto_1
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_5
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/h5;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/h5;->c:Lcom/google/android/gms/internal/measurement/h3;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/h5;->a:J

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v3, "Application going to the background"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/i3;->q:Lcom/google/android/gms/measurement/internal/e3;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/e3;->a(Z)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    iget-wide v3, v0, Lcom/google/android/gms/measurement/internal/h5;->b:J

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/j5;->c:Lcom/google/android/gms/measurement/internal/i5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->a()V

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    invoke-virtual {v0, v3, v4, v5, v5}, Lcom/google/android/gms/measurement/internal/j5;->a(JZZ)Z

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const-string v10, "auto"

    const-string v11, "_ab"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/n4;->s(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TIMEOUT"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v1, Lr3/i;

    invoke-virtual {v1, v0}, Lr3/i;->b(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Rpc"

    const-string v1, "No response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :pswitch_7
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/n;

    iget-object v0, v0, Landroidx/room/n;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getCloseLock$room_runtime_release()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/n;

    invoke-virtual {v0}, Landroidx/room/n;->b()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/n;

    iget-object v0, v0, Landroidx/room/n;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/n;

    iget-object v0, v0, Landroidx/room/n;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_9

    :goto_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :cond_9
    :try_start_3
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/n;

    iget-object v0, v0, Landroidx/room/n;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()La1/f;

    move-result-object v0

    check-cast v0, Landroidx/sqlite/db/framework/f;

    invoke-virtual {v0}, Landroidx/sqlite/db/framework/f;->a()La1/b;

    move-result-object v3

    invoke-interface {v3}, La1/b;->c0()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroidx/activity/k;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3}, La1/b;->X()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v3}, La1/b;->g()V

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-interface {v3}, La1/b;->g()V

    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_6
    const-string v3, "ROOM"

    const-string v5, "Cannot run invalidation tracker. Is the db closed?"

    :goto_3
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v3, "ROOM"

    const-string v5, "Cannot run invalidation tracker. Is the db closed?"

    goto :goto_3

    :goto_4
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/room/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_b

    iget-object v1, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/n;

    iget-object v2, v1, Landroidx/room/n;->j:Lj/g;

    monitor-enter v2

    :try_start_7
    iget-object v1, v1, Landroidx/room/n;->j:Lj/g;

    invoke-virtual {v1}, Lj/g;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    move-object v3, v1

    check-cast v3, Lj/e;

    invoke-virtual {v3}, Lj/e;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lj/e;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/m;

    invoke-virtual {v3, v0}, Landroidx/room/m;->a(Ljava/util/Set;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :cond_a
    monitor-exit v2

    goto :goto_7

    :catchall_4
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_b
    :goto_7
    return-void

    :goto_8
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :pswitch_8
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Li0/d;

    invoke-virtual {v0, v5}, Li0/d;->p(I)V

    return-void

    :pswitch_9
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Le0/g;

    iget-boolean v2, v0, Le0/g;->p:Z

    if-nez v2, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-boolean v2, v0, Le0/g;->m:Z

    if-eqz v2, :cond_d

    iput-boolean v5, v0, Le0/g;->m:Z

    iget-object v2, v0, Le0/g;->a:Le0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Le0/a;->e:J

    const-wide/16 v8, -0x1

    iput-wide v8, v2, Le0/a;->g:J

    iput-wide v6, v2, Le0/a;->f:J

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Le0/a;->h:F

    :cond_d
    iget-object v2, v0, Le0/g;->a:Le0/a;

    iget-wide v6, v2, Le0/a;->g:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_e

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v10, v2, Le0/a;->g:J

    iget v3, v2, Le0/a;->i:I

    int-to-long v12, v3

    add-long/2addr v10, v12

    cmp-long v3, v6, v10

    if-lez v3, :cond_e

    goto :goto_9

    :cond_e
    move v4, v5

    :goto_9
    if-nez v4, :cond_12

    invoke-virtual {v0}, Le0/g;->f()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_a

    :cond_f
    iget-boolean v3, v0, Le0/g;->n:Z

    if-eqz v3, :cond_10

    iput-boolean v5, v0, Le0/g;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v10, v12

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, v0, Le0/g;->c:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_10
    iget-wide v3, v2, Le0/a;->f:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_11

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Le0/a;->a(J)F

    move-result v5

    const/high16 v6, -0x3f800000    # -4.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v5

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    iget-wide v6, v2, Le0/a;->f:J

    sub-long v6, v3, v6

    iput-wide v3, v2, Le0/a;->f:J

    long-to-float v3, v6

    mul-float/2addr v3, v5

    iget v2, v2, Le0/a;->d:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget-object v3, v0, Le0/g;->t:Landroid/widget/ListView;

    invoke-static {v3, v2}, Le0/h;->b(Landroid/widget/ListView;I)V

    iget-object v0, v0, Le0/g;->c:Landroid/view/View;

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_a
    iput-boolean v5, v0, Le0/g;->p:Z

    :goto_b
    return-void

    :pswitch_a
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/u4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_b
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/appcompat/widget/p;->p()Z

    :cond_13
    return-void

    :pswitch_c
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/t3;

    iget-object v0, v0, Landroidx/appcompat/widget/t3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    if-nez v0, :cond_14

    goto :goto_c

    :cond_14
    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_c
    return-void

    :pswitch_d
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/s1;

    iput-object v3, v0, Landroidx/appcompat/widget/s1;->l:Landroidx/activity/k;

    invoke-virtual {v0}, Landroidx/appcompat/widget/s1;->drawableStateChanged()V

    return-void

    :pswitch_e
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Le/b;

    invoke-virtual {v0, v4}, Le/b;->a(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_f
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Ld/u0;

    iget-object v1, v0, Ld/u0;->b:Landroid/view/Window$Callback;

    invoke-virtual {v0}, Ld/u0;->r()Landroid/view/Menu;

    move-result-object v0

    instance-of v2, v0, Lh/n;

    if-eqz v2, :cond_15

    move-object v2, v0

    check-cast v2, Lh/n;

    goto :goto_d

    :cond_15
    move-object v2, v3

    :goto_d
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lh/n;->w()V

    :cond_16
    :try_start_8
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-interface {v1, v5, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v1, v5, v3, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lh/n;->v()V

    :cond_19
    return-void

    :catchall_5
    move-exception v0

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lh/n;->v()V

    :cond_1a
    throw v0

    :pswitch_10
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Ld/g;

    iget-object v1, v0, Ld/g;->b:Ld/l;

    iget-object v1, v1, Ld/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, v0, Ld/g;->b:Ld/l;

    iget v3, v2, Ld/l;->G:I

    if-eq v1, v3, :cond_26

    iget-object v1, v2, Ld/l;->c:Landroid/view/Window;

    const v3, 0x7f090190

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09025c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0901dd

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090262

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f09006f

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f09009e

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f090091

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_1b

    move v9, v4

    goto :goto_e

    :cond_1b
    move v9, v5

    :goto_e
    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v11, :cond_1c

    move v7, v4

    goto :goto_f

    :cond_1c
    move v7, v5

    :goto_f
    if-eqz v10, :cond_1d

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v11, :cond_1d

    move v10, v4

    goto :goto_10

    :cond_1d
    move v10, v5

    :goto_10
    iget-object v12, v2, Ld/l;->z:Landroid/view/View;

    if-eqz v12, :cond_1e

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v11, :cond_1e

    goto :goto_11

    :cond_1e
    move v4, v5

    :goto_11
    iget-object v2, v2, Ld/l;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v9, :cond_1f

    if-nez v7, :cond_1f

    if-eqz v10, :cond_20

    :cond_1f
    if-eqz v4, :cond_21

    :cond_20
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_12

    :cond_21
    const v4, 0x7f0603aa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    :goto_12
    if-eqz v3, :cond_23

    const v1, 0x7f0603a6

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v9, :cond_22

    if-eqz v7, :cond_22

    if-nez v10, :cond_22

    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_13

    :cond_22
    const v4, 0x7f0603a9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v1, v5, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_23
    :goto_13
    if-eqz v6, :cond_24

    const v1, 0x7f06038b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f06038a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f060386

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v6, v1, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_24
    if-eqz v8, :cond_25

    const v1, 0x7f06038f

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f06038e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v8, v1, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_25
    iget-object v1, v0, Ld/g;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_26
    iget-object v0, v0, Ld/g;->b:Ld/l;

    iget-object v1, v0, Ld/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Ld/l;->G:I

    return-void

    :pswitch_11
    :try_start_9
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->access$001(Landroidx/activity/ComponentActivity;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_14

    :cond_27
    throw v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    :goto_14
    return-void

    :cond_28
    throw v0

    :goto_15
    iget-object v0, v1, Landroidx/activity/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo4/n;

    iget-object v0, v0, Lo4/n;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
