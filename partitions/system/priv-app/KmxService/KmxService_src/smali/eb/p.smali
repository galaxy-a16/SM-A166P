.class public final Leb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Leb/r;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Leb/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/p;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Leb/p;->b:Leb/r;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Leb/p;->c:Z

    iget-object p0, p0, Leb/p;->b:Leb/r;

    invoke-interface {p0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Leb/p;->c:Z

    return p0
.end method

.method public final run()V
    .locals 1

    iget-boolean v0, p0, Leb/p;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Leb/p;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    iget-object p0, p0, Leb/p;->b:Leb/r;

    invoke-interface {p0}, Lio/reactivex/disposables/b;->dispose()V

    invoke-static {v0}, Lio/reactivex/internal/util/b;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
