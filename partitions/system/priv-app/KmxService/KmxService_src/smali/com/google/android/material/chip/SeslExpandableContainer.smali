.class public Lcom/google/android/material/chip/SeslExpandableContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public final a:Landroid/widget/HorizontalScrollView;

.field public final b:Landroid/widget/LinearLayout;

.field public final c:Lc4/x;

.field public final d:Landroid/view/View;

.field public e:Z

.field public final f:I

.field public final g:Z

.field public h:I

.field public i:Z

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->g:Z

    iput p2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->h:I

    iput-boolean v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->j:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget v3, Lb0/l;->a:I

    invoke-static {v2}, Lb0/k;->a(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->k:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0085

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901fe

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    iput-object v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->a:Landroid/widget/HorizontalScrollView;

    new-instance v5, Lc4/s;

    invoke-direct {v5, p0}, Lc4/s;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const v4, 0x7f0901ff

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->b:Landroid/widget/LinearLayout;

    const v4, 0x7f0901fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->d:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->f:I

    new-instance v4, Lc4/x;

    invoke-direct {v4, p1}, Lc4/x;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, p2, v6, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f07012d

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f07012e

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v1}, Lc4/x;->setAutomaticDisappear(Z)V

    invoke-virtual {v4, p2}, Lc4/x;->setExpanded(Z)V

    invoke-virtual {v4, v1}, Lc4/x;->setFloated(Z)V

    const/16 p2, 0x8

    invoke-virtual {v4, p2}, Lc4/x;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    if-eqz v2, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->e:Z

    iget-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->d:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->k:Z

    iget-object v3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    iget-object v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->a:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->b:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v3, v7}, Lc4/x;->setAutomaticDisappear(Z)V

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->h:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v8, v0, [Landroid/view/View;

    move v9, v7

    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    move v2, v7

    move v9, v2

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v10, v8, v2

    iget-boolean v11, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->g:Z

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v12

    if-ne v11, v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v9, v6

    move v6, v11

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {v4, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_a

    if-lez v9, :cond_a

    invoke-virtual {v3, v7}, Lc4/x;->setVisibility(I)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v8, 0x2

    if-le v0, v8, :cond_a

    invoke-virtual {v3, v6}, Lc4/x;->setAutomaticDisappear(Z)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v3, v0, [Landroid/view/View;

    move v8, v7

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_6
    move v2, v7

    move v8, v2

    :goto_4
    if-ge v2, v0, :cond_9

    aget-object v9, v3, v2

    iget-boolean v10, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->i:Z

    if-nez v10, :cond_7

    instance-of v10, v9, Lcom/google/android/material/chip/SeslChipGroup;

    if-eqz v10, :cond_7

    move-object v10, v9

    check-cast v10, Lcom/google/android/material/chip/SeslChipGroup;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/material/chip/SeslChipGroup;->setMaxChipWidth(I)V

    iput-boolean v6, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->i:Z

    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v11

    if-eq v10, v11, :cond_8

    iget v11, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->f:I

    if-eq v10, v11, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v11

    if-eq v10, v11, :cond_8

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v5, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move v8, v10

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->h:I

    invoke-virtual {v4, v0, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->c()V

    :cond_a
    :goto_5
    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lc4/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/u;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c()V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->getScrollContentsWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    iget-boolean v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->g:Z

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    sub-int v3, v0, v3

    if-gt v3, v1, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    if-le v0, v1, :cond_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {v6, v5}, Lc4/x;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->b()V

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    invoke-virtual {v6, v4}, Lc4/x;->setVisibility(I)V

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->j:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    if-eqz v7, :cond_b

    iget-boolean v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->k:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->getPaddingView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_8

    :cond_7
    if-nez v2, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->getScrollContentsWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr v2, p0

    if-ge v0, v2, :cond_9

    :cond_8
    move p0, v1

    goto :goto_3

    :cond_9
    move p0, v5

    :goto_3
    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v6, v5}, Lc4/x;->setFloated(Z)V

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {v6, v1}, Lc4/x;->setFloated(Z)V

    :cond_c
    :goto_5
    return-void
.end method

.method public getExpansionButton()Lc4/x;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    return-object p0
.end method

.method public getPaddingView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->d:Landroid/view/View;

    return-object p0
.end method

.method public getScrollContentsWidth()I
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    instance-of v3, v2, Lcom/google/android/material/chip/SeslChipGroup;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/google/android/material/chip/SeslChipGroup;

    invoke-virtual {v2}, Lcom/google/android/material/chip/SeslChipGroup;->getTotalWidth()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_1
    add-int/2addr v2, v0

    move v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->a()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->e:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->a()V

    new-instance v0, Lc4/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/t;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "expansion state: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslExpandableContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setExpansionBackGroundImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p0, "SeslExpandableContainer"

    const-string p1, "expansion button background changed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setExpansionImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p0, "SeslExpandableContainer"

    const-string p1, "expansion button image changed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnExpansionButtonClickedListener(Lc4/v;)V
    .locals 0

    return-void
.end method
