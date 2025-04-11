.class public Landroidx/activity/p;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/z;
.implements Landroidx/activity/z;
.implements Landroidx/savedstate/f;


# instance fields
.field public a:Landroidx/lifecycle/b0;

.field public final b:Landroidx/savedstate/e;

.field public final c:Landroidx/activity/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Lh5/d;->f(Landroidx/savedstate/f;)Landroidx/savedstate/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/p;->b:Landroidx/savedstate/e;

    new-instance p1, Landroidx/activity/y;

    new-instance p2, Landroidx/activity/e;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Landroidx/activity/e;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Landroidx/activity/y;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/p;->c:Landroidx/activity/y;

    return-void
.end method

.method public static a(Landroidx/activity/p;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/p;->b()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lva/n;->L(Landroid/view/View;Landroidx/lifecycle/z;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lv9/a;->b0(Landroid/view/View;Landroidx/activity/z;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lh3/a;->M(Landroid/view/View;Landroidx/savedstate/f;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/t;
    .locals 1

    iget-object v0, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/z;)V

    iput-object v0, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    :cond_0
    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/y;
    .locals 0

    iget-object p0, p0, Landroidx/activity/p;->c:Landroidx/activity/y;

    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/d;
    .locals 0

    iget-object p0, p0, Landroidx/activity/p;->b:Landroidx/savedstate/e;

    iget-object p0, p0, Landroidx/savedstate/e;->b:Landroidx/savedstate/d;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/p;->c:Landroidx/activity/y;

    invoke-virtual {p0}, Landroidx/activity/y;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const-string v1, "onBackInvokedDispatcher"

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/p;->c:Landroidx/activity/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Landroidx/activity/y;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean v0, v1, Landroidx/activity/y;->g:Z

    invoke-virtual {v1, v0}, Landroidx/activity/y;->d(Z)V

    iget-object v0, p0, Landroidx/activity/p;->b:Landroidx/savedstate/e;

    invoke-virtual {v0, p1}, Landroidx/savedstate/e;->b(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/z;)V

    iput-object p1, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    :cond_0
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "super.onSaveInstanceState()"

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/p;->b:Landroidx/savedstate/e;

    invoke-virtual {p0, v0}, Landroidx/savedstate/e;->c(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/z;)V

    iput-object v0, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    :cond_0
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/z;)V

    iput-object v0, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/p;->a:Landroidx/lifecycle/b0;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/p;->b()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    const-string v0, "view"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/p;->b()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    const-string v0, "view"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/p;->b()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
