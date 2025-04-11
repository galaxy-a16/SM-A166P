.class public abstract Lg4/g;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lh/d0;


# static fields
.field public static final r0:[I

.field public static final s0:[I


# instance fields
.field public A:I

.field public B:Ll4/k;

.field public C:Landroid/content/res/ColorStateList;

.field public E:I

.field public F:Lg4/i;

.field public G:Lh/n;

.field public H:I

.field public I:Lh/l;

.field public K:I

.field public L:Ld/m;

.field public N:Ld/m;

.field public O:Lg4/c;

.field public P:Z

.field public Q:Lh/n;

.field public R:I

.field public T:I

.field public V:I

.field public final a:Ld1/a;

.field public final b:Lg4/e;

.field public final c:Landroidx/core/util/e;

.field public d:I

.field public e:[Lg4/c;

.field public f:I

.field public g:I

.field public h:Landroid/content/res/ColorStateList;

.field public i:I

.field public j:Landroid/content/res/ColorStateList;

.field public final k:Landroid/content/res/ColorStateList;

.field public l:I

.field public l0:Lh/n;

.field public m:I

.field public m0:Z

.field public n:Landroid/graphics/drawable/Drawable;

.field public n0:Z

.field public o0:Z

.field public p:Landroid/content/res/ColorStateList;

.field public final p0:Landroid/content/ContentResolver;

.field public q:I

.field public q0:Landroid/graphics/drawable/ColorDrawable;

.field public final t:Landroid/util/SparseArray;

.field public u:I

.field public v:I

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lg4/g;->r0:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lg4/g;->s0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/core/util/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/core/util/e;-><init>(I)V

    iput-object v0, p0, Lg4/g;->c:Landroidx/core/util/e;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lg4/g;->f:I

    iput v0, p0, Lg4/g;->g:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lg4/g;->t:Landroid/util/SparseArray;

    const/4 v1, -0x1

    iput v1, p0, Lg4/g;->u:I

    iput v1, p0, Lg4/g;->v:I

    iput v1, p0, Lg4/g;->w:I

    iput v0, p0, Lg4/g;->E:I

    const/4 v1, 0x1

    iput v1, p0, Lg4/g;->K:I

    const/4 v2, 0x0

    iput-object v2, p0, Lg4/g;->L:Ld/m;

    iput-object v2, p0, Lg4/g;->N:Ld/m;

    iput-object v2, p0, Lg4/g;->O:Lg4/c;

    iput-boolean v0, p0, Lg4/g;->P:Z

    iput-object v2, p0, Lg4/g;->Q:Lh/n;

    iput v0, p0, Lg4/g;->R:I

    iput v0, p0, Lg4/g;->T:I

    iput v0, p0, Lg4/g;->V:I

    iput-boolean v1, p0, Lg4/g;->n0:Z

    iput-boolean v1, p0, Lg4/g;->o0:Z

    invoke-virtual {p0}, Lg4/g;->d()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lg4/g;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p0, Lg4/g;->a:Ld1/a;

    goto :goto_0

    :cond_0
    new-instance v2, Ld1/a;

    invoke-direct {v2}, Ld1/a;-><init>()V

    iput-object v2, p0, Lg4/g;->a:Ld1/a;

    invoke-virtual {v2, v0}, Ld1/v;->J(I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ld1/v;->I(J)V

    new-instance v3, Lcom/google/android/material/internal/m;

    invoke-direct {v3}, Lcom/google/android/material/internal/m;-><init>()V

    invoke-virtual {v2, v3}, Ld1/v;->H(Ld1/q;)V

    :goto_0
    new-instance v2, Lg4/e;

    invoke-direct {v2, p0, v0}, Lg4/e;-><init>(Lg4/g;I)V

    iput-object v2, p0, Lg4/g;->b:Lg4/e;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lg4/g;->p0:Landroid/content/ContentResolver;

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v1}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    return-void
.end method

.method private getNewItem()Lg4/c;
    .locals 1

    iget-object v0, p0, Lg4/g;->c:Landroidx/core/util/e;

    invoke-virtual {v0}, Landroidx/core/util/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lx3/a;

    invoke-direct {v0, p0}, Lx3/a;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private setBadgeIfNeeded(Lg4/c;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lg4/g;->t:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv3/a;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Lg4/c;->setBadge(Lv3/a;)V

    :cond_2
    return-void
.end method

.method private setShowButtonShape(Lg4/c;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg4/g;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lg4/g;->p0:Landroid/content/ContentResolver;

    const-string v2, "show_button_background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    iget-object v1, p0, Lg4/g;->q0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lva/n;->z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f050318

    goto :goto_1

    :cond_3
    const v2, 0x7f050317

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700ee

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p1, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p1, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lg4/g;->O:Lg4/c;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lg4/c;->getItemData()Lh/p;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lg4/g;->l0:Lh/n;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget p1, p1, Lh/p;->a:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v1, v3}, Lg4/g;->j(IZ)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lh/n;)V
    .locals 0

    iput-object p1, p0, Lg4/g;->G:Lh/n;

    return-void
.end method

.method public final b(Lh/p;Z)Lg4/c;
    .locals 7

    iget-object v0, p0, Lg4/g;->c:Landroidx/core/util/e;

    invoke-virtual {v0}, Landroidx/core/util/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg4/g;->getViewType()I

    move-result v6

    new-instance v0, Lg4/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move v4, v6

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lg4/f;-><init>(Lg4/g;Landroid/content/Context;ILh/p;I)V

    :cond_0
    iget-object v1, p0, Lg4/g;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lg4/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lg4/g;->i:I

    invoke-virtual {v0, v1}, Lg4/c;->setIconSize(I)V

    iget-object v1, p0, Lg4/g;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lg4/g;->H:I

    iput v1, v0, Lg4/c;->R:I

    iput v1, v0, Lg4/c;->T:I

    iget-object v2, v0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget-object v3, v0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lg4/c;->a(FF)V

    iget v1, v0, Lg4/c;->R:I

    invoke-virtual {v0, v3, v1}, Lg4/c;->f(Landroid/widget/TextView;I)V

    iget v1, v0, Lg4/c;->T:I

    invoke-virtual {v0, v2, v1}, Lg4/c;->f(Landroid/widget/TextView;I)V

    iget v1, p0, Lg4/g;->l:I

    invoke-virtual {v0, v1}, Lg4/c;->setTextAppearanceInactive(I)V

    iget v1, p0, Lg4/g;->m:I

    invoke-virtual {v0, v1}, Lg4/c;->setTextAppearanceActive(I)V

    iget-object v1, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lg4/g;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lg4/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lg4/g;->q:I

    invoke-virtual {v0, v1}, Lg4/c;->setItemBackground(I)V

    :goto_0
    invoke-virtual {p0, v0}, Lg4/g;->g(Lg4/c;)V

    invoke-virtual {v0, p2}, Lg4/c;->setShifting(Z)V

    iget p2, p0, Lg4/g;->d:I

    invoke-virtual {v0, p2}, Lg4/c;->setLabelVisibilityMode(I)V

    invoke-virtual {v0, p1}, Lg4/c;->d(Lh/p;)V

    iget p0, p0, Lg4/g;->R:I

    invoke-virtual {v0, p0}, Lg4/c;->setItemPosition(I)V

    return-object v0
.end method

.method public final c()V
    .locals 14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lg4/g;->a:Ld1/a;

    invoke-static {p0, v0}, Ld1/t;->a(Landroid/view/ViewGroup;Ld1/q;)V

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lg4/g;->n0:Z

    if-eqz v3, :cond_1

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p0, v6}, Lg4/g;->i(I)V

    iget-object v6, p0, Lg4/g;->c:Landroidx/core/util/e;

    invoke-virtual {v6, v5}, Landroidx/core/util/e;->b(Ljava/lang/Object;)Z

    iget-object v6, v5, Lg4/c;->q:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lg4/c;->j(Landroid/widget/ImageView;)V

    iput-object v1, v5, Lg4/c;->y:Lh/p;

    const/4 v6, 0x0

    iput v6, v5, Lg4/c;->F:F

    iput-boolean v2, v5, Lg4/c;->b:Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg4/g;->O:Lg4/c;

    if-eqz v0, :cond_2

    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lg4/g;->i(I)V

    :cond_2
    iget-object v0, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v0}, Lh/n;->size()I

    move-result v0

    if-nez v0, :cond_3

    iput v2, p0, Lg4/g;->f:I

    iput v2, p0, Lg4/g;->g:I

    iput-object v1, p0, Lg4/g;->e:[Lg4/c;

    iput v2, p0, Lg4/g;->R:I

    iput-object v1, p0, Lg4/g;->O:Lg4/c;

    iput-object v1, p0, Lg4/g;->Q:Lh/n;

    iput-object v1, p0, Lg4/g;->L:Ld/m;

    iput-object v1, p0, Lg4/g;->N:Ld/m;

    return-void

    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_1
    iget-object v5, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v5}, Lh/n;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v5, v4}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_2
    iget-object v5, p0, Lg4/g;->t:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->delete(I)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget v3, p0, Lg4/g;->d:I

    iget-object v4, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v4}, Lh/n;->l()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    const/4 v4, 0x1

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    iget-object v5, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v5}, Lh/n;->size()I

    move-result v5

    new-array v5, v5, [Lg4/c;

    iput-object v5, p0, Lg4/g;->e:[Lg4/c;

    new-instance v5, Ld/m;

    invoke-direct {v5, v0}, Ld/m;-><init>(I)V

    iput-object v5, p0, Lg4/g;->L:Ld/m;

    new-instance v5, Ld/m;

    invoke-direct {v5, v0}, Ld/m;-><init>(I)V

    iput-object v5, p0, Lg4/g;->N:Ld/m;

    new-instance v5, Lh/n;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lh/n;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lg4/g;->Q:Lh/n;

    iget-object v5, p0, Lg4/g;->L:Ld/m;

    iput v2, v5, Ld/m;->a:I

    iget-object v5, p0, Lg4/g;->N:Ld/m;

    iput v2, v5, Ld/m;->a:I

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_4
    const/4 v8, 0x2

    if-ge v5, v0, :cond_d

    iget-object v9, p0, Lg4/g;->F:Lg4/i;

    iput-boolean v4, v9, Lg4/i;->l:Z

    iget-object v9, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v9, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v9, p0, Lg4/g;->F:Lg4/i;

    iput-boolean v2, v9, Lg4/i;->l:Z

    iget-object v9, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v9, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    check-cast v9, Lh/p;

    iget v9, v9, Lh/p;->B:I

    and-int/lit8 v10, v9, 0x2

    if-ne v10, v8, :cond_8

    move v8, v4

    goto :goto_5

    :cond_8
    move v8, v2

    :goto_5
    if-nez v8, :cond_a

    and-int/lit8 v8, v9, 0x1

    if-ne v8, v4, :cond_9

    move v8, v4

    goto :goto_6

    :cond_9
    move v8, v2

    :goto_6
    if-nez v8, :cond_a

    move v8, v4

    goto :goto_7

    :cond_a
    move v8, v2

    :goto_7
    if-eqz v8, :cond_b

    iget-object v8, p0, Lg4/g;->N:Ld/m;

    iget-object v9, v8, Ld/m;->b:Ljava/lang/Object;

    check-cast v9, [I

    iget v10, v8, Ld/m;->a:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v8, Ld/m;->a:I

    aput v5, v9, v10

    iget-object v8, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v8, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-nez v8, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    iget-object v8, p0, Lg4/g;->L:Ld/m;

    iget-object v9, v8, Ld/m;->b:Ljava/lang/Object;

    check-cast v9, [I

    iget v10, v8, Ld/m;->a:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v8, Ld/m;->a:I

    aput v5, v9, v10

    iget-object v8, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v8, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_c

    add-int/lit8 v7, v7, 0x1

    :cond_c
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lg4/g;->N:Ld/m;

    iget v0, v0, Ld/m;->a:I

    sub-int/2addr v0, v6

    if-lez v0, :cond_e

    move v0, v4

    goto :goto_9

    :cond_e
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lg4/g;->P:Z

    add-int/2addr v7, v0

    iget v5, p0, Lg4/g;->V:I

    if-le v7, v5, :cond_12

    sub-int/2addr v5, v4

    sub-int/2addr v7, v5

    if-eqz v0, :cond_f

    add-int/lit8 v7, v7, -0x1

    :cond_f
    iget-object v0, p0, Lg4/g;->L:Ld/m;

    iget v0, v0, Ld/m;->a:I

    sub-int/2addr v0, v4

    :goto_a
    if-ltz v0, :cond_12

    iget-object v5, p0, Lg4/g;->G:Lh/n;

    iget-object v6, p0, Lg4/g;->L:Ld/m;

    iget-object v6, v6, Ld/m;->b:Ljava/lang/Object;

    check-cast v6, [I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lg4/g;->N:Ld/m;

    iget-object v6, v5, Ld/m;->b:Ljava/lang/Object;

    check-cast v6, [I

    iget v9, v5, Ld/m;->a:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v5, Ld/m;->a:I

    iget-object v5, p0, Lg4/g;->L:Ld/m;

    iget-object v10, v5, Ld/m;->b:Ljava/lang/Object;

    check-cast v10, [I

    aget v10, v10, v0

    aput v10, v6, v9

    iget v6, v5, Ld/m;->a:I

    sub-int/2addr v6, v4

    iput v6, v5, Ld/m;->a:I

    goto :goto_b

    :cond_10
    iget-object v5, p0, Lg4/g;->N:Ld/m;

    iget-object v6, v5, Ld/m;->b:Ljava/lang/Object;

    check-cast v6, [I

    iget v9, v5, Ld/m;->a:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v5, Ld/m;->a:I

    iget-object v5, p0, Lg4/g;->L:Ld/m;

    iget-object v10, v5, Ld/m;->b:Ljava/lang/Object;

    check-cast v10, [I

    aget v10, v10, v0

    aput v10, v6, v9

    iget v6, v5, Ld/m;->a:I

    sub-int/2addr v6, v4

    iput v6, v5, Ld/m;->a:I

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_11

    goto :goto_c

    :cond_11
    :goto_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_12
    :goto_c
    iput v2, p0, Lg4/g;->R:I

    iput v2, p0, Lg4/g;->T:I

    move v0, v2

    :goto_d
    iget-object v5, p0, Lg4/g;->L:Ld/m;

    iget v6, v5, Ld/m;->a:I

    const-string v7, "g"

    if-ge v0, v6, :cond_1b

    iget-object v5, v5, Ld/m;->b:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v0

    iget-object v6, p0, Lg4/g;->e:[Lg4/c;

    if-nez v6, :cond_13

    goto/16 :goto_11

    :cond_13
    if-ltz v5, :cond_19

    iget-object v6, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v6}, Lh/n;->size()I

    move-result v6

    if-gt v5, v6, :cond_19

    iget-object v6, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v6, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    instance-of v6, v6, Lh/p;

    if-nez v6, :cond_14

    goto/16 :goto_10

    :cond_14
    iget-object v6, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v6, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lh/p;

    invoke-virtual {p0, v6, v3}, Lg4/g;->b(Lh/p;Z)Lg4/c;

    move-result-object v7

    iget-object v9, p0, Lg4/g;->e:[Lg4/c;

    iget v10, p0, Lg4/g;->R:I

    aput-object v7, v9, v10

    iget-object v9, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v9, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_15

    move v9, v2

    goto :goto_e

    :cond_15
    const/16 v9, 0x8

    :goto_e
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lg4/g;->b:Lg4/e;

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v9, p0, Lg4/g;->f:I

    if-eqz v9, :cond_16

    iget-object v9, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v9, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iget v9, p0, Lg4/g;->f:I

    if-ne v5, v9, :cond_16

    iget v5, p0, Lg4/g;->R:I

    iput v5, p0, Lg4/g;->g:I

    :cond_16
    iget-object v5, v6, Lh/p;->H:Ljava/lang/String;

    iget v6, v6, Lh/p;->a:I

    if-eqz v5, :cond_17

    invoke-virtual {p0, v6, v5}, Lg4/g;->h(ILjava/lang/String;)V

    goto :goto_f

    :cond_17
    invoke-virtual {p0, v6}, Lg4/g;->i(I)V

    :goto_f
    invoke-direct {p0, v7}, Lg4/g;->setBadgeIfNeeded(Lg4/c;)V

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v5, p0, Lg4/g;->R:I

    add-int/2addr v5, v4

    iput v5, p0, Lg4/g;->R:I

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    iget v5, p0, Lg4/g;->T:I

    add-int/2addr v5, v4

    iput v5, p0, Lg4/g;->T:I

    goto :goto_11

    :cond_19
    :goto_10
    const-string v6, "position is out of index (pos="

    const-string v9, "/size="

    invoke-static {v6, v5, v9}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v6}, Lh/n;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") or not instance of MenuItemImpl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_1b
    iget-object v0, p0, Lg4/g;->N:Ld/m;

    iget v0, v0, Ld/m;->a:I

    if-lez v0, :cond_25

    move v0, v2

    move v5, v0

    :goto_12
    iget-object v6, p0, Lg4/g;->N:Ld/m;

    iget v9, v6, Ld/m;->a:I

    if-ge v0, v9, :cond_1f

    iget-object v9, p0, Lg4/g;->G:Lh/n;

    iget-object v6, v6, Ld/m;->b:Ljava/lang/Object;

    check-cast v6, [I

    aget v6, v6, v0

    invoke-virtual {v9, v6}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lh/p;

    if-eqz v6, :cond_1e

    iget-object v9, v6, Lh/p;->e:Ljava/lang/CharSequence;

    if-nez v9, :cond_1c

    iget-object v9, v6, Lh/p;->t:Ljava/lang/CharSequence;

    :cond_1c
    iget-object v10, p0, Lg4/g;->Q:Lh/n;

    iget v11, v6, Lh/p;->a:I

    iget v12, v6, Lh/p;->c:I

    iget v13, v6, Lh/p;->b:I

    invoke-virtual {v10, v13, v11, v12, v9}, Lh/n;->a(IIILjava/lang/CharSequence;)Lh/p;

    move-result-object v9

    invoke-virtual {v6}, Lh/p;->isVisible()Z

    move-result v10

    invoke-virtual {v9, v10}, Lh/p;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v6}, Lh/p;->isEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Lh/p;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v9, p0, Lg4/g;->Q:Lh/n;

    iget-boolean v10, p0, Lg4/g;->m0:Z

    iput-boolean v10, v9, Lh/n;->z:Z

    iget-object v9, v6, Lh/p;->H:Ljava/lang/String;

    if-eqz v9, :cond_1d

    invoke-virtual {v9, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    goto :goto_13

    :cond_1d
    iput-object v9, v6, Lh/p;->H:Ljava/lang/String;

    iget-object v9, v6, Lh/p;->n:Lh/n;

    invoke-virtual {v9, v2}, Lh/n;->p(Z)V

    :goto_13
    invoke-virtual {v6}, Lh/p;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1e

    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1f
    sub-int/2addr v9, v5

    if-lez v9, :cond_25

    iput-boolean v4, p0, Lg4/g;->P:Z

    new-instance v0, Lh/n;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lh/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg4/g;->l0:Lh/n;

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lg4/g;->l0:Lh/n;

    const v6, 0x7f0e0001

    invoke-virtual {v0, v6, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lg4/g;->l0:Lh/n;

    invoke-virtual {v0}, Lh/n;->size()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lg4/g;->l0:Lh/n;

    invoke-virtual {v0, v2}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lh/p;

    if-nez v0, :cond_20

    goto/16 :goto_15

    :cond_20
    iget-object v0, p0, Lg4/g;->l0:Lh/n;

    invoke-virtual {v0, v2}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lh/p;

    invoke-virtual {p0}, Lg4/g;->getViewType()I

    move-result v5

    if-ne v5, v4, :cond_21

    goto :goto_14

    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f12011f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-virtual {v0, v1}, Lh/p;->setTooltipText(Ljava/lang/CharSequence;)Ly/b;

    invoke-virtual {p0, v0, v3}, Lg4/g;->b(Lh/p;Z)Lg4/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lg4/g;->g(Lg4/c;)V

    invoke-virtual {v1, v2}, Lg4/c;->setBadgeType(I)V

    new-instance v0, Lg4/e;

    invoke-direct {v0, p0, v4}, Lg4/e;-><init>(Lg4/g;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120108

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lg4/g;->getViewType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_22

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f070148

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v5, " "

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v6, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060351

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0, v2, v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v0, 0x12

    invoke-virtual {v3, v5, v2, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v3}, Lg4/c;->setLabelImageSpan(Landroid/text/SpannableStringBuilder;)V

    :cond_22
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_24
    :goto_15
    iput-object v1, p0, Lg4/g;->O:Lg4/c;

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    iget-object v3, p0, Lg4/g;->L:Ld/m;

    iget v3, v3, Ld/m;->a:I

    aput-object v1, v0, v3

    iget v0, p0, Lg4/g;->R:I

    add-int/2addr v0, v4

    iput v0, p0, Lg4/g;->R:I

    iget v0, p0, Lg4/g;->T:I

    add-int/2addr v0, v4

    iput v0, p0, Lg4/g;->T:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    iget v0, p0, Lg4/g;->T:I

    iget v1, p0, Lg4/g;->V:I

    if-le v0, v1, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum number of visible items supported by BottomNavigationView is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg4/g;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Current visible count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg4/g;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lg4/g;->V:I

    iput v0, p0, Lg4/g;->R:I

    iput v0, p0, Lg4/g;->T:I

    :cond_26
    :goto_16
    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    array-length v1, v0

    if-ge v2, v1, :cond_27

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lg4/g;->setShowButtonShape(Lg4/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    iget v0, p0, Lg4/g;->V:I

    sub-int/2addr v0, v4

    iget v1, p0, Lg4/g;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lg4/g;->g:I

    iget-object p0, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {p0, v0}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        -0x101009e
    .end array-data
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 10

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010038

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Lt/h;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v4, 0x7f03010f

    invoke-virtual {p0, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lg4/g;->s0:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lg4/g;->r0:[I

    aput-object v8, v5, v3

    sget-object v8, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    invoke-virtual {v1, v6, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    aput v1, v4, v7

    aput p0, v4, v3

    aput v0, v4, v9

    invoke-direct {v2, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public final e(I)Lg4/c;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_3

    array-length v0, p0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid view id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lg4/g;->P:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg4/g;->F:Lg4/i;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lg4/i;->t:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lg4/g;->F:Lg4/i;

    iget-object v0, p0, Lg4/i;->p:Lr3/l;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh/d;->h:Lh/d0;

    if-eqz v1, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg4/i;->p:Lr3/l;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lg4/i;->t:Landroidx/appcompat/widget/i;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lh/z;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lh/z;->j:Lh/g0;

    invoke-virtual {p0}, Lh/g0;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final g(Lg4/c;)V
    .locals 1

    iget v0, p0, Lg4/g;->E:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lg4/g;->E:I

    invoke-static {v0, p0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public getActiveIndicatorLabelPadding()I
    .locals 0

    iget p0, p0, Lg4/g;->w:I

    return p0
.end method

.method public getBackgroundColorDrawable()Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    iget-object p0, p0, Lg4/g;->q0:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public getBadgeDrawables()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lv3/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lg4/g;->t:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lg4/g;->h:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lg4/g;->C:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lg4/g;->x:Z

    return p0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 0

    iget p0, p0, Lg4/g;->z:I

    return p0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 0

    iget p0, p0, Lg4/g;->A:I

    return p0
.end method

.method public getItemActiveIndicatorShapeAppearance()Ll4/k;
    .locals 0

    iget-object p0, p0, Lg4/g;->B:Ll4/k;

    return-object p0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 0

    iget p0, p0, Lg4/g;->y:I

    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg4/g;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getItemBackgroundRes()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lg4/g;->q:I

    return p0
.end method

.method public getItemIconSize()I
    .locals 0

    iget p0, p0, Lg4/g;->i:I

    return p0
.end method

.method public getItemPaddingBottom()I
    .locals 0

    iget p0, p0, Lg4/g;->v:I

    return p0
.end method

.method public getItemPaddingTop()I
    .locals 0

    iget p0, p0, Lg4/g;->u:I

    return p0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lg4/g;->p:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0

    iget p0, p0, Lg4/g;->m:I

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0

    iget p0, p0, Lg4/g;->l:I

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    iget p0, p0, Lg4/g;->d:I

    return p0
.end method

.method public getMenu()Lh/n;
    .locals 0

    iget-object p0, p0, Lg4/g;->G:Lh/n;

    return-object p0
.end method

.method public getOverflowMenu()Lh/n;
    .locals 0

    iget-object p0, p0, Lg4/g;->Q:Lh/n;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget p0, p0, Lg4/g;->f:I

    return p0
.end method

.method public getSelectedItemPosition()I
    .locals 0

    iget p0, p0, Lg4/g;->g:I

    return p0
.end method

.method public getViewType()I
    .locals 0

    iget p0, p0, Lg4/g;->K:I

    return p0
.end method

.method public getViewVisibleItemCount()I
    .locals 0

    iget p0, p0, Lg4/g;->T:I

    return p0
.end method

.method public getVisibleItemCount()I
    .locals 0

    iget p0, p0, Lg4/g;->R:I

    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h(ILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lg4/g;->e(I)Lg4/c;

    move-result-object p1

    if-eqz p1, :cond_3

    const v0, 0x7f090179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090178

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c008f

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    goto :goto_2

    :catch_0
    :goto_1
    move v3, v2

    :goto_2
    if-eqz v3, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_2

    invoke-virtual {p1, v1}, Lg4/c;->setBadgeNumberless(Z)V

    const-string p2, "999+"

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Lg4/c;->setBadgeNumberless(Z)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0, p1}, Lg4/g;->k(Lg4/c;)V

    return-void
.end method

.method public final i(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lg4/g;->e(I)Lg4/c;

    move-result-object p0

    if-eqz p0, :cond_0

    const p1, 0x7f090179

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final j(IZ)V
    .locals 7

    iget-object v0, p0, Lg4/g;->O:Lg4/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lg4/c;->getLabelImageSpan()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070148

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ImageSpan;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ImageSpan;

    if-eqz v2, :cond_1

    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060351

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p1, 0x12

    const/4 p2, 0x1

    invoke-virtual {v0, v2, v4, p2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lg4/g;->O:Lg4/c;

    invoke-virtual {p0, v0}, Lg4/c;->setLabelImageSpan(Landroid/text/SpannableStringBuilder;)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x101009e
        -0x101009e
    .end array-data
.end method

.method public final k(Lg4/c;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060413

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3f99999a    # 1.2f

    cmpl-float v5, v3, v4

    const/4 v6, 0x0

    if-lez v5, :cond_2

    int-to-float v2, v2

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    invoke-virtual {p1}, Lg4/c;->getBadgeType()I

    move-result v2

    const v3, 0x7f06034a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, p0, Lg4/g;->R:I

    iget v5, p0, Lg4/g;->V:I

    if-ne v4, v5, :cond_3

    const v4, 0x7f06034e

    goto :goto_0

    :cond_3
    const v4, 0x7f06034f

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f060345

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v7, 0x7f060344

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1}, Lg4/c;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_4

    move v10, v9

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    :goto_1
    if-nez v8, :cond_5

    move v8, v9

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    :goto_2
    if-eq v2, v9, :cond_7

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const v11, 0x7f0701dc

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v11, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_4

    :cond_7
    :goto_3
    const v6, 0x7f070128

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v6, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move v1, v3

    move v6, v1

    :goto_4
    invoke-virtual {p0}, Lg4/g;->getViewType()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_9

    if-ne v2, v9, :cond_8

    invoke-virtual {p0}, Lg4/g;->getItemIconSize()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v4

    div-int/lit8 v3, v3, 0x2

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    if-ne v2, v9, :cond_a

    add-int/2addr p0, v10

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v8

    div-int/lit8 v3, p1, 0x2

    goto :goto_5

    :cond_a
    if-nez v2, :cond_b

    sub-int/2addr v10, p0

    sub-int/2addr v10, v7

    div-int/lit8 p0, v10, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v8

    div-int/lit8 p1, p1, 0x2

    sub-int v3, p1, v5

    goto :goto_5

    :cond_b
    add-int/2addr p0, v10

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v8

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-le v4, v2, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    sub-int/2addr v2, v4

    add-int/2addr p0, v2

    :cond_c
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v2, v1, :cond_d

    if-eq v4, p0, :cond_e

    :cond_d
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    return-void
.end method

.method public final l()V
    .locals 8

    iget-object v0, p0, Lg4/g;->G:Lh/n;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lg4/g;->e:[Lg4/c;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lg4/g;->L:Ld/m;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lg4/g;->N:Ld/m;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lh/n;->size()I

    move-result v0

    invoke-virtual {p0}, Lg4/g;->f()V

    iget-object v1, p0, Lg4/g;->L:Ld/m;

    iget v1, v1, Ld/m;->a:I

    iget-object v2, p0, Lg4/g;->N:Ld/m;

    iget v2, v2, Ld/m;->a:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lg4/g;->c()V

    return-void

    :cond_1
    iget v0, p0, Lg4/g;->f:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lg4/g;->L:Ld/m;

    iget v4, v3, Ld/m;->a:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lg4/g;->G:Lh/n;

    iget-object v3, v3, Ld/m;->b:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    invoke-virtual {v4, v3}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lg4/g;->f:I

    iput v2, p0, Lg4/g;->g:I

    :cond_2
    instance-of v4, v3, Lh/p;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lh/p;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p0, v5}, Lg4/g;->i(I)V

    iget-object v4, v4, Lh/p;->H:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {p0, v3, v4}, Lg4/g;->h(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v2, p0, Lg4/g;->f:I

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lg4/g;->a:Ld1/a;

    if-eqz v0, :cond_5

    invoke-static {p0, v0}, Ld1/t;->a(Landroid/view/ViewGroup;Ld1/q;)V

    :cond_5
    iget v0, p0, Lg4/g;->d:I

    iget-object v2, p0, Lg4/g;->G:Lh/n;

    invoke-virtual {v2}, Lh/n;->l()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    const/4 v2, 0x1

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    move v3, v1

    :goto_2
    iget-object v4, p0, Lg4/g;->L:Ld/m;

    iget v4, v4, Ld/m;->a:I

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lg4/g;->F:Lg4/i;

    iput-boolean v2, v4, Lg4/i;->l:Z

    iget-object v4, p0, Lg4/g;->e:[Lg4/c;

    aget-object v4, v4, v3

    iget v5, p0, Lg4/g;->d:I

    invoke-virtual {v4, v5}, Lg4/c;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Lg4/g;->e:[Lg4/c;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Lg4/c;->setShifting(Z)V

    iget-object v4, p0, Lg4/g;->e:[Lg4/c;

    aget-object v4, v4, v3

    iget-object v5, p0, Lg4/g;->G:Lh/n;

    iget-object v6, p0, Lg4/g;->L:Ld/m;

    iget-object v6, v6, Ld/m;->b:Ljava/lang/Object;

    check-cast v6, [I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lh/p;

    invoke-virtual {v4, v5}, Lg4/c;->d(Lh/p;)V

    iget-object v4, p0, Lg4/g;->F:Lg4/i;

    iput-boolean v1, v4, Lg4/i;->l:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v0, v1

    move v3, v0

    :goto_3
    iget-object v4, p0, Lg4/g;->N:Ld/m;

    iget v5, v4, Ld/m;->a:I

    if-ge v0, v5, :cond_c

    iget-object v5, p0, Lg4/g;->G:Lh/n;

    iget-object v4, v4, Ld/m;->b:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v0

    invoke-virtual {v5, v4}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    instance-of v5, v4, Lh/p;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lg4/g;->Q:Lh/n;

    if-eqz v5, :cond_b

    move-object v6, v4

    check-cast v6, Lh/p;

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v5, v7}, Lh/n;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    instance-of v7, v5, Lh/p;

    if-eqz v7, :cond_9

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    check-cast v5, Lh/p;

    iget-object v4, v6, Lh/p;->H:Ljava/lang/String;

    iget-object v7, v5, Lh/p;->H:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    iput-object v4, v5, Lh/p;->H:Ljava/lang/String;

    iget-object v4, v5, Lh/p;->n:Lh/n;

    invoke-virtual {v4, v1}, Lh/n;->p(Z)V

    :cond_9
    :goto_4
    iget-object v4, v6, Lh/p;->H:Ljava/lang/String;

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    or-int/2addr v3, v4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    const v0, 0x7f09006d

    if-eqz v3, :cond_d

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lg4/g;->h(ILjava/lang/String;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0, v0}, Lg4/g;->i(I)V

    :cond_e
    :goto_6
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lg4/g;->getViewType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060351

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lg4/g;->setItemIconSize(I)V

    iget-object p1, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, v3, Lg4/c;->t:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06034c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Lg4/c;->h:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_2

    iget v3, v3, Lg4/c;->h:I

    add-int/2addr v4, v3

    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lg4/g;->f()V

    return-void
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 3

    iput p1, p0, Lg4/g;->w:I

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setActiveIndicatorLabelPadding(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBackgroundColorDrawable(Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0

    iput-object p1, p0, Lg4/g;->q0:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public setExclusiveCheckable(Z)V
    .locals 0

    iput-boolean p1, p0, Lg4/g;->o0:Z

    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lg4/g;->m0:Z

    iget-object v0, p0, Lg4/g;->Q:Lh/n;

    if-eqz v0, :cond_0

    iput-boolean p1, v0, Lh/n;->z:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg4/g;->l()V

    :goto_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Lg4/g;->h:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lg4/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lg4/g;->O:Lg4/c;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lg4/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 5

    iput-object p1, p0, Lg4/g;->C:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lg4/g;->B:Ll4/k;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lg4/g;->C:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    new-instance v3, Ll4/h;

    iget-object v4, p0, Lg4/g;->B:Ll4/k;

    invoke-direct {v3, v4}, Ll4/h;-><init>(Ll4/k;)V

    iget-object v4, p0, Lg4/g;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Ll4/h;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lg4/c;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lg4/g;->x:Z

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setActiveIndicatorEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 3

    iput p1, p0, Lg4/g;->z:I

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setActiveIndicatorHeight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 3

    iput p1, p0, Lg4/g;->A:I

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setActiveIndicatorMarginHorizontal(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorResizeable(Z)V
    .locals 3

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setActiveIndicatorResizeable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Ll4/k;)V
    .locals 5

    iput-object p1, p0, Lg4/g;->B:Ll4/k;

    iget-object p1, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lg4/g;->B:Ll4/k;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lg4/g;->C:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    new-instance v3, Ll4/h;

    iget-object v4, p0, Lg4/g;->B:Ll4/k;

    invoke-direct {v3, v4}, Ll4/h;-><init>(Ll4/k;)V

    iget-object v4, p0, Lg4/g;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Ll4/h;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lg4/c;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 3

    iput p1, p0, Lg4/g;->y:I

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setActiveIndicatorWidth(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iput-object p1, p0, Lg4/g;->n:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lg4/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lg4/g;->O:Lg4/c;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lg4/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    iput p1, p0, Lg4/g;->q:I

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lg4/c;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lg4/g;->O:Lg4/c;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lg4/c;->setItemBackground(I)V

    :cond_2
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    iput p1, p0, Lg4/g;->i:I

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lg4/c;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lg4/g;->O:Lg4/c;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lg4/c;->setIconSize(I)V

    :cond_2
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 3

    iput p1, p0, Lg4/g;->v:I

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setItemPaddingBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 3

    iput p1, p0, Lg4/g;->u:I

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setItemPaddingTop(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iput-object p1, p0, Lg4/g;->p:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemStateListAnimator(I)V
    .locals 3

    iput p1, p0, Lg4/g;->E:I

    iget-object p1, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lg4/g;->g(Lg4/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lg4/g;->O:Lg4/c;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lg4/g;->g(Lg4/c;)V

    :cond_2
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    iput p1, p0, Lg4/g;->m:I

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lg4/c;->setTextAppearanceActive(I)V

    iget-object v4, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lg4/g;->O:Lg4/c;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lg4/c;->setTextAppearanceActive(I)V

    iget-object p1, p0, Lg4/g;->O:Lg4/c;

    iget-object p0, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 3

    iget-object p0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg4/c;->setTextAppearanceActiveBoldEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    iput p1, p0, Lg4/g;->l:I

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lg4/c;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lg4/g;->O:Lg4/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lg4/c;->setTextAppearanceInactive(I)V

    iget-object p1, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lg4/g;->O:Lg4/c;

    invoke-virtual {p0, p1}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 5

    iput-object p1, p0, Lg4/g;->j:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lg4/g;->e:[Lg4/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4, p1}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lg4/g;->O:Lg4/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lg4/g;->j(IZ)V

    :cond_2
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    iput p1, p0, Lg4/g;->d:I

    return-void
.end method

.method public setMaxItemCount(I)V
    .locals 0

    iput p1, p0, Lg4/g;->V:I

    return-void
.end method

.method public setOverflowSelectedCallback(Lh/l;)V
    .locals 0

    iput-object p1, p0, Lg4/g;->I:Lh/l;

    return-void
.end method

.method public setPresenter(Lg4/i;)V
    .locals 0

    iput-object p1, p0, Lg4/g;->F:Lg4/i;

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    iput p1, p0, Lg4/g;->K:I

    return-void
.end method
