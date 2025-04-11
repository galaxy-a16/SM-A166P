.class public abstract Lt7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/a;
.implements Lvc/d;


# instance fields
.field public final a:Lw8/d;

.field public b:Lvc/d;


# direct methods
.method public constructor <init>(Lw8/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt7/d;->a:Lw8/d;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lt7/d;->b:Lvc/d;

    invoke-interface {p0}, Lvc/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lt7/d;->a:Lw8/d;

    invoke-interface {p0}, Lvc/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lt7/d;->a:Lw8/d;

    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lt7/d;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lt7/d;->b:Lvc/d;

    const-wide/16 v0, 0x1

    invoke-interface {p0, v0, v1}, Lvc/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lvc/d;)V
    .locals 0

    iput-object p1, p0, Lt7/d;->b:Lvc/d;

    iget-object p1, p0, Lt7/d;->a:Lw8/d;

    invoke-interface {p1, p0}, Lvc/c;->onSubscribe(Lvc/d;)V

    return-void
.end method

.method public final request(J)V
    .locals 0

    iget-object p0, p0, Lt7/d;->b:Lvc/d;

    invoke-interface {p0, p1, p2}, Lvc/d;->request(J)V

    return-void
.end method

.method public final tryOnNext(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lt7/b;

    if-eqz v0, :cond_0

    check-cast p1, Lt7/b;

    iget-object p1, p1, Lt7/b;->a:Ljava/lang/Object;

    iget-object p0, p0, Lt7/d;->a:Lw8/d;

    invoke-interface {p0, p1}, Lw8/d;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lt7/d;->a(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
