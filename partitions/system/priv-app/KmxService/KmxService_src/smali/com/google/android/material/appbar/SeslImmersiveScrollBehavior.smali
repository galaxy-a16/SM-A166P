.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "SourceFile"


# instance fields
.field public D:Lcom/google/android/material/appbar/AppBarLayout;

.field public E:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public F:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public G:Landroid/content/Context;

.field public H:Landroid/view/View;

.field public I:Landroid/view/View;

.field public J:Landroid/view/View;

.field public K:Landroid/view/View;

.field public L:Landroid/view/View;

.field public M:Landroid/view/View;

.field public N:I

.field public O:I

.field public P:F

.field public Q:Z

.field public R:Z

.field public S:Landroid/os/CancellationSignal;

.field public T:Landroid/view/WindowInsetsAnimationController;

.field public U:Landroid/view/WindowInsetsController;

.field public V:Lu3/k;

.field public W:Landroid/view/WindowInsets;

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public final a0:Z

.field public b0:I

.field public c0:Landroid/animation/ValueAnimator;

.field public d0:I

.field public e0:Z

.field public f0:Z

.field public final g0:Lp0/a;

.field public final h0:Lu3/g;

.field public final i0:Lu3/l;

.field public final j0:Lu3/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->P:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V:Lu3/k;

    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Z:Z

    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->a0:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->e0:Z

    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->f0:Z

    new-instance p2, Lp0/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p2, p0, v0, v1}, Lp0/a;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->g0:Lp0/a;

    new-instance p2, Lu3/g;

    invoke-direct {p2, p0}, Lu3/g;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->h0:Lu3/g;

    new-instance p2, Lu3/l;

    invoke-direct {p2, p0}, Lu3/l;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->i0:Lu3/l;

    new-instance p2, Lu3/m;

    invoke-direct {p2, p0}, Lu3/m;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->j0:Lu3/m;

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->a0()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Y()V

    return-void
.end method

.method public static T(Landroid/view/WindowInsets;)Z
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O()Z

    invoke-super/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z

    move-result p0

    return p0
.end method

.method public final D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->L:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    aput p4, p6, p0

    const/4 p0, 0x1

    aput p5, p6, p0

    return-void

    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public final E(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->L:Landroid/view/View;

    invoke-super/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->E(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 8

    iput-object p4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->L:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S:Landroid/os/CancellationSignal;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S:Landroid/os/CancellationSignal;

    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    invoke-static {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T(Landroid/view/WindowInsets;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->hide(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "SeslImmersiveScrollBehavior"

    const-string v1, "startAnimationControlRequest: mWindowInsetsController.hide failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S:Landroid/os/CancellationSignal;

    iget-object v7, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->i0:Lu3/l;

    invoke-interface/range {v1 .. v7}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    :cond_4
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public final G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->L:Landroid/view/View;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final M()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getIsMouse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V(ZZ)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :goto_0
    const-string v2, "SeslImmersiveScrollBehavior"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "Disable ImmersiveScroll due to accessibility enabled"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Z()Z

    invoke-virtual {p0, v1, v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V(ZZ)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v4, v0, Lcom/google/android/material/appbar/AppBarLayout;->l0:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V(ZZ)V

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "config_navBarCanMove"

    const-string v5, "bool"

    const-string v6, "android"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR, e : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Z()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    if-eqz v2, :cond_6

    invoke-static {v2}, Lh3/a;->l(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lh3/a;->l(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    iget-boolean v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Y:Z

    if-eq v4, v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N()V

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Y:Z

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    return v1

    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->m0:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N()V

    :cond_8
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V(ZZ)V

    :cond_9
    return v1
.end method

.method public final N()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Z

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S:Landroid/os/CancellationSignal;

    iput-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Z

    return-void
.end method

.method public final O()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->V:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Y()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->a0()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final P()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lr/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lr/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->a0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Q(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->show(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "SeslImmersiveScrollBehavior"

    const-string p1, "forceRestoreWindowInset: mWindowInsetsController.show failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final R()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final S()Z
    .locals 5

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/res/Configuration;

    const-string v3, "hidden_semDesktopModeEnabled"

    invoke-static {v2, v3, v1}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v3

    :goto_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    const-string v1, "hidden_SEM_DESKTOP_MODE_ENABLED"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v2, v1, v4}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_3
    instance-of v1, v3, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    if-ne p0, v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public final U()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public final V(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q:Z

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q(Z)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X(Z)V

    iget-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setCanScroll(Z)V

    :cond_0
    return-void
.end method

.method public final W(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Restore top and bottom areas [Animate] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslImmersiveScrollBehavior"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Z:Z

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->g0:Lp0/a;

    const/16 v1, 0x64

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->l0:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method public final X(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-static {v0}, Lh3/a;->l(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh3/a;->l(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T(Landroid/view/WindowInsets;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setImmersiveTopInset(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N:I

    invoke-virtual {p1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setImmersiveTopInset(I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    if-eqz p1, :cond_9

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->top:I

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N:I

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setImmersiveTopInset(I)V

    goto/16 :goto_4

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setImmersiveTopInset(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getCurrentOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    move v0, p1

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_8

    move v1, p1

    :cond_8
    if-eqz v1, :cond_9

    :try_start_0
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string p0, "SeslImmersiveScrollBehavior"

    const-string p1, "setupDecorsFitSystemWindowState: mWindowInsetsController.hide failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method

.method public final Y()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lv/p;->a:Ljava/lang/ThreadLocal;

    const v1, 0x7f060332

    invoke-static {v0, v1}, Lv/k;->a(Landroid/content/res/Resources;I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q:Z

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->G:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->n()V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->G:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final Z()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getCurrentOrientation()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->d0:I

    const/4 v3, 0x1

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->d0:I

    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q(Z)V

    iput-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->f0:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    const-string p0, "SeslImmersiveScrollBehavior"

    const-string v0, "ERROR, e : AppbarLayout Configuration is wrong"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R:Z

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_1

    iput-boolean v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->R:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O()Z

    :cond_1
    return-void
.end method

.method public final a0()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N:I

    :cond_1
    const-string v1, "navigation_bar_height"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    :cond_3
    return-void
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R:Z

    iput-boolean v0, p2, Lcom/google/android/material/appbar/AppBarLayout;->R:Z

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lu3/i;->h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public final bridge synthetic m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->E(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V:Lu3/k;

    if-nez v0, :cond_0

    new-instance v0, Lu3/k;

    invoke-direct {v0, p0}, Lu3/k;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V:Lu3/k;

    invoke-interface {p3, v0}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p3, :cond_1

    if-ne p2, p3, :cond_1

    goto :goto_2

    :cond_1
    const-string p3, "initImmViews mNeedInit=false"

    const-string v0, "SeslImmersiveScrollBehavior"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q:Z

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->E:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->h0:Lu3/g;

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->b(Lu3/d;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->m0:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->d()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->j0:Lu3/m;

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->P()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O()Z

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_5

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->F:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->F:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    goto :goto_1

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const p2, 0x7f09006a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    :cond_7
    :goto_2
    return-void
.end method
