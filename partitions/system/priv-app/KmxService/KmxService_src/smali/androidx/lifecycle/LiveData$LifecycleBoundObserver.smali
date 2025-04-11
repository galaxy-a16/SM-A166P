.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/g0;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/g0;",
        "Landroidx/lifecycle/LifecycleEventObserver;"
    }
.end annotation


# instance fields
.field public final e:Landroidx/lifecycle/z;

.field public final synthetic f:Landroidx/lifecycle/h0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h0;Landroidx/lifecycle/z;Landroidx/lifecycle/m0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/z;",
            "Landroidx/lifecycle/m0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/h0;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/g0;-><init>(Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/z;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/z;

    invoke-interface {p1}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/b0;

    iget-object p2, p2, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/h0;

    iget-object p0, p0, Landroidx/lifecycle/g0;->a:Landroidx/lifecycle/m0;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/h0;->removeObserver(Landroidx/lifecycle/m0;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/g0;->c(Z)V

    invoke-interface {p1}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    iget-object v0, v0, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/z;

    invoke-interface {v0}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/y;)V

    return-void
.end method

.method public final e(Landroidx/lifecycle/z;)Z
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/z;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/z;

    invoke-interface {p0}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/b0;

    iget-object p0, p0, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method
