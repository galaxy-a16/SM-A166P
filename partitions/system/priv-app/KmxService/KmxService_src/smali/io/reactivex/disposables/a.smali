.class public final Lio/reactivex/disposables/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lhb/a;


# instance fields
.field public a:Lio/reactivex/internal/util/c;

.field public volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/disposables/b;)Z
    .locals 2

    const-string v0, "disposables is null"

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iget-object v0, p0, Lio/reactivex/disposables/a;->a:Lio/reactivex/internal/util/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lio/reactivex/disposables/b;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lio/reactivex/disposables/b;)Z
    .locals 2

    const-string v0, "disposable is null"

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/disposables/a;->a:Lio/reactivex/internal/util/c;

    if-nez v0, :cond_0

    new-instance v0, Lio/reactivex/internal/util/c;

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/c;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/disposables/a;->a:Lio/reactivex/internal/util/c;

    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    return v1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()I
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iget-object v0, p0, Lio/reactivex/disposables/a;->a:Lio/reactivex/internal/util/c;

    if-eqz v0, :cond_2

    iget v1, v0, Lio/reactivex/internal/util/c;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, v0, Lio/reactivex/internal/util/c;->d:I

    :goto_0
    move v1, v0

    goto :goto_2

    :goto_1
    iget v0, v0, Lio/reactivex/internal/util/c;->d:I

    goto :goto_0

    :cond_2
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dispose()V
    .locals 7

    iget-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/disposables/a;->b:Z

    iget-object v1, p0, Lio/reactivex/disposables/a;->a:Lio/reactivex/internal/util/c;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/reactivex/disposables/a;->a:Lio/reactivex/internal/util/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    iget p0, v1, Lio/reactivex/internal/util/c;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, v1, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    goto :goto_1

    :goto_0
    iget-object p0, v1, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    :goto_1
    array-length v1, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_5

    aget-object v5, p0, v4

    instance-of v6, v5, Lio/reactivex/disposables/b;

    if-eqz v6, :cond_4

    :try_start_1
    check-cast v5, Lio/reactivex/disposables/b;

    invoke-interface {v5}, Lio/reactivex/disposables/b;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v5

    invoke-static {v5}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lio/reactivex/internal/util/b;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_6
    new-instance p0, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {p0, v2}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p0

    :cond_7
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/disposables/a;->b:Z

    return p0
.end method
