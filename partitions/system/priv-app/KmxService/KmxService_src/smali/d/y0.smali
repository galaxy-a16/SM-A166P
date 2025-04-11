.class public final Ld/y0;
.super Lg/c;
.source "SourceFile"

# interfaces
.implements Lh/l;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lh/n;

.field public e:Lg/b;

.field public f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Ld/z0;


# direct methods
.method public constructor <init>(Ld/z0;Landroid/content/Context;Ld/z;)V
    .locals 0

    iput-object p1, p0, Ld/y0;->g:Ld/z0;

    invoke-direct {p0}, Lg/c;-><init>()V

    iput-object p2, p0, Ld/y0;->c:Landroid/content/Context;

    iput-object p3, p0, Ld/y0;->e:Lg/b;

    new-instance p1, Lh/n;

    invoke-direct {p1, p2}, Lh/n;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lh/n;->l:I

    iput-object p1, p0, Ld/y0;->d:Lh/n;

    iput-object p0, p1, Lh/n;->e:Lh/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ld/y0;->g:Ld/z0;

    iget-object v1, v0, Ld/z0;->i:Ld/y0;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Ld/z0;->p:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iput-object p0, v0, Ld/z0;->j:Ld/y0;

    iget-object v1, p0, Ld/y0;->e:Lg/b;

    iput-object v1, v0, Ld/z0;->k:Lg/b;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ld/y0;->e:Lg/b;

    invoke-interface {v1, p0}, Lg/b;->c(Lg/c;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Ld/y0;->e:Lg/b;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ld/z0;->r(Z)V

    iget-object p0, v0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    :cond_2
    iget-object p0, v0, Ld/z0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v2, v0, Ld/z0;->u:Z

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Ld/z0;->i:Ld/y0;

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ld/y0;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c()Lh/n;
    .locals 0

    iget-object p0, p0, Ld/y0;->d:Lh/n;

    return-object p0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Lg/k;

    iget-object p0, p0, Ld/y0;->c:Landroid/content/Context;

    invoke-direct {v0, p0}, Lg/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e(Lh/n;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Ld/y0;->e:Lg/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lg/b;->b(Lg/c;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Ld/y0;->g:Ld/z0;

    iget-object p0, p0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Ld/y0;->g:Ld/z0;

    iget-object p0, p0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ld/y0;->g:Ld/z0;

    iget-object v0, v0, Ld/z0;->i:Ld/y0;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld/y0;->d:Lh/n;

    invoke-virtual {v0}, Lh/n;->w()V

    :try_start_0
    iget-object v1, p0, Ld/y0;->e:Lg/b;

    invoke-interface {v1, p0, v0}, Lg/b;->a(Lg/c;Lh/n;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lh/n;->v()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lh/n;->v()V

    throw p0
.end method

.method public final i(Lh/n;)V
    .locals 0

    iget-object p1, p0, Ld/y0;->e:Lg/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ld/y0;->h()V

    iget-object p0, p0, Ld/y0;->g:Ld/z0;

    iget-object p0, p0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/b;->d:Landroidx/appcompat/widget/p;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/p;->p()Z

    :cond_1
    return-void
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Ld/y0;->g:Ld/z0;

    iget-object p0, p0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ld/y0;->g:Ld/z0;

    iget-object v0, v0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ld/y0;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Ld/y0;->g:Ld/z0;

    iget-object v0, v0, Ld/z0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/y0;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Ld/y0;->g:Ld/z0;

    iget-object p0, p0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Ld/y0;->g:Ld/z0;

    iget-object v0, v0, Ld/z0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/y0;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Ld/y0;->g:Ld/z0;

    iget-object p0, p0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/c;->b:Z

    iget-object p0, p0, Ld/y0;->g:Ld/z0;

    iget-object p0, p0, Ld/z0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
