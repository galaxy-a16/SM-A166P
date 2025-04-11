.class public final Lio/reactivex/rxjava3/internal/operators/observable/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/Collection;

.field public final synthetic c:Lio/reactivex/rxjava3/internal/operators/observable/f;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/f;Ljava/util/Collection;I)V
    .locals 0

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->a:I

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->c:Lio/reactivex/rxjava3/internal/operators/observable/f;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->b:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->c:Lio/reactivex/rxjava3/internal/operators/observable/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->c:Lio/reactivex/rxjava3/internal/operators/observable/f;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->b:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->c:Lio/reactivex/rxjava3/internal/operators/observable/f;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->b:Ljava/util/Collection;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

    invoke-virtual {v0, p0, v1}, Lio/reactivex/rxjava3/internal/observers/c;->n(Ljava/util/Collection;Lio/reactivex/rxjava3/disposables/b;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->c:Lio/reactivex/rxjava3/internal/operators/observable/f;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->c:Lio/reactivex/rxjava3/internal/operators/observable/f;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->b:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->c:Lio/reactivex/rxjava3/internal/operators/observable/f;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e;->b:Ljava/util/Collection;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

    invoke-virtual {v0, p0, v1}, Lio/reactivex/rxjava3/internal/observers/c;->n(Ljava/util/Collection;Lio/reactivex/rxjava3/disposables/b;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
