.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Lg4/n;
.source "SourceFile"


# instance fields
.field public i:Lh/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lg4/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Ls3/a;->d:[I

    const/4 p1, 0x0

    new-array v5, p1, [I

    const v4, 0x7f13042a

    const v3, 0x7f03007f

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lh9/a;->A(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/b3;

    move-result-object p1

    const/4 p2, 0x5

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/b3;->n()V

    invoke-virtual {p0}, Lg4/n;->getMenuView()Lh/d0;

    move-result-object p1

    instance-of p2, p1, Lg4/g;

    if-eqz p2, :cond_1

    check-cast p1, Lg4/g;

    invoke-virtual {p1}, Lg4/g;->getViewType()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06034d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06035b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060418

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMaxItemCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->i:Lh/f;

    if-nez v0, :cond_1

    new-instance v0, Lh/f;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lh/f;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->i:Lh/f;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->i:Lh/f;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->i:Lh/f;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->i:Lh/f;

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lg4/n;->getMenuView()Lh/d0;

    move-result-object v0

    check-cast v0, Lx3/b;

    iget-boolean v1, v0, Lx3/b;->x0:Z

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lx3/b;->setItemHorizontalTranslationEnabled(Z)V

    invoke-virtual {p0}, Lg4/n;->getPresenter()Lg4/i;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg4/i;->e(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lx3/c;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lg4/n;->setOnItemReselectedListener(Lg4/k;)V

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lx3/d;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lg4/n;->setOnItemSelectedListener(Lg4/l;)V

    return-void
.end method
