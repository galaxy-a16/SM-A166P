.class public final Lg/h;
.super Landroid/view/ActionMode;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lg/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lg/h;->b:Lg/c;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0}, Lg/c;->a()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0}, Lg/c;->b()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 2

    new-instance v0, Lh/e0;

    iget-object v1, p0, Lg/h;->b:Lg/c;

    invoke-virtual {v1}, Lg/c;->c()Lh/n;

    move-result-object v1

    iget-object p0, p0, Lg/h;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lh/e0;-><init>(Landroid/content/Context;Ly/a;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0}, Lg/c;->d()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0}, Lg/c;->f()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    iget-object p0, p0, Lg/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0}, Lg/c;->g()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTitleOptionalHint()Z
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    iget-boolean p0, p0, Lg/c;->b:Z

    return p0
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0}, Lg/c;->h()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0}, Lg/c;->j()Z

    move-result p0

    return p0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0, p1}, Lg/c;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0, p1}, Lg/c;->l(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0, p1}, Lg/c;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    iput-object p1, p0, Lg/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0, p1}, Lg/c;->n(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0, p1}, Lg/c;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 0

    iget-object p0, p0, Lg/h;->b:Lg/c;

    invoke-virtual {p0, p1}, Lg/c;->p(Z)V

    return-void
.end method
