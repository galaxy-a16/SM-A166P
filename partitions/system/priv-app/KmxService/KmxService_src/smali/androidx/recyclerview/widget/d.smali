.class public final Landroidx/recyclerview/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/q0;

.field public final b:Landroidx/recyclerview/widget/c;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/q0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/d;->d:I

    iput-object p1, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    new-instance p1, Landroidx/recyclerview/widget/c;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/c;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q0;->c()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/d;->f(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v1, p2, p3}, Landroidx/recyclerview/widget/c;->e(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->i(Landroid/view/View;)V

    :cond_1
    iget-object p0, v0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object p2

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/j0;->onViewAttachedToWindow(Landroidx/recyclerview/widget/n1;)V

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, -0x1

    add-int/2addr p2, p3

    :goto_1
    if-ltz p2, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/w0;

    check-cast v0, Lh1/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, p3, :cond_3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, p3, :cond_3

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pages must fill the whole ViewPager2 (use match_parent)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public final b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q0;->c()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/d;->f(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v1, p2, p4}, Landroidx/recyclerview/widget/c;->e(IZ)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->i(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object p0

    iget-object p4, v0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n1;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n1;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p4, p2}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reAttach "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/n1;->clearTmpDetachFlag()V

    goto :goto_2

    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    if-nez p0, :cond_6

    :goto_2
    invoke-static {p4, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "No ViewHolder found for child: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p4, p3}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->f(I)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/c;->f(I)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget-object v0, p0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called detach on an already detached child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tmpDetach "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n1;->addFlags(I)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_1
    invoke-static {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->f(ILandroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No view at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->f(I)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget-object p0, p0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q0;->c()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final f(I)I
    .locals 5

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/q0;->c()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c;->b(I)I

    move-result v4

    sub-int v4, v2, v4

    sub-int v4, p1, v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v4

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final g(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget-object p0, p0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/q0;->c()I

    move-result p0

    return p0
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/n1;->onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public final j(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/n1;->onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
