.class public final Landroidx/recyclerview/widget/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/b1;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/c1;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/c1;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/c1;->e:I

    iput p1, p0, Landroidx/recyclerview/widget/c1;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/n1;Z)V
    .locals 5

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->v(Landroidx/recyclerview/widget/n1;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->I0:Landroidx/recyclerview/widget/p1;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/recyclerview/widget/p1;->e:Landroidx/recyclerview/widget/o1;

    instance-of v4, v2, Landroidx/recyclerview/widget/o1;

    if-eqz v4, :cond_0

    iget-object v2, v2, Landroidx/recyclerview/widget/o1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/c;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/x0;->g(Landroid/view/View;Landroidx/core/view/c;)V

    :cond_1
    if-eqz p2, :cond_5

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/j0;->onViewRecycled(Landroidx/recyclerview/widget/n1;)V

    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    if-eqz p2, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a2;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/a2;->m(Landroidx/recyclerview/widget/n1;)V

    :cond_3
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchViewRecycled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SeslRecyclerView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_5
    :goto_1
    iput-object v3, p1, Landroidx/recyclerview/widget/n1;->mBindingAdapter:Landroidx/recyclerview/widget/j0;

    iput-object v3, p1, Landroidx/recyclerview/widget/n1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c1;->c()Landroidx/recyclerview/widget/b1;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/b1;->a(I)Landroidx/recyclerview/widget/a1;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/a1;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/recyclerview/widget/b1;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/a1;

    iget p0, p0, Landroidx/recyclerview/widget/a1;->b:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p0, p2, :cond_6

    iget-object p0, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->f(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    if-eqz p0, :cond_8

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this scrap item already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->resetInternal()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public final b(I)I
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid position "

    const-string v2, ". State item count is "

    invoke-static {v1, p1, v2}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Landroidx/recyclerview/widget/b1;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/b1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/b1;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c1;->e()V

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    return-object p0
.end method

.method public final d(I)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/c1;->l(IJ)Landroidx/recyclerview/widget/n1;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    iget-object p0, p0, Landroidx/recyclerview/widget/b1;->c:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/j0;Z)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/b1;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/b1;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a1;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/a1;->a:Ljava/util/ArrayList;

    move v1, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/n1;

    iget-object v2, v2, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->f(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/c1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/c1;->h(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->E2:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Landroidx/recyclerview/widget/r;

    iget-object v0, p0, Landroidx/recyclerview/widget/r;->c:[I

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/r;->d:I

    :cond_2
    return-void
.end method

.method public final h(I)V
    .locals 5

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    const-string v1, "SeslRecyclerView"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Recycling cached view at index "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/c1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/n1;

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CachedViewHolder to be recycled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/c1;->a(Landroidx/recyclerview/widget/n1;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->isTmpDetached()Z

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->unScrap()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->clearReturnedFromScrapFlag()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/c1;->j(Landroidx/recyclerview/widget/n1;)V

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->T:Landroidx/recyclerview/widget/p0;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->isRecyclable()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->T:Landroidx/recyclerview/widget/p0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/p0;->d(Landroidx/recyclerview/widget/n1;)V

    :cond_3
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/n1;)V
    .locals 11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_14

    iget-object v0, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->doesTransientStatePreventRecycling()Z

    move-result v0

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/j0;->onFailedToRecycleView(Landroidx/recyclerview/widget/n1;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    iget-object v6, p0, Landroidx/recyclerview/widget/c1;->c:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cached view received recycle internal? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-nez v4, :cond_6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isRecyclable()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move p0, v1

    goto/16 :goto_8

    :cond_6
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/c1;->f:I

    if-lez v4, :cond_f

    const/16 v4, 0x20e

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/n1;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Landroidx/recyclerview/widget/c1;->f:I

    if-lt v4, v5, :cond_7

    if-lez v4, :cond_7

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/c1;->h(I)V

    add-int/lit8 v4, v4, -0x1

    :cond_7
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->E2:Z

    if-eqz v5, :cond_e

    if-lez v4, :cond_e

    iget v5, p1, Landroidx/recyclerview/widget/n1;->mPosition:I

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->A0:Landroidx/recyclerview/widget/r;

    iget-object v8, v7, Landroidx/recyclerview/widget/r;->c:[I

    if-eqz v8, :cond_9

    iget v8, v7, Landroidx/recyclerview/widget/r;->d:I

    mul-int/lit8 v8, v8, 0x2

    move v9, v1

    :goto_3
    if-ge v9, v8, :cond_9

    iget-object v10, v7, Landroidx/recyclerview/widget/r;->c:[I

    aget v10, v10, v9

    if-ne v10, v5, :cond_8

    move v5, v2

    goto :goto_4

    :cond_8
    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    :cond_9
    move v5, v1

    :goto_4
    if-nez v5, :cond_e

    :cond_a
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_d

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/n1;

    iget v5, v5, Landroidx/recyclerview/widget/n1;->mPosition:I

    iget-object v8, v7, Landroidx/recyclerview/widget/r;->c:[I

    if-eqz v8, :cond_c

    iget v8, v7, Landroidx/recyclerview/widget/r;->d:I

    mul-int/lit8 v8, v8, 0x2

    move v9, v1

    :goto_5
    if-ge v9, v8, :cond_c

    iget-object v10, v7, Landroidx/recyclerview/widget/r;->c:[I

    aget v10, v10, v9

    if-ne v10, v5, :cond_b

    move v5, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    :cond_c
    move v5, v1

    :goto_6
    if-nez v5, :cond_a

    :cond_d
    add-int/2addr v4, v2

    :cond_e
    invoke-virtual {v6, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v4, v2

    goto :goto_7

    :cond_f
    move v4, v1

    :goto_7
    if-nez v4, :cond_10

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/c1;->a(Landroidx/recyclerview/widget/n1;Z)V

    move v1, v2

    :cond_10
    move p0, v1

    move v1, v4

    :goto_8
    iget-object v2, v3, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a2;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/a2;->m(Landroidx/recyclerview/widget/n1;)V

    if-nez v1, :cond_11

    if-nez p0, :cond_11

    if-eqz v0, :cond_11

    iget-object p0, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->f(Landroid/view/View;)V

    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/recyclerview/widget/n1;->mBindingAdapter:Landroidx/recyclerview/widget/j0;

    iput-object p0, p1, Landroidx/recyclerview/widget/n1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_11
    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isScrap()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_15

    move v1, v2

    :cond_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->L()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(Landroid/view/View;)V
    .locals 5

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n1;->hasAnyOfTheFlags(I)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->T:Landroidx/recyclerview/widget/p0;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    check-cast v0, Landroidx/recyclerview/widget/l;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v0, v0, Landroidx/recyclerview/widget/q1;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v3

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    :cond_7
    invoke-virtual {p1, p0, v3}, Landroidx/recyclerview/widget/n1;->setScrapContainer(Landroidx/recyclerview/widget/c1;Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    goto :goto_8

    :cond_8
    :goto_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_7
    invoke-virtual {p1, p0, v1}, Landroidx/recyclerview/widget/n1;->setScrapContainer(Landroidx/recyclerview/widget/c1;Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    :goto_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(IJ)Landroidx/recyclerview/widget/n1;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz v1, :cond_4e

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v3

    if-ge v1, v3, :cond_4e

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/j1;->g:Z

    const/4 v5, 0x0

    const/16 v6, 0x20

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_2

    iget-object v8, v0, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->wasReturnedFromScrap()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->getLayoutPosition()I

    move-result v9

    if-ne v9, v1, :cond_1

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/n1;->addFlags(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/j0;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {v7, v1, v5}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v7

    if-lez v7, :cond_4

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/j0;->getItemId(I)J

    move-result-wide v7

    move v9, v5

    :goto_1
    if-ge v9, v4, :cond_4

    iget-object v10, v0, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/n1;->wasReturnedFromScrap()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v10}, Landroidx/recyclerview/widget/n1;->getItemId()J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-nez v11, :cond_3

    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/n1;->addFlags(I)V

    move-object v8, v10

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :cond_6
    move v4, v5

    :goto_4
    iget-object v7, v0, Landroidx/recyclerview/widget/c1;->c:Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    const/4 v10, -0x1

    const-string v11, "SeslRecyclerView"

    if-nez v8, :cond_1f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v12, v5

    :goto_5
    if-ge v12, v8, :cond_9

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/n1;->wasReturnedFromScrap()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v13}, Landroidx/recyclerview/widget/n1;->getLayoutPosition()I

    move-result v14

    if-ne v14, v1, :cond_8

    invoke-virtual {v13}, Landroidx/recyclerview/widget/n1;->isInvalid()Z

    move-result v14

    if-nez v14, :cond_8

    iget-boolean v14, v3, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v14, :cond_7

    invoke-virtual {v13}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    invoke-virtual {v13, v6}, Landroidx/recyclerview/widget/n1;->addFlags(I)V

    move-object v8, v13

    goto/16 :goto_c

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    iget-object v8, v6, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v5

    :goto_6
    if-ge v13, v12, :cond_b

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    iget-object v15, v6, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/recyclerview/widget/n1;->getLayoutPosition()I

    move-result v5

    if-ne v5, v1, :cond_a

    invoke-virtual {v15}, Landroidx/recyclerview/widget/n1;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v15}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_11

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v5

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    iget-object v8, v6, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget-object v8, v8, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-ltz v8, :cond_10

    iget-object v12, v6, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/c;->a(I)V

    invoke-virtual {v6, v14}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)V

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    iget-object v8, v6, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget-object v8, v8, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-ne v8, v10, :cond_c

    goto :goto_8

    :cond_c
    iget-object v6, v6, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result v12

    if-eqz v12, :cond_d

    :goto_8
    move v8, v10

    goto :goto_9

    :cond_d
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/c;->b(I)I

    move-result v6

    sub-int/2addr v8, v6

    :goto_9
    if-eq v8, v10, :cond_e

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/d;->c(I)V

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/c1;->k(Landroid/view/View;)V

    const/16 v6, 0x2020

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/n1;->addFlags(I)V

    goto/16 :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_13

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isInvalid()Z

    move-result v12

    if-nez v12, :cond_12

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->getLayoutPosition()I

    move-result v12

    if-ne v12, v1, :cond_12

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isAttachedToTransitionOverlay()Z

    move-result v12

    if-nez v12, :cond_12

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getScrapOrHiddenOrCachedHolderForPosition("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") found match in cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_13
    const/4 v5, 0x0

    :goto_b
    move-object v8, v5

    :cond_14
    :goto_c
    if-eqz v8, :cond_1f

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_17

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    if-eqz v5, :cond_16

    iget-boolean v5, v3, Landroidx/recyclerview/widget/j1;->g:Z

    if-eqz v5, :cond_15

    goto :goto_d

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "should not receive a removed view unless it is pre layout"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_d
    iget-boolean v5, v3, Landroidx/recyclerview/widget/j1;->g:Z

    goto :goto_10

    :cond_17
    iget v5, v8, Landroidx/recyclerview/widget/n1;->mPosition:I

    if-ltz v5, :cond_1e

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_1e

    iget-boolean v5, v3, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v5, :cond_18

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    iget v6, v8, Landroidx/recyclerview/widget/n1;->mPosition:I

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/j0;->getItemViewType(I)I

    move-result v5

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result v6

    if-eq v5, v6, :cond_18

    goto :goto_e

    :cond_18
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j0;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->getItemId()J

    move-result-wide v5

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    iget v13, v8, Landroidx/recyclerview/widget/n1;->mPosition:I

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/j0;->getItemId(I)J

    move-result-wide v12

    cmp-long v5, v5, v12

    if-nez v5, :cond_19

    goto :goto_f

    :cond_19
    :goto_e
    const/4 v5, 0x0

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v5, 0x1

    :goto_10
    if-nez v5, :cond_1d

    const/4 v5, 0x4

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/n1;->addFlags(I)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isScrap()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->unScrap()V

    goto :goto_11

    :cond_1b
    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->wasReturnedFromScrap()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->clearReturnedFromScrapFlag()V

    :cond_1c
    :goto_11
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/c1;->j(Landroidx/recyclerview/widget/n1;)V

    const/4 v8, 0x0

    goto :goto_12

    :cond_1d
    const/4 v4, 0x1

    goto :goto_12

    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_12
    if-nez v8, :cond_36

    iget-object v14, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v15}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v14

    if-ltz v14, :cond_35

    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result v15

    if-ge v14, v15, :cond_35

    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v15, v14}, Landroidx/recyclerview/widget/j0;->getItemViewType(I)I

    move-result v15

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/j0;->hasStableIds()Z

    move-result v12

    if-eqz v12, :cond_27

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v8, v14}, Landroidx/recyclerview/widget/j0;->getItemId(I)J

    move-result-wide v12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v10

    :goto_13
    if-ltz v8, :cond_22

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/n1;->getItemId()J

    move-result-wide v19

    cmp-long v6, v19, v12

    if-nez v6, :cond_21

    invoke-virtual {v5}, Landroidx/recyclerview/widget/n1;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_21

    invoke-virtual {v5}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result v6

    if-ne v15, v6, :cond_20

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/n1;->addFlags(I)V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-boolean v6, v3, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v6, :cond_26

    const/4 v6, 0x2

    const/16 v7, 0xe

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/n1;->setFlags(II)V

    goto :goto_16

    :cond_20
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, v5, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v5, v5, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v5

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/recyclerview/widget/n1;->mScrapContainer:Landroidx/recyclerview/widget/c1;

    iput-boolean v10, v5, Landroidx/recyclerview/widget/n1;->mInChangeScrap:Z

    invoke-virtual {v5}, Landroidx/recyclerview/widget/n1;->clearReturnedFromScrapFlag()V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/c1;->j(Landroidx/recyclerview/widget/n1;)V

    :cond_21
    add-int/lit8 v8, v8, -0x1

    const/4 v10, -0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, -0x1

    add-int/2addr v5, v6

    :goto_14
    if-ltz v5, :cond_25

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/n1;->getItemId()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-nez v8, :cond_24

    invoke-virtual {v6}, Landroidx/recyclerview/widget/n1;->isAttachedToTransitionOverlay()Z

    move-result v8

    if-nez v8, :cond_24

    invoke-virtual {v6}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result v8

    if-ne v15, v8, :cond_23

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v6

    goto :goto_17

    :cond_23
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/c1;->h(I)V

    goto :goto_15

    :cond_24
    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_25
    :goto_15
    const/4 v5, 0x0

    :cond_26
    :goto_16
    move-object v8, v5

    :goto_17
    if-eqz v8, :cond_27

    iput v14, v8, Landroidx/recyclerview/widget/n1;->mPosition:I

    const/4 v4, 0x1

    :cond_27
    if-nez v8, :cond_2f

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz v5, :cond_28

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tryGetViewHolderForPositionByDeadline("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") fetching from shared pool"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/c1;->c()Landroidx/recyclerview/widget/b1;

    move-result-object v5

    iget-object v5, v5, Landroidx/recyclerview/widget/b1;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/a1;

    if-eqz v6, :cond_2d

    iget-object v7, v6, Landroidx/recyclerview/widget/a1;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2d

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, -0x1

    add-int/2addr v8, v9

    :goto_18
    if-ltz v8, :cond_2d

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_29

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/n1;->isAttachedToTransitionOverlay()Z

    move-result v9

    if-nez v9, :cond_2c

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/n1;

    goto :goto_1a

    :cond_29
    const-string v9, "ViewHolder object null when getRecycledView is in progress. pos= "

    const-string v10, " size="

    invoke-static {v9, v8, v10}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " max= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Landroidx/recyclerview/widget/a1;->b:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " holder= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_19
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_2b

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/a1;

    iget-object v13, v13, Landroidx/recyclerview/widget/a1;->a:Ljava/util/ArrayList;

    if-eqz v13, :cond_2a

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v13, v12

    move v12, v13

    :cond_2a
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_2b
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " scrapHeap= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    add-int/lit8 v8, v8, -0x1

    goto :goto_18

    :cond_2d
    const/4 v5, 0x0

    :goto_1a
    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Landroidx/recyclerview/widget/n1;->resetInternal()V

    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    :cond_2e
    move-object v8, v5

    :cond_2f
    if-nez v8, :cond_36

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, p2, v7

    if-eqz v9, :cond_32

    iget-object v7, v0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/b1;->a(I)Landroidx/recyclerview/widget/a1;

    move-result-object v7

    iget-wide v7, v7, Landroidx/recyclerview/widget/a1;->c:J

    const-wide/16 v9, 0x0

    cmp-long v12, v7, v9

    if-eqz v12, :cond_31

    add-long/2addr v7, v5

    cmp-long v7, v7, p2

    if-gez v7, :cond_30

    goto :goto_1b

    :cond_30
    const/4 v7, 0x0

    goto :goto_1c

    :cond_31
    :goto_1b
    const/4 v7, 0x1

    :goto_1c
    if-nez v7, :cond_32

    const/4 v0, 0x0

    return-object v0

    :cond_32
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v7, v2, v15}, Landroidx/recyclerview/widget/j0;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/n1;

    move-result-object v8

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->E2:Z

    if-eqz v7, :cond_33

    iget-object v7, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    if-eqz v7, :cond_33

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v8, Landroidx/recyclerview/widget/n1;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_33
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v9

    iget-object v7, v0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    sub-long/2addr v9, v5

    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/b1;->a(I)Landroidx/recyclerview/widget/a1;

    move-result-object v5

    iget-wide v6, v5, Landroidx/recyclerview/widget/a1;->c:J

    const-wide/16 v12, 0x0

    cmp-long v14, v6, v12

    if-nez v14, :cond_34

    goto :goto_1d

    :cond_34
    const-wide/16 v12, 0x4

    div-long/2addr v6, v12

    const-wide/16 v14, 0x3

    mul-long/2addr v6, v14

    div-long/2addr v9, v12

    add-long/2addr v9, v6

    :goto_1d
    iput-wide v9, v5, Landroidx/recyclerview/widget/a1;->c:J

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz v5, :cond_36

    const-string v5, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "Inconsistency detected. Invalid item position "

    const-string v5, "(offset:"

    const-string v6, ").state:"

    invoke-static {v4, v1, v5, v14, v6}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_1e
    if-eqz v4, :cond_37

    iget-boolean v5, v3, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v5, :cond_37

    const/16 v5, 0x2000

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/n1;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v6, 0x0

    invoke-virtual {v8, v6, v5}, Landroidx/recyclerview/widget/n1;->setFlags(II)V

    iget-boolean v5, v3, Landroidx/recyclerview/widget/j1;->j:Z

    if-eqz v5, :cond_37

    invoke-static {v8}, Landroidx/recyclerview/widget/p0;->b(Landroidx/recyclerview/widget/n1;)V

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->T:Landroidx/recyclerview/widget/p0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->getUnmodifiedPayloads()Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/recyclerview/widget/o0;

    invoke-direct {v5}, Landroidx/recyclerview/widget/o0;-><init>()V

    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/o0;->a(Landroidx/recyclerview/widget/n1;)V

    invoke-virtual {v2, v8, v5}, Landroidx/recyclerview/widget/RecyclerView;->t0(Landroidx/recyclerview/widget/n1;Landroidx/recyclerview/widget/o0;)V

    :cond_37
    iget-boolean v5, v3, Landroidx/recyclerview/widget/j1;->g:Z

    if-eqz v5, :cond_39

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isBound()Z

    move-result v5

    if-eqz v5, :cond_39

    iput v1, v8, Landroidx/recyclerview/widget/n1;->mPreLayoutPosition:I

    :cond_38
    const/4 v6, 0x0

    goto :goto_22

    :cond_39
    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isBound()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->needsUpdate()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_38

    :cond_3a
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    if-eqz v5, :cond_3c

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_1f

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_1f
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v5

    const/4 v7, 0x0

    iput-object v7, v8, Landroidx/recyclerview/widget/n1;->mBindingAdapter:Landroidx/recyclerview/widget/j0;

    iput-object v2, v8, Landroidx/recyclerview/widget/n1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result v9

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v10, p2, v14

    if-eqz v10, :cond_3f

    iget-object v10, v0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/b1;->a(I)Landroidx/recyclerview/widget/a1;

    move-result-object v9

    iget-wide v9, v9, Landroidx/recyclerview/widget/a1;->d:J

    const-wide/16 v14, 0x0

    cmp-long v16, v9, v14

    if-eqz v16, :cond_3e

    add-long/2addr v9, v12

    cmp-long v9, v9, p2

    if-gez v9, :cond_3d

    goto :goto_20

    :cond_3d
    move v9, v6

    goto :goto_21

    :cond_3e
    :goto_20
    const/4 v9, 0x1

    :goto_21
    if-nez v9, :cond_3f

    :goto_22
    const/4 v0, 0x1

    move v1, v6

    goto/16 :goto_29

    :cond_3f
    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->isTmpDetached()Z

    move-result v9

    if-eqz v9, :cond_40

    iget-object v9, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    if-lez v9, :cond_40

    iget-object v9, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    iget-object v14, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-static {v2, v9, v10, v14}, Landroidx/recyclerview/widget/RecyclerView;->k(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    goto :goto_23

    :cond_40
    move v9, v6

    :goto_23
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v10, v8, v5}, Landroidx/recyclerview/widget/j0;->bindViewHolder(Landroidx/recyclerview/widget/n1;I)V

    if-eqz v9, :cond_41

    iget-object v5, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-static {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->l(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_41
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v9

    iget-object v0, v0, Landroidx/recyclerview/widget/c1;->g:Landroidx/recyclerview/widget/b1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result v5

    sub-long/2addr v9, v12

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/b1;->a(I)Landroidx/recyclerview/widget/a1;

    move-result-object v0

    iget-wide v12, v0, Landroidx/recyclerview/widget/a1;->d:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-nez v5, :cond_42

    goto :goto_24

    :cond_42
    const-wide/16 v14, 0x4

    div-long/2addr v12, v14

    const-wide/16 v16, 0x3

    mul-long v12, v12, v16

    div-long/2addr v9, v14

    add-long/2addr v9, v12

    :goto_24
    iput-wide v9, v0, Landroidx/recyclerview/widget/a1;->d:J

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    goto :goto_25

    :cond_43
    move v0, v6

    :goto_25
    if-eqz v0, :cond_49

    iget-object v0, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    sget-object v5, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/i0;->c(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_44

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    goto :goto_26

    :cond_44
    const/4 v5, 0x1

    :goto_26
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->I0:Landroidx/recyclerview/widget/p1;

    if-nez v9, :cond_45

    new-instance v9, Landroidx/recyclerview/widget/p1;

    invoke-direct {v9, v2}, Landroidx/recyclerview/widget/p1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/p1;)V

    const-string v9, "attachAccessibilityDelegate: mAccessibilityDelegate is null, so re create"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->I0:Landroidx/recyclerview/widget/p1;

    iget-object v9, v9, Landroidx/recyclerview/widget/p1;->e:Landroidx/recyclerview/widget/o1;

    instance-of v10, v9, Landroidx/recyclerview/widget/o1;

    if-eqz v10, :cond_48

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/view/u0;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v10

    if-nez v10, :cond_46

    goto :goto_27

    :cond_46
    instance-of v7, v10, Landroidx/core/view/a;

    if-eqz v7, :cond_47

    check-cast v10, Landroidx/core/view/a;

    iget-object v7, v10, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    goto :goto_27

    :cond_47
    new-instance v7, Landroidx/core/view/c;

    invoke-direct {v7, v10}, Landroidx/core/view/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_27
    if-eqz v7, :cond_48

    if-eq v7, v9, :cond_48

    iget-object v10, v9, Landroidx/recyclerview/widget/o1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v10, v0, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    invoke-static {v0, v9}, Landroidx/core/view/x0;->g(Landroid/view/View;Landroidx/core/view/c;)V

    move v0, v5

    goto :goto_28

    :cond_49
    const/4 v0, 0x1

    :goto_28
    iget-boolean v3, v3, Landroidx/recyclerview/widget/j1;->g:Z

    if-eqz v3, :cond_4a

    iput v1, v8, Landroidx/recyclerview/widget/n1;->mPreLayoutPosition:I

    :cond_4a
    move v1, v0

    :goto_29
    iget-object v3, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_4b

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_2a

    :cond_4b
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    :goto_2a
    check-cast v2, Landroidx/recyclerview/widget/v0;

    iget-object v3, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    :cond_4c
    move-object v2, v3

    check-cast v2, Landroidx/recyclerview/widget/v0;

    :goto_2b
    iput-object v8, v2, Landroidx/recyclerview/widget/v0;->a:Landroidx/recyclerview/widget/n1;

    if-eqz v4, :cond_4d

    if-eqz v1, :cond_4d

    move v5, v0

    goto :goto_2c

    :cond_4d
    move v5, v6

    :goto_2c
    iput-boolean v5, v2, Landroidx/recyclerview/widget/v0;->d:Z

    return-object v8

    :cond_4e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Invalid item position "

    const-string v4, "("

    const-string v5, "). Item count:"

    invoke-static {v3, v1, v4, v1, v5}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Landroidx/recyclerview/widget/n1;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/recyclerview/widget/n1;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/recyclerview/widget/n1;->mScrapContainer:Landroidx/recyclerview/widget/c1;

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/recyclerview/widget/n1;->mInChangeScrap:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/c1;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/u0;->j:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/c1;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/c1;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/c1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/c1;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/c1;->h(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
