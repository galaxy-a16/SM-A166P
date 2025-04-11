.class public final Lr3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/n;
.implements Lr3/f;
.implements Lr3/e;
.implements Lr3/c;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld/r0;Lr3/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr3/m;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr3/m;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr3/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lr3/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr3/m;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr3/m;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr3/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lr3/e;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lr3/m;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr3/m;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr3/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lr3/f;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lr3/m;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr3/m;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr3/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lr3/g;Lr3/o;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lr3/m;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr3/m;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr3/m;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lr3/m;->d:Ljava/lang/Object;

    check-cast p0, Lr3/o;

    invoke-virtual {p0}, Lr3/o;->k()V

    return-void
.end method

.method public final b(Lr3/h;)V
    .locals 3

    iget v0, p0, Lr3/m;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p1}, Lr3/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr3/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr3/m;->d:Ljava/lang/Object;

    check-cast v1, Lr3/f;

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lr3/l;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lr3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lr3/h;->f()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p1

    check-cast v0, Lr3/o;

    iget-boolean v0, v0, Lr3/o;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lr3/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lr3/m;->d:Ljava/lang/Object;

    check-cast v1, Lr3/e;

    if-nez v1, :cond_2

    monitor-exit v0

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lr3/l;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lr3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lr3/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lr3/m;->d:Ljava/lang/Object;

    check-cast v1, Lr3/d;

    if-nez v1, :cond_4

    monitor-exit v0

    goto :goto_2

    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lr3/l;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lr3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_3
    check-cast p1, Lr3/o;

    iget-boolean p1, p1, Lr3/o;->d:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lr3/m;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    iget-object v0, p0, Lr3/m;->d:Ljava/lang/Object;

    check-cast v0, Lr3/c;

    if-nez v0, :cond_5

    monitor-exit p1

    goto :goto_3

    :cond_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p1, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/activity/k;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Landroidx/activity/k;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_6
    :goto_3
    return-void

    :goto_4
    new-instance v0, Lr3/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lr3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lr3/m;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lr3/m;->d:Ljava/lang/Object;

    check-cast p0, Lr3/o;

    invoke-virtual {p0, p1}, Lr3/o;->i(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr3/m;->d:Ljava/lang/Object;

    check-cast p0, Lr3/o;

    invoke-virtual {p0, p1}, Lr3/o;->j(Ljava/lang/Object;)V

    return-void
.end method
