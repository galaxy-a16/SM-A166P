.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Lr/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lr/c;"
    }
.end annotation


# instance fields
.field public a:Lm4/a;

.field public b:Ll4/h;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Ll4/k;

.field public final e:Lb3/j;

.field public final f:F

.field public g:Z

.field public h:I

.field public i:Li0/d;

.field public j:Z

.field public final k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/ref/WeakReference;

.field public q:Ljava/lang/ref/WeakReference;

.field public r:I

.field public s:Landroid/view/VelocityTracker;

.field public t:I

.field public final u:Ljava/util/LinkedHashSet;

.field public final v:Lm4/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr/c;-><init>()V

    new-instance v0, Lb3/j;

    invoke-direct {v0, p0}, Lb3/j;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lb3/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    new-instance v0, Lm4/b;

    invoke-direct {v0, p0}, Lm4/b;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lm4/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lr/c;-><init>(I)V

    new-instance v1, Lb3/j;

    invoke-direct {v1, p0}, Lb3/j;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lb3/j;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const v3, 0x3dcccccd    # 0.1f

    iput v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    new-instance v4, Lm4/b;

    invoke-direct {v4, p0}, Lm4/b;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lm4/b;

    sget-object v4, Ls3/a;->G:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1, v4, v5}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f1304c6

    invoke-static {p1, p2, v0, v5}, Ll4/k;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Ln2/h;

    move-result-object p2

    .line 2
    new-instance v0, Ll4/k;

    invoke-direct {v0, p2}, Ll4/k;-><init>(Ln2/h;)V

    .line 3
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Ll4/k;

    :cond_1
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4
    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 5
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    .line 6
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq p2, v3, :cond_3

    sget-object p2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {v0}, Landroidx/core/view/l0;->c(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Ll4/k;

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ll4/h;

    invoke-direct {v0, p2}, Ll4/h;-><init>(Ll4/k;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Ll4/h;

    invoke-virtual {v0, p1}, Ll4/h;->i(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Ll4/h;

    invoke-virtual {v0, p2}, Ll4/h;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_5
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x1010031

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Ll4/h;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p2}, Ll4/h;->setTint(I)V

    :goto_0
    const/4 p2, 0x2

    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    invoke-virtual {v4, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:F

    const/4 p2, 0x4

    invoke-virtual {v4, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 11
    iput-boolean p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    .line 12
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    return-void
.end method


# virtual methods
.method public final d(Lr/f;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    return-void
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Landroidx/core/view/x0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    return v1

    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    :cond_3
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    if-nez p2, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    :cond_4
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    invoke-virtual {p2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    return v1

    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p3}, Li0/d;->r(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    return v0
.end method

.method public final i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v5}, Ld0/a;->b(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    const v6, 0x7f03034b

    invoke-static {v0, v6, v5}, Lcom/fasterxml/jackson/annotation/i0;->D(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    const v5, 0x7f03033a

    const/16 v6, 0x12c

    invoke-static {v0, v5, v6}, Lcom/fasterxml/jackson/annotation/i0;->C(Landroid/content/Context;II)I

    const v5, 0x7f03033f

    const/16 v6, 0x96

    invoke-static {v0, v5, v6}, Lcom/fasterxml/jackson/annotation/i0;->C(Landroid/content/Context;II)I

    const v5, 0x7f03033e

    const/16 v6, 0x64

    invoke-static {v0, v5, v6}, Lcom/fasterxml/jackson/annotation/i0;->C(Landroid/content/Context;II)I

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f060079

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    const v5, 0x7f060078

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    const v5, 0x7f06007a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Ll4/h;

    if-eqz v0, :cond_2

    invoke-static {p2, v0}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Ll4/h;

    iget v5, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    invoke-static {p2}, Landroidx/core/view/o0;->i(Landroid/view/View;)F

    move-result v5

    :cond_1
    invoke-virtual {v0, v5}, Ll4/h;->j(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-static {p2, v0}, Landroidx/core/view/o0;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_0
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v0, :cond_5

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w()V

    invoke-static {p2}, Landroidx/core/view/i0;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2, v1}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    :cond_6
    invoke-static {p2}, Landroidx/core/view/x0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f120134

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/view/x0;->h(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lr/f;

    iget v0, v0, Lr/f;->c:I

    invoke-static {v0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v3

    :goto_2
    iget-object v6, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lm4/a;->E()I

    move-result v6

    if-eq v6, v0, :cond_d

    :cond_9
    iget-object v6, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Ll4/k;

    if-nez v0, :cond_b

    new-instance v0, Lm4/a;

    invoke-direct {v0, p0, v1}, Lm4/a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t()Lr/f;

    move-result-object v0

    if-eqz v0, :cond_a

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-lez v0, :cond_a

    move v0, v1

    goto :goto_3

    :cond_a
    move v0, v3

    :goto_3
    if-nez v0, :cond_d

    new-instance v0, Ln2/h;

    invoke-direct {v0, v6}, Ln2/h;-><init>(Ll4/k;)V

    new-instance v6, Ll4/a;

    invoke-direct {v6, v4}, Ll4/a;-><init>(F)V

    iput-object v6, v0, Ln2/h;->f:Ljava/lang/Object;

    new-instance v6, Ll4/a;

    invoke-direct {v6, v4}, Ll4/a;-><init>(F)V

    iput-object v6, v0, Ln2/h;->g:Ljava/lang/Object;

    goto :goto_5

    :cond_b
    if-ne v0, v1, :cond_15

    new-instance v0, Lm4/a;

    invoke-direct {v0, p0, v3}, Lm4/a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t()Lr/f;

    move-result-object v0

    if-eqz v0, :cond_c

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lez v0, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v3

    :goto_4
    if-nez v0, :cond_d

    new-instance v0, Ln2/h;

    invoke-direct {v0, v6}, Ln2/h;-><init>(Ll4/k;)V

    new-instance v6, Ll4/a;

    invoke-direct {v6, v4}, Ll4/a;-><init>(F)V

    iput-object v6, v0, Ln2/h;->e:Ljava/lang/Object;

    new-instance v6, Ll4/a;

    invoke-direct {v6, v4}, Ll4/a;-><init>(F)V

    iput-object v6, v0, Ln2/h;->h:Ljava/lang/Object;

    :goto_5
    new-instance v4, Ll4/k;

    invoke-direct {v4, v0}, Ll4/k;-><init>(Ln2/h;)V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Ll4/h;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v4}, Ll4/h;->setShapeAppearanceModel(Ll4/k;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    if-nez v0, :cond_e

    new-instance v0, Li0/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lm4/b;

    invoke-direct {v0, v4, p1, v6}, Li0/d;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lp1/f;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    :cond_e
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {v0, p2}, Lm4/a;->C(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {p3, p1}, Lm4/a;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_f

    iget-object v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {v4, p3}, Lm4/a;->y(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p3

    goto :goto_6

    :cond_f
    move p3, v3

    :goto_6
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    iget p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    if-eq p3, v1, :cond_11

    const/4 v4, 0x2

    if-eq p3, v4, :cond_11

    if-eq p3, v5, :cond_12

    if-ne p3, v2, :cond_10

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {p3}, Lm4/a;->B()I

    move-result v3

    goto :goto_7

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {p3, p2}, Lm4/a;->C(Landroid/view/View;)I

    move-result p3

    sub-int v3, v0, p3

    :cond_12
    :goto_7
    invoke-virtual {p2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_13

    iget p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_13

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_13

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    :cond_13
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    goto :goto_8

    :cond_14
    return v1

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid sheet edge position value: "

    const-string p2, ". Must be 0 or 1."

    invoke-static {p1, v0, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    add-int/2addr v1, p4

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p3, v1, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, p4

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p4

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, 0x0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p5, p1, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/View;->measure(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final o(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p2, Lm4/c;

    const/4 p1, 0x1

    iget p2, p2, Lm4/c;->c:I

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p2, 0x5

    :cond_1
    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    return-void
.end method

.method public final p(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    new-instance p1, Lm4/c;

    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-direct {p1, v0, p0}, Lm4/c;-><init>(Landroid/view/AbsSavedState;Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    return-object p1
.end method

.method public final s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    if-nez v4, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v3, p3}, Li0/d;->k(Landroid/view/MotionEvent;)V

    :cond_4
    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    if-nez v1, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    if-eqz v1, :cond_8

    iget-boolean v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    if-ne v3, v2, :cond_8

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    move v3, v0

    :goto_1
    if-eqz v3, :cond_d

    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    if-nez p1, :cond_d

    if-eqz v1, :cond_a

    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    if-nez p1, :cond_9

    iget p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    if-ne p1, v2, :cond_a

    :cond_9
    move p1, v2

    goto :goto_2

    :cond_a
    move p1, v0

    :goto_2
    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    iget p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    iget v1, v1, Li0/d;->b:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_c

    move v0, v2

    :cond_c
    :goto_3
    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Li0/d;->b(Landroid/view/View;I)V

    :cond_d
    iget-boolean p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    xor-int/2addr p0, v2

    return p0
.end method

.method public final t()Lr/f;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lr/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lr/f;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final u(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w()V

    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final v(Landroid/view/View;IZ)V
    .locals 3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {v0}, Lm4/a;->B()I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid state to get outer edge offset: "

    invoke-static {p1, p2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {v0}, Lm4/a;->A()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Li0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Li0/d;->q(II)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iput-object p1, v1, Li0/d;->r:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, v1, Li0/d;->c:I

    invoke-virtual {v1, v0, p3, v2, v2}, Li0/d;->i(IIII)Z

    move-result p1

    if-nez p1, :cond_3

    iget p3, v1, Li0/d;->a:I

    if-nez p3, :cond_3

    iget-object p3, v1, Li0/d;->r:Landroid/view/View;

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    iput-object p3, v1, Li0/d;->r:Landroid/view/View;

    :cond_3
    if-eqz p1, :cond_4

    :goto_1
    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u(I)V

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lb3/j;

    invoke-virtual {p0, p2}, Lb3/j;->a(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u(I)V

    :goto_2
    return-void
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroidx/core/view/x0;->e(Landroid/view/View;I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/x0;->d(Landroid/view/View;I)V

    const/high16 v2, 0x100000

    invoke-static {v0, v2}, Landroidx/core/view/x0;->e(Landroid/view/View;I)V

    invoke-static {v0, v1}, Landroidx/core/view/x0;->d(Landroid/view/View;I)V

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    sget-object v1, Lc0/f;->j:Lc0/f;

    new-instance v3, La5/a;

    invoke-direct {v3, p0, v2}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1, v3}, Landroidx/core/view/x0;->f(Landroid/view/View;Lc0/f;Lc0/y;)V

    :cond_2
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    sget-object v1, Lc0/f;->h:Lc0/f;

    new-instance v3, La5/a;

    invoke-direct {v3, p0, v2}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1, v3}, Landroidx/core/view/x0;->f(Landroid/view/View;Lc0/f;Lc0/y;)V

    :cond_3
    return-void
.end method
