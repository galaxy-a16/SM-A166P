.class public final Lg/g;
.super Lg/c;
.source "SourceFile"

# interfaces
.implements Lh/l;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroidx/appcompat/widget/ActionBarContextView;

.field public final e:Lg/b;

.field public f:Ljava/lang/ref/WeakReference;

.field public g:Z

.field public final h:Lh/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lg/b;)V
    .locals 0

    invoke-direct {p0}, Lg/c;-><init>()V

    iput-object p1, p0, Lg/g;->c:Landroid/content/Context;

    iput-object p2, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p3, p0, Lg/g;->e:Lg/b;

    new-instance p1, Lh/n;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lh/n;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lh/n;->l:I

    iput-object p1, p0, Lg/g;->h:Lh/n;

    iput-object p0, p1, Lh/n;->e:Lh/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lg/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/g;->g:Z

    iget-object v0, p0, Lg/g;->e:Lg/b;

    invoke-interface {v0, p0}, Lg/b;->c(Lg/c;)V

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/g;->f:Ljava/lang/ref/WeakReference;

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

    iget-object p0, p0, Lg/g;->h:Lh/n;

    return-object p0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Lg/k;

    iget-object p0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e(Lh/n;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lg/g;->e:Lg/b;

    invoke-interface {p1, p0, p2}, Lg/b;->b(Lg/c;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lg/g;->h:Lh/n;

    iget-object v1, p0, Lg/g;->e:Lg/b;

    invoke-interface {v1, p0, v0}, Lg/b;->a(Lg/c;Lh/n;)Z

    return-void
.end method

.method public final i(Lh/n;)V
    .locals 0

    invoke-virtual {p0}, Lg/g;->h()V

    iget-object p0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/b;->d:Landroidx/appcompat/widget/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/p;->p()Z

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lg/g;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lg/g;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/g;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Lg/g;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/g;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/c;->b:Z

    iget-object p0, p0, Lg/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
