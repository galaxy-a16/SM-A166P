.class public final Lg4/i;
.super Lh/d;
.source "SourceFile"


# instance fields
.field public j:Lh/n;

.field public k:Lg4/g;

.field public l:Z

.field public m:I

.field public n:Landroid/content/Context;

.field public p:Lr3/l;

.field public final q:Lp5/c;

.field public t:Landroidx/appcompat/widget/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lh/d;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg4/i;->l:Z

    new-instance p1, Lp0/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p1, p0, v0, v1}, Lp0/a;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    new-instance p1, Lp5/c;

    const/16 v0, 0x19

    invoke-direct {p1, p0, v0}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lg4/i;->q:Lp5/c;

    return-void
.end method


# virtual methods
.method public final a(Lh/n;)V
    .locals 3

    iget-object v0, p0, Lg4/i;->t:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg4/i;->k:Lg4/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg4/i;->p:Lr3/l;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lh/n;->i()V

    iget-object v0, p1, Lh/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/i;

    iget-object v1, p0, Lg4/i;->n:Landroid/content/Context;

    iget-object v2, p0, Lg4/i;->k:Lg4/g;

    iget-object v2, v2, Lg4/g;->O:Lg4/c;

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/appcompat/widget/i;-><init>(Lg4/i;Landroid/content/Context;Lh/n;Lg4/c;)V

    iput-object v0, p0, Lg4/i;->t:Landroidx/appcompat/widget/i;

    new-instance p1, Lr3/l;

    invoke-direct {p1, p0, v0}, Lr3/l;-><init>(Lg4/i;Landroidx/appcompat/widget/i;)V

    iput-object p1, p0, Lg4/i;->p:Lr3/l;

    iget-object v0, p0, Lg4/i;->k:Lg4/g;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lh/d;->e:Lh/a0;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lh/d;->c:Lh/n;

    invoke-interface {p1, p0}, Lh/a0;->j(Lh/n;)Z

    :cond_1
    return-void
.end method

.method public final b(Lh/n;Z)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/os/Parcelable;)V
    .locals 7

    instance-of v0, p1, Lg4/h;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lg4/i;->k:Lg4/g;

    check-cast p1, Lg4/h;

    iget v1, p1, Lg4/h;->a:I

    iget-object v2, v0, Lg4/g;->G:Lh/n;

    invoke-virtual {v2}, Lh/n;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, v0, Lg4/g;->G:Lh/n;

    invoke-virtual {v5, v4}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v1, v6, :cond_0

    iput v1, v0, Lg4/g;->f:I

    iput v4, v0, Lg4/g;->g:I

    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lg4/i;->k:Lg4/g;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lg4/h;->b:Lcom/google/android/material/internal/i;

    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    move v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv3/b;

    if-eqz v5, :cond_2

    new-instance v6, Lv3/a;

    invoke-direct {v6, v0, v5}, Lv3/a;-><init>(Landroid/content/Context;Lv3/b;)V

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lg4/i;->k:Lg4/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p1, v3

    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v2, p0, Lg4/g;->t:Landroid/util/SparseArray;

    if-ge p1, v0, :cond_5

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/a;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_8

    array-length p1, p0

    :goto_5
    if-ge v3, p1, :cond_8

    aget-object v0, p0, v3

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/a;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Lg4/c;->setBadge(Lv3/a;)V

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public final e(Z)V
    .locals 1

    iget-boolean v0, p0, Lg4/i;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lg4/i;->k:Lg4/g;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lg4/g;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg4/g;->l()V

    :goto_0
    return-void
.end method

.method public final f(Landroid/content/Context;Lh/n;)V
    .locals 1

    iput-object p2, p0, Lg4/i;->j:Lh/n;

    iget-object v0, p0, Lg4/i;->k:Lg4/g;

    iput-object p2, v0, Lg4/g;->G:Lh/n;

    iput-object p1, p0, Lg4/i;->n:Landroid/content/Context;

    return-void
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lg4/i;->m:I

    return p0
.end method

.method public final h()Landroid/os/Parcelable;
    .locals 5

    new-instance v0, Lg4/h;

    invoke-direct {v0}, Lg4/h;-><init>()V

    iget-object v1, p0, Lg4/i;->k:Lg4/g;

    invoke-virtual {v1}, Lg4/g;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lg4/h;->a:I

    iget-object p0, p0, Lg4/i;->k:Lg4/g;

    invoke-virtual {p0}, Lg4/g;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object p0

    new-instance v1, Lcom/google/android/material/internal/i;

    invoke-direct {v1}, Lcom/google/android/material/internal/i;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/a;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lv3/a;->e:Lv3/c;

    iget-object v4, v4, Lv3/c;->a:Lv3/b;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lg4/h;->b:Lcom/google/android/material/internal/i;

    return-object v0
.end method

.method public final k(Lh/h0;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
