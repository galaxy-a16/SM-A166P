.class public final Ld/u0;
.super Ld/b;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/widget/s4;

.field public final b:Landroid/view/Window$Callback;

.field public final c:Lf9/b;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroidx/activity/k;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ld/d0;)V
    .locals 4

    invoke-direct {p0}, Ld/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/u0;->g:Ljava/util/ArrayList;

    new-instance v0, Landroidx/activity/k;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/activity/k;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ld/u0;->h:Landroidx/activity/k;

    new-instance v0, Ld/s0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ld/s0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/appcompat/widget/s4;

    invoke-direct {v3, p1, v2}, Landroidx/appcompat/widget/s4;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v3, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ld/u0;->b:Landroid/view/Window$Callback;

    iput-object p3, v3, Landroidx/appcompat/widget/s4;->k:Landroid/view/Window$Callback;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/q4;)V

    iget-boolean p3, v3, Landroidx/appcompat/widget/s4;->g:Z

    if-nez p3, :cond_0

    iput-object p2, v3, Landroidx/appcompat/widget/s4;->h:Ljava/lang/CharSequence;

    iget p3, v3, Landroidx/appcompat/widget/s4;->b:I

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p3, v3, Landroidx/appcompat/widget/s4;->g:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/view/x0;->h(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Lf9/b;

    invoke-direct {p1, p0, v1}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Ld/u0;->c:Lf9/b;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object p0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget-object p0, p0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/p;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public final b()Z
    .locals 3

    iget-object p0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget-object p0, p0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->T:Landroidx/appcompat/widget/o4;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lh/p;->collapseActionView()Z

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Ld/u0;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Ld/u0;->f:Z

    iget-object p0, p0, Ld/u0;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget p0, p0, Landroidx/appcompat/widget/s4;->b:I

    return p0
.end method

.method public final e()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    invoke-virtual {p0}, Landroidx/appcompat/widget/s4;->a()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget-object v1, v0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Ld/u0;->h:Landroidx/activity/k;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget-object v0, v0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Ld/u0;->h:Landroidx/activity/k;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Ld/u0;->r()Landroid/view/Menu;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {p0, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ld/u0;->k()Z

    :cond_0
    return v0
.end method

.method public final k()Z
    .locals 2

    iget-object p0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    invoke-virtual {p0}, Landroidx/appcompat/widget/s4;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/p;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public final l(Z)V
    .locals 0

    return-void
.end method

.method public final m(Z)V
    .locals 1

    iget-object p0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget p1, p0, Landroidx/appcompat/widget/s4;->b:I

    and-int/lit8 p1, p1, -0x5

    const/4 v0, 0x4

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/s4;->c(I)V

    return-void
.end method

.method public final n(Z)V
    .locals 0

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iput-boolean v0, p0, Landroidx/appcompat/widget/s4;->g:Z

    iput-object p1, p0, Landroidx/appcompat/widget/s4;->h:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/s4;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Landroidx/appcompat/widget/s4;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/view/x0;->h(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget-boolean v0, p0, Landroidx/appcompat/widget/s4;->g:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/s4;->h:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/s4;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Landroidx/appcompat/widget/s4;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/view/x0;->h(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final r()Landroid/view/Menu;
    .locals 4

    iget-boolean v0, p0, Ld/u0;->e:Z

    iget-object v1, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    if-nez v0, :cond_1

    new-instance v0, Ld/t0;

    invoke-direct {v0, p0}, Ld/t0;-><init>(Ld/u0;)V

    new-instance v2, Lp5/c;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    iget-object v3, v1, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iput-object v0, v3, Landroidx/appcompat/widget/Toolbar;->V:Lh/a0;

    iput-object v2, v3, Landroidx/appcompat/widget/Toolbar;->l0:Lh/l;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    iput-object v0, v3, Landroidx/appcompat/widget/ActionMenuView;->x:Lh/a0;

    iput-object v2, v3, Landroidx/appcompat/widget/ActionMenuView;->y:Lh/l;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/u0;->e:Z

    :cond_1
    iget-object p0, v1, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method
