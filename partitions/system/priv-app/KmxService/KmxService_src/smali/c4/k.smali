.class public abstract Lc4/k;
.super Lcom/google/android/material/internal/e;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:Lc4/i;

.field public final g:Lcom/google/android/material/internal/a;

.field public final h:I

.field public final i:Lc4/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const v0, 0x7f0300c1

    const v1, 0x7f130509

    invoke-static {p1, p2, v0, v1}, Lv9/a;->g0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/material/internal/a;

    invoke-direct {p1}, Lcom/google/android/material/internal/a;-><init>()V

    iput-object p1, p0, Lc4/k;->g:Lcom/google/android/material/internal/a;

    new-instance v0, Lc4/j;

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/chip/SeslChipGroup;

    invoke-direct {v0, v1}, Lc4/j;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    iput-object v0, p0, Lc4/k;->i:Lc4/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Ls3/a;->h:[I

    const v6, 0x7f130509

    const/4 v1, 0x0

    new-array v7, v1, [I

    const v5, 0x7f0300c1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lh9/a;->z(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lc4/k;->setChipSpacingHorizontal(I)V

    const/4 v4, 0x3

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lc4/k;->setChipSpacingVertical(I)V

    const/4 v3, 0x5

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lc4/k;->setSingleLine(Z)V

    const/4 v3, 0x6

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lc4/k;->setSingleSelection(Z)V

    const/4 v3, 0x4

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lc4/k;->setSelectionRequired(Z)V

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lc4/k;->h:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lf9/b;

    const/16 v1, 0x14

    invoke-direct {p2, p0, v1}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p1, Lcom/google/android/material/internal/a;->e:Ljava/lang/Object;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v2}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    return-void
.end method

.method private getVisibleChipCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lc4/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lc4/g;

    invoke-direct {p0}, Lc4/g;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lc4/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lc4/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lc4/g;

    invoke-direct {p0, p1}, Lc4/g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCheckedChipId()I
    .locals 0

    iget-object p0, p0, Lc4/k;->g:Lcom/google/android/material/internal/a;

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->d()I

    move-result p0

    return p0
.end method

.method public getCheckedChipIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc4/k;->g:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/a;->c(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getChipSpacingHorizontal()I
    .locals 0

    iget p0, p0, Lc4/k;->d:I

    return p0
.end method

.method public getChipSpacingVertical()I
    .locals 0

    iget p0, p0, Lc4/k;->e:I

    return p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, -0x1

    iget v1, p0, Lc4/k;->h:I

    if-eq v1, v0, :cond_1

    iget-object p0, p0, Lc4/k;->g:Lcom/google/android/material/internal/a;

    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/h;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/a;->b(Lcom/google/android/material/internal/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/google/android/material/internal/e;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc4/k;->getVisibleChipCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/e;->getRowCount()I

    move-result v1

    iget-object p0, p0, Lc4/k;->g:Lcom/google/android/material/internal/a;

    iget-boolean p0, p0, Lcom/google/android/material/internal/a;->a:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lc4/k;->setChipSpacingHorizontal(I)V

    invoke-virtual {p0, p1}, Lc4/k;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1

    iget v0, p0, Lc4/k;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lc4/k;->d:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->setItemSpacing(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lc4/k;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lc4/k;->setChipSpacing(I)V

    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1

    iget v0, p0, Lc4/k;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lc4/k;->e:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/e;->setLineSpacing(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lc4/k;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFlexWrap(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnCheckedChangeListener(Lc4/h;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc4/k;->setOnCheckedStateChangeListener(Lc4/i;)V

    return-void

    :cond_0
    new-instance v0, Lp1/e;

    const/16 v1, 0xc

    invoke-direct {v0, p0, p1, v1}, Lp1/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lc4/k;->setOnCheckedStateChangeListener(Lc4/i;)V

    return-void
.end method

.method public setOnCheckedStateChangeListener(Lc4/i;)V
    .locals 0

    iput-object p1, p0, Lc4/k;->f:Lc4/i;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iget-object p0, p0, Lc4/k;->i:Lc4/j;

    iput-object p1, p0, Lc4/j;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0

    iget-object p0, p0, Lc4/k;->g:Lcom/google/android/material/internal/a;

    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->b:Z

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShowDividerVertical(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSingleLine(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lc4/k;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/internal/e;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lc4/k;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 3

    .line 2
    iget-object p0, p0, Lc4/k;->g:Lcom/google/android/material/internal/a;

    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->a:Z

    if-eq v0, p1, :cond_1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->a:Z

    .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/a;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/h;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/internal/a;->g(Lcom/google/android/material/internal/h;Z)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->e()V

    :cond_1
    return-void
.end method
