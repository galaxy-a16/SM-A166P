.class public final Lio/reactivex/internal/observers/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/u;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Leb/u;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lio/reactivex/internal/observers/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/observers/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/internal/observers/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lio/reactivex/internal/observers/c;->a:I

    iput-object p1, p0, Lio/reactivex/internal/observers/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/internal/observers/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lio/reactivex/internal/observers/c;->a:I

    iget-object p0, p0, Lio/reactivex/internal/observers/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    check-cast p0, Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p0, Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    check-cast p0, Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_0
    check-cast p0, Leb/h;

    invoke-interface {p0, p1}, Leb/h;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget v0, p0, Lio/reactivex/internal/observers/c;->a:I

    iget-object p0, p0, Lio/reactivex/internal/observers/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void

    :pswitch_3
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void

    :goto_0
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lio/reactivex/internal/observers/c;->a:I

    iget-object p0, p0, Lio/reactivex/internal/observers/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p0, Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    check-cast p0, Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onSuccess(Ljava/lang/Object;)V

    return-void

    :goto_0
    check-cast p0, Leb/h;

    invoke-interface {p0, p1}, Leb/h;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
