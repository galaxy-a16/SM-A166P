.class public abstract Landroidx/recyclerview/widget/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/q0;

.field public final b:Ljava/util/ArrayList;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/p0;->a:Landroidx/recyclerview/widget/q0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/p0;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/recyclerview/widget/p0;->c:Landroid/view/View;

    return-void
.end method

.method public static b(Landroidx/recyclerview/widget/n1;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/n1;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n1;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n1;->getOldPosition()I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n1;->getAbsoluteAdapterPosition()I

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/n1;Landroidx/recyclerview/widget/n1;Landroidx/recyclerview/widget/o0;Landroidx/recyclerview/widget/o0;)Z
.end method

.method public final c(Landroidx/recyclerview/widget/n1;)V
    .locals 8

    iget-object p0, p0, Landroidx/recyclerview/widget/p0;->a:Landroidx/recyclerview/widget/q0;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n1;->setIsRecyclable(Z)V

    iget-object v1, p1, Landroidx/recyclerview/widget/n1;->mShadowedHolder:Landroidx/recyclerview/widget/n1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/n1;->mShadowingHolder:Landroidx/recyclerview/widget/n1;

    if-nez v1, :cond_0

    iput-object v2, p1, Landroidx/recyclerview/widget/n1;->mShadowedHolder:Landroidx/recyclerview/widget/n1;

    :cond_0
    iput-object v2, p1, Landroidx/recyclerview/widget/n1;->mShadowingHolder:Landroidx/recyclerview/widget/n1;

    iget-object p0, p0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/r0;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->shouldBeKeptAsChild()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->F0()V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    iget-object v3, v2, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    iget-object v4, v2, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget v5, v2, Landroidx/recyclerview/widget/d;->d:I

    const/4 v6, 0x0

    if-ne v5, v0, :cond_3

    iget-object v0, v2, Landroidx/recyclerview/widget/d;->e:Landroid/view/View;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeViewIfHidden within removeView(At) for a different view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v7, 0x2

    if-eq v5, v7, :cond_7

    :try_start_0
    iput v7, v2, Landroidx/recyclerview/widget/d;->d:I

    iget-object v5, v4, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/c;->f(I)Z

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/q0;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput v6, v2, Landroidx/recyclerview/widget/d;->d:I

    goto :goto_3

    :cond_5
    iput v6, v2, Landroidx/recyclerview/widget/d;->d:I

    :goto_2
    move v0, v6

    :goto_3
    if-eqz v0, :cond_6

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/c1;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c1;->m(Landroidx/recyclerview/widget/n1;)V

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c1;->j(Landroidx/recyclerview/widget/n1;)V

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after removing animated view: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->H0(Z)V

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_4

    :catchall_0
    move-exception p0

    iput v6, v2, Landroidx/recyclerview/widget/d;->d:I

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeViewIfHidden within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    return-void
.end method

.method public abstract d(Landroidx/recyclerview/widget/n1;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
