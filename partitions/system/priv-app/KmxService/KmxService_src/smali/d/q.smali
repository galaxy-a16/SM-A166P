.class public abstract Ld/q;
.super Landroidx/fragment/app/g0;
.source "SourceFile"

# interfaces
.implements Ld/r;
.implements Lt/q0;


# static fields
.field private static final DELEGATE_TAG:Ljava/lang/String; = "androidx:appcompat"


# instance fields
.field private mDelegate:Ld/u;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/g0;-><init>()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object v0

    new-instance v1, Ld/o;

    invoke-direct {v1, p0}, Ld/o;-><init>(Ld/q;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/d;->c(Ljava/lang/String;Landroidx/savedstate/c;)V

    new-instance v0, Ld/p;

    invoke-direct {v0, p0}, Ld/p;-><init>(Ld/q;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/d;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Ld/q;->d()V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ld/u;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object v0

    check-cast v0, Ld/j0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/j0;->T:Z

    const/16 v2, -0x64

    iget v3, v0, Ld/j0;->Z:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Ld/u;->b:I

    :goto_0
    invoke-virtual {v0, p1, v3}, Ld/j0;->E(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1}, Ld/u;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Ld/u;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Landroidx/core/os/b;->a:I

    sget-boolean v2, Ld/u;->d:Z

    if-nez v2, :cond_2

    new-instance v2, Ld/e;

    invoke-direct {v2, p1, v1}, Ld/e;-><init>(Ljava/lang/Object;I)V

    sget-object v3, Ld/u;->a:Ld/q0;

    invoke-virtual {v3, v2}, Ld/q0;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    sget-boolean v2, Ld/j0;->D0:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_3

    invoke-static {p1, v0, v4, v3}, Ld/j0;->v(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_0
    move-object v5, p1

    check-cast v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v5, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    :cond_3
    instance-of v2, p1, Lg/f;

    if-eqz v2, :cond_4

    invoke-static {p1, v0, v4, v3}, Ld/j0;->v(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_1
    move-object v5, p1

    check-cast v5, Lg/f;

    invoke-virtual {v5, v2}, Lg/f;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    :cond_4
    sget-boolean v2, Ld/j0;->C0:Z

    if-nez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v5, -0x1

    iput v5, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x0

    iput v5, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_1b

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput v5, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_2

    :cond_6
    iget v5, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v7, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_7

    iput v7, v4, Landroid/content/res/Configuration;->fontScale:F

    :cond_7
    iget v5, v2, Landroid/content/res/Configuration;->mcc:I

    iget v7, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v5, v7, :cond_8

    iput v7, v4, Landroid/content/res/Configuration;->mcc:I

    :cond_8
    iget v5, v2, Landroid/content/res/Configuration;->mnc:I

    iget v7, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v5, v7, :cond_9

    iput v7, v4, Landroid/content/res/Configuration;->mnc:I

    :cond_9
    invoke-static {v2, v6, v4}, Ld/a0;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v5, v2, Landroid/content/res/Configuration;->touchscreen:I

    iget v7, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v5, v7, :cond_a

    iput v7, v4, Landroid/content/res/Configuration;->touchscreen:I

    :cond_a
    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    iget v7, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v7, :cond_b

    iput v7, v4, Landroid/content/res/Configuration;->keyboard:I

    :cond_b
    iget v5, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v7, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v5, v7, :cond_c

    iput v7, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_c
    iget v5, v2, Landroid/content/res/Configuration;->navigation:I

    iget v7, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v5, v7, :cond_d

    iput v7, v4, Landroid/content/res/Configuration;->navigation:I

    :cond_d
    iget v5, v2, Landroid/content/res/Configuration;->navigationHidden:I

    iget v7, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v5, v7, :cond_e

    iput v7, v4, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_e
    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    iget v7, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v7, :cond_f

    iput v7, v4, Landroid/content/res/Configuration;->orientation:I

    :cond_f
    iget v5, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    if-eq v5, v7, :cond_10

    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v5, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0xc0

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0xc0

    if-eq v5, v7, :cond_11

    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v5, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x30

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    if-eq v5, v7, :cond_12

    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v5, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0x300

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0x300

    if-eq v5, v7, :cond_13

    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    iget v5, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0x3

    if-eq v5, v7, :cond_14

    iget v5, v4, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/res/Configuration;->colorMode:I

    :cond_14
    iget v5, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0xc

    if-eq v5, v7, :cond_15

    iget v5, v4, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/res/Configuration;->colorMode:I

    :cond_15
    iget v5, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xf

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0xf

    if-eq v5, v7, :cond_16

    iget v5, v4, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/res/Configuration;->uiMode:I

    :cond_16
    iget v5, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    if-eq v5, v7, :cond_17

    iget v5, v4, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v5, v7

    iput v5, v4, Landroid/content/res/Configuration;->uiMode:I

    :cond_17
    iget v5, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v5, v7, :cond_18

    iput v7, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_18
    iget v5, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v5, v7, :cond_19

    iput v7, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_19
    iget v5, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v5, v7, :cond_1a

    iput v7, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1a
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v5, :cond_1b

    iput v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1b
    :goto_2
    invoke-static {p1, v0, v4, v1}, Ld/j0;->v(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v2, Lg/f;

    const v4, 0x7f1302d5

    invoke-direct {v2, p1, v4}, Lg/f;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Lg/f;->a(Landroid/content/res/Configuration;)V

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1c

    goto :goto_3

    :cond_1c
    move v1, v3

    :goto_3
    move v3, v1

    :catch_2
    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Lv/o;->a(Landroid/content/res/Resources$Theme;)V

    :cond_1d
    move-object p1, v2

    :goto_4
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Ld/q;->getSupportActionBar()Ld/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lva/n;->L(Landroid/view/View;Landroidx/lifecycle/z;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f09027c

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lh3/a;->M(Landroid/view/View;Landroidx/savedstate/f;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lv9/a;->b0(Landroid/view/View;Landroidx/activity/z;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Ld/q;->getSupportActionBar()Ld/b;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ld/b;->j(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lt/m;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    invoke-virtual {p0}, Ld/j0;->y()V

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate()Ld/u;
    .locals 2

    iget-object v0, p0, Ld/q;->mDelegate:Ld/u;

    if-nez v0, :cond_0

    sget-object v0, Ld/u;->a:Ld/q0;

    new-instance v0, Ld/j0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Ld/j0;-><init>(Landroid/content/Context;Landroid/view/Window;Ld/r;Ljava/lang/Object;)V

    iput-object v0, p0, Ld/q;->mDelegate:Ld/u;

    :cond_0
    iget-object p0, p0, Ld/q;->mDelegate:Ld/u;

    return-object p0
.end method

.method public getDrawerToggleDelegate()Ld/c;
    .locals 1

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ld/w;

    invoke-direct {v0, p0}, Ld/w;-><init>(Ld/j0;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    iget-object v0, p0, Ld/j0;->n:Lg/k;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld/j0;->D()V

    new-instance v0, Lg/k;

    iget-object v1, p0, Ld/j0;->m:Ld/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ld/b;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld/j0;->i:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lg/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld/j0;->n:Lg/k;

    :cond_1
    iget-object p0, p0, Ld/j0;->n:Lg/k;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Ld/q;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget v1, Landroidx/appcompat/widget/v4;->a:I

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Ld/b;
    .locals 0

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    invoke-virtual {p0}, Ld/j0;->D()V

    iget-object p0, p0, Ld/j0;->m:Ld/b;

    return-object p0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/internal/m;->g(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0}, Ld/u;->c()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p1

    check-cast p1, Ld/j0;

    iget-boolean v0, p1, Ld/j0;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Ld/j0;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ld/j0;->D()V

    iget-object v0, p1, Ld/j0;->m:Ld/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b;->g()V

    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/z;->a()Landroidx/appcompat/widget/z;

    move-result-object v0

    iget-object v1, p1, Ld/j0;->i:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/l2;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Landroidx/appcompat/widget/l2;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ll/d;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Ld/j0;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Ld/j0;->Y:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld/j0;->q(ZZ)Z

    iget-object p1, p0, Ld/q;->mResources:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object p0, p0, Ld/q;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Ld/q;->onSupportContentChanged()V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Lt/r0;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lt/q0;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/m;->g(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    iget-object v1, p1, Lt/r0;->b:Landroid/content/Context;

    if-nez p0, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    :cond_1
    iget-object p1, p1, Lt/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    :try_start_0
    invoke-static {v1, p0}, Lkotlin/jvm/internal/m;->h(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->h(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v4}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p1, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_2
    const-string p1, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/g0;->onDestroy()V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0}, Ld/u;->g()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLocalesChanged(Landroidx/core/os/j;)V
    .locals 0

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/g0;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ld/q;->getSupportActionBar()Ld/b;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ld/b;->d()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ld/q;->onSupportNavigateUp()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onNightModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    invoke-virtual {p0}, Ld/j0;->y()V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/g0;->onPostResume()V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    invoke-virtual {p0}, Ld/j0;->D()V

    iget-object p0, p0, Ld/j0;->m:Ld/b;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/b;->n(Z)V

    :cond_0
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lt/r0;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/g0;->onStart()V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ld/j0;->q(ZZ)Z

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/g0;->onStop()V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0}, Ld/u;->h()V

    return-void
.end method

.method public onSupportActionModeFinished(Lg/c;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Lg/c;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 5

    invoke-virtual {p0}, Ld/q;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ld/q;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lt/r0;

    invoke-direct {v0, p0}, Lt/r0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ld/q;->onCreateSupportNavigateUpTaskStack(Lt/r0;)V

    invoke-virtual {p0, v0}, Ld/q;->onPrepareSupportNavigateUpTaskStack(Lt/r0;)V

    iget-object v2, v0, Lt/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v1, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x1000c000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v1, Lt/h;->a:Ljava/lang/Object;

    iget-object v0, v0, Lt/r0;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lu/a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {p0}, Lt/b;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, v0}, Ld/q;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/u;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lg/b;)Lg/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Ld/q;->getSupportActionBar()Ld/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ld/q;->d()V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/u;->l(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Ld/q;->d()V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/u;->m(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Ld/q;->d()V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ld/u;->n(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    iget-object v0, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ld/j0;->D()V

    iget-object v0, p0, Ld/j0;->m:Ld/b;

    instance-of v1, v0, Ld/z0;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, p0, Ld/j0;->n:Lg/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/b;->h()V

    :cond_1
    iput-object v1, p0, Ld/j0;->m:Ld/b;

    if-eqz p1, :cond_3

    new-instance v0, Ld/u0;

    iget-object v1, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ld/j0;->p:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p0, Ld/j0;->k:Ld/d0;

    invoke-direct {v0, p1, v1, v2}, Ld/u0;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ld/d0;)V

    iput-object v0, p0, Ld/j0;->m:Ld/b;

    iget-object v1, p0, Ld/j0;->k:Ld/d0;

    iget-object v0, v0, Ld/u0;->c:Lf9/b;

    iput-object v0, v1, Ld/d0;->b:Lf9/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    iget-object p1, p0, Ld/j0;->j:Landroid/view/Window;

    if-eqz p1, :cond_4

    iget-object v0, p0, Ld/j0;->k:Ld/d0;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ld/j0;->k:Ld/d0;

    iput-object v1, p1, Ld/d0;->b:Lf9/b;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ld/j0;->c()V

    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    iput p1, p0, Ld/j0;->l0:I

    return-void
.end method

.method public startSupportActionMode(Lg/b;)Lg/c;
    .locals 0

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/u;->p(Lg/b;)Lg/c;

    move-result-object p0

    return-object p0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0}, Ld/u;->c()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lt/o;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 0

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/u;->k(I)Z

    move-result p0

    return p0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p0, p1}, Lt/o;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
