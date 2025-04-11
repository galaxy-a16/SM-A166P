.class public final Landroidx/activity/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lkotlin/collections/k;

.field public c:Landroidx/activity/s;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/y;->a:Ljava/lang/Runnable;

    new-instance p1, Lkotlin/collections/k;

    invoke-direct {p1}, Lkotlin/collections/k;-><init>()V

    iput-object p1, p0, Landroidx/activity/y;->b:Lkotlin/collections/k;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    sget-object p1, Landroidx/activity/w;->a:Landroidx/activity/w;

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$1;

    invoke-direct {v0, p0}, Landroidx/activity/OnBackPressedDispatcher$1;-><init>(Landroidx/activity/y;)V

    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$2;

    invoke-direct {v1, p0}, Landroidx/activity/OnBackPressedDispatcher$2;-><init>(Landroidx/activity/y;)V

    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$3;

    invoke-direct {v2, p0}, Landroidx/activity/OnBackPressedDispatcher$3;-><init>(Landroidx/activity/y;)V

    new-instance v3, Landroidx/activity/OnBackPressedDispatcher$4;

    invoke-direct {v3, p0}, Landroidx/activity/OnBackPressedDispatcher$4;-><init>(Landroidx/activity/y;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/activity/w;->a(Lvb/b;Lvb/b;Lvb/a;Lvb/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/activity/u;->a:Landroidx/activity/u;

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$5;

    invoke-direct {v0, p0}, Landroidx/activity/OnBackPressedDispatcher$5;-><init>(Landroidx/activity/y;)V

    invoke-virtual {p1, v0}, Landroidx/activity/u;->a(Lvb/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/activity/y;->d:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/z;Landroidx/fragment/app/q0;)V
    .locals 2

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/b0;

    iget-object v0, v0, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/y;Landroidx/lifecycle/t;Landroidx/activity/s;)V

    invoke-virtual {p2, v0}, Landroidx/activity/s;->addCancellable(Landroidx/activity/d;)V

    invoke-virtual {p0}, Landroidx/activity/y;->e()V

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;

    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/activity/s;->setEnabledChangedCallback$activity_release(Lvb/a;)V

    return-void
.end method

.method public final b(Landroidx/activity/s;)Landroidx/activity/x;
    .locals 2

    const-string v0, "onBackPressedCallback"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/y;->b:Lkotlin/collections/k;

    invoke-virtual {v0, p1}, Lkotlin/collections/k;->addLast(Ljava/lang/Object;)V

    new-instance v0, Landroidx/activity/x;

    invoke-direct {v0, p0, p1}, Landroidx/activity/x;-><init>(Landroidx/activity/y;Landroidx/activity/s;)V

    invoke-virtual {p1, v0}, Landroidx/activity/s;->addCancellable(Landroidx/activity/d;)V

    invoke-virtual {p0}, Landroidx/activity/y;->e()V

    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$addCancellableCallback$1;

    invoke-direct {v1, p0}, Landroidx/activity/OnBackPressedDispatcher$addCancellableCallback$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/activity/s;->setEnabledChangedCallback$activity_release(Lvb/a;)V

    return-object v0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/y;->b:Lkotlin/collections/k;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/activity/s;

    invoke-virtual {v3}, Landroidx/activity/s;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/activity/s;

    iput-object v2, p0, Landroidx/activity/y;->c:Landroidx/activity/s;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/activity/s;->handleOnBackPressed()V

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/activity/y;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public final d(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/activity/y;->e:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/activity/y;->d:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    sget-object v3, Landroidx/activity/u;->a:Landroidx/activity/u;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Landroidx/activity/y;->f:Z

    if-nez v4, :cond_0

    invoke-virtual {v3, v0, v2, v1}, Landroidx/activity/u;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/y;->f:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/activity/y;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {v3, v0, v1}, Landroidx/activity/u;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/activity/y;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Landroidx/activity/y;->g:Z

    iget-object v1, p0, Landroidx/activity/y;->b:Lkotlin/collections/k;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lkotlin/collections/k;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/s;

    invoke-virtual {v2}, Landroidx/activity/s;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroidx/activity/y;->g:Z

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/activity/y;->d(Z)V

    :cond_3
    return-void
.end method
