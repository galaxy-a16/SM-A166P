.class public final Lo6/a;
.super Lh/e;
.source "SourceFile"

# interfaces
.implements Lo6/d;
.implements Lio/reactivex/disposables/b;


# instance fields
.field public final d:Leb/u;


# direct methods
.method public constructor <init>(Leb/u;Lw5/h;)V
    .locals 0

    invoke-direct {p0, p2}, Lh/e;-><init>(Lw5/h;)V

    iput-object p1, p0, Lo6/a;->d:Leb/u;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lh/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo6/a;->d:Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lh/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo6/a;->d:Leb/u;

    invoke-interface {p0, p1}, Leb/u;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
