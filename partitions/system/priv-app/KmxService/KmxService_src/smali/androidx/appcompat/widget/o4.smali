.class public final Landroidx/appcompat/widget/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/b0;


# instance fields
.field public a:Lh/n;

.field public b:Lh/p;

.field public final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/o4;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lh/n;Z)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final e(Z)V
    .locals 4

    iget-object p1, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/o4;->a:Lh/n;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lh/n;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/o4;->a:Lh/n;

    invoke-virtual {v2, v1}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o4;->j(Lh/p;)Z

    :cond_2
    return-void
.end method

.method public final f(Landroid/content/Context;Lh/n;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/o4;->a:Lh/n;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lh/n;->d(Lh/p;)Z

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/o4;->a:Lh/n;

    return-void
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(Lh/p;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/o4;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->c()V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/d0;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/d0;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lh/p;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    const/4 p0, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_3

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance v1, Landroidx/appcompat/widget/p4;

    invoke-direct {v1}, Landroidx/appcompat/widget/p4;-><init>()V

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    const v3, 0x800003

    or-int/2addr v2, v3

    iput v2, v1, Ld/a;->a:I

    iput p0, v1, Landroidx/appcompat/widget/p4;->b:I

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :cond_4
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/p4;

    iget v3, v3, Landroidx/appcompat/widget/p4;->b:I

    if-eq v3, p0, :cond_4

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v2, v3, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->I:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lh/p;->G:Z

    iget-object p1, p1, Lh/p;->n:Lh/n;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lh/n;->p(Z)V

    iget-object p1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    instance-of v1, p1, Lg/d;

    if-eqz v1, :cond_6

    check-cast p1, Lg/d;

    invoke-interface {p1}, Lg/d;->c()V

    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->s()V

    return p0
.end method

.method public final j(Lh/p;)Z
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/o4;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    instance-of v2, v1, Lg/d;

    if-eqz v2, :cond_0

    check-cast v1, Lg/d;

    invoke-interface {v1}, Lg/d;->e()V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lh/p;->G:Z

    iget-object p1, p1, Lh/p;->n:Lh/n;

    invoke-virtual {p1, p0}, Lh/n;->p(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->s()V

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lh/h0;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
