.class public final Landroidx/lifecycle/SavedStateHandleAttacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final a:Landroidx/lifecycle/a1;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a1;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->a:Landroidx/lifecycle/a1;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/z;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/y;)V

    iget-object p0, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->a:Landroidx/lifecycle/a1;

    iget-boolean p1, p0, Landroidx/lifecycle/a1;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/lifecycle/a1;->a:Landroidx/savedstate/d;

    const-string p2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {p1, p2}, Landroidx/savedstate/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/a1;->c:Landroid/os/Bundle;

    iput-boolean v1, p0, Landroidx/lifecycle/a1;->b:Z

    iget-object p0, p0, Landroidx/lifecycle/a1;->d:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/b1;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Next event must be ON_CREATE, it was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
