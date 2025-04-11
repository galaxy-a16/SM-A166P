.class public final Ld/n;
.super Landroidx/activity/p;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Ld/r;


# instance fields
.field public d:Ld/j0;

.field public final e:Ld/k0;

.field public final f:Ld/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Ld/n;->l(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Ld/n;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/activity/p;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ld/k0;

    invoke-direct {v0, p0}, Ld/k0;-><init>(Ld/n;)V

    iput-object v0, p0, Ld/n;->e:Ld/k0;

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object v0

    invoke-static {p1, p2}, Ld/n;->h(Landroid/content/Context;I)I

    move-result p1

    move-object p2, v0

    check-cast p2, Ld/j0;

    iput p1, p2, Ld/j0;->l0:I

    invoke-virtual {v0}, Ld/u;->f()V

    new-instance p1, Ld/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Ld/l;-><init>(Landroid/content/Context;Ld/n;Landroid/view/Window;)V

    iput-object p1, p0, Ld/n;->f:Ld/l;

    return-void
.end method

.method public static h(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f03017c

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    return p1
.end method

.method public static l(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f03002e

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final bridge synthetic addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ld/n;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ld/u;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0}, Ld/u;->g()V

    return-void
.end method

.method public final bridge synthetic dismiss()V
    .locals 0

    invoke-virtual {p0}, Ld/n;->d()V

    return-void
.end method

.method public final bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ld/n;->e(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final e(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object p0, p0, Ld/n;->e:Ld/k0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ld/k0;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final f(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    check-cast p0, Ld/j0;

    invoke-virtual {p0}, Ld/j0;->y()V

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Ld/n;->f(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ld/u;
    .locals 3

    iget-object v0, p0, Ld/n;->d:Ld/j0;

    if-nez v0, :cond_0

    sget-object v0, Ld/u;->a:Ld/q0;

    new-instance v0, Ld/j0;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Ld/j0;-><init>(Landroid/content/Context;Landroid/view/Window;Ld/r;Ljava/lang/Object;)V

    iput-object v0, p0, Ld/n;->d:Ld/j0;

    :cond_0
    iget-object p0, p0, Ld/n;->d:Ld/j0;

    return-object p0
.end method

.method public final i()V
    .locals 0

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0}, Ld/u;->c()V

    return-void
.end method

.method public final bridge synthetic invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Ld/n;->i()V

    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object v0

    invoke-virtual {v0}, Ld/u;->b()V

    invoke-super {p0, p1}, Landroidx/activity/p;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0}, Ld/u;->f()V

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/p;->onStop()V

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0}, Ld/u;->h()V

    return-void
.end method

.method public final m(I)V
    .locals 0

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/u;->l(I)V

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/u;->m(Landroid/view/View;)V

    return-void
.end method

.method public final o(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ld/u;->n(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 21

    invoke-virtual/range {p0 .. p1}, Ld/n;->j(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ld/n;->f:Ld/l;

    iget-object v1, v0, Ld/l;->b:Ld/n;

    iget v2, v0, Ld/l;->C:I

    invoke-virtual {v1, v2}, Ld/n;->m(I)V

    iget-object v1, v0, Ld/l;->c:Landroid/view/Window;

    const v2, 0x7f090190

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ld/g;

    invoke-direct {v3, v0, v2}, Ld/g;-><init>(Ld/l;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v3, 0x7f090262

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090091

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090070

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f09009e

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/high16 v10, 0x20000

    invoke-virtual {v1, v10, v10}, Landroid/view/Window;->setFlags(II)V

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v3, v4}, Ld/l;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v5, v6}, Ld/l;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v7, v8}, Ld/l;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    if-ne v7, v8, :cond_0

    new-instance v8, Ld/d;

    invoke-direct {v8, v0}, Ld/d;-><init>(Ld/l;)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iput-object v8, v0, Ld/l;->H:Ld/d;

    const v8, 0x7f0901dd

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/core/widget/NestedScrollView;

    iput-object v8, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/view/View;->setFocusable(Z)V

    iget-object v8, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v8, v12}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v8, 0x102000b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Ld/l;->y:Landroid/widget/TextView;

    const/4 v13, -0x1

    iget-object v14, v0, Ld/l;->a:Landroid/content/Context;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v15, v0, Ld/l;->f:Ljava/lang/CharSequence;

    if-eqz v15, :cond_2

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Ld/l;->y:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v11, 0x7f06038c

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v0, v8, v11}, Ld/l;->a(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    iget-object v11, v0, Ld/l;->y:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, v0, Ld/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v8, :cond_3

    iget-object v8, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v11, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v15, v0, Ld/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v15, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v11, 0x1

    if-eqz v8, :cond_4

    const-string v12, "show_button_background"

    const/4 v15, 0x0

    invoke-static {v8, v12, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v11, :cond_4

    move v8, v11

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    const v13, 0x1010031

    invoke-virtual {v15, v13, v12, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v13, v12, Landroid/util/TypedValue;->resourceId:I

    if-lez v13, :cond_5

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v15, v12, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    goto :goto_3

    :cond_5
    const/4 v13, -0x1

    :goto_3
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v15, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    move v10, v11

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v16, v5

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    move-object/from16 v17, v2

    const v2, 0x7f030111

    invoke-virtual {v5, v2, v15, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v15, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_7

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v5, v15, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_5

    :cond_7
    iget v2, v15, Landroid/util/TypedValue;->data:I

    :goto_5
    const v5, 0x1020019

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v0, Ld/l;->h:Landroid/widget/Button;

    iget-object v15, v0, Ld/l;->K:Ld/f;

    invoke-virtual {v5, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v10, :cond_8

    iget-object v5, v0, Ld/l;->h:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget v5, v12, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_9

    iget-object v5, v0, Ld/l;->h:Landroid/widget/Button;

    invoke-static {v13, v5, v8}, Lj3/f;->t(ILandroid/widget/Button;Z)V

    goto :goto_6

    :cond_9
    iget-object v5, v0, Ld/l;->h:Landroid/widget/Button;

    invoke-static {v5, v8}, Lj3/f;->u(Landroid/widget/TextView;Z)V

    :goto_6
    iget-object v5, v0, Ld/l;->i:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    iget v11, v0, Ld/l;->d:I

    if-eqz v5, :cond_a

    iget-object v5, v0, Ld/l;->k:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_a

    iget-object v5, v0, Ld/l;->h:Landroid/widget/Button;

    move-object/from16 v18, v6

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v19, v4

    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v18, v6

    iget-object v5, v0, Ld/l;->h:Landroid/widget/Button;

    iget-object v6, v0, Ld/l;->i:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Ld/l;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, v0, Ld/l;->h:Landroid/widget/Button;

    iget-object v6, v0, Ld/l;->k:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_b
    move-object/from16 v19, v4

    :goto_7
    iget-object v4, v0, Ld/l;->h:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x1

    :goto_8
    const v5, 0x102001a

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    invoke-virtual {v5, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v10, :cond_c

    iget-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget v5, v12, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_d

    iget-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    invoke-static {v13, v5, v8}, Lj3/f;->t(ILandroid/widget/Button;Z)V

    goto :goto_9

    :cond_d
    iget-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    invoke-static {v5, v8}, Lj3/f;->u(Landroid/widget/TextView;Z)V

    :goto_9
    iget-object v5, v0, Ld/l;->m:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Ld/l;->o:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_e

    iget-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v20, v9

    goto :goto_b

    :cond_e
    iget-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    iget-object v6, v0, Ld/l;->m:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Ld/l;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_f

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    iget-object v6, v0, Ld/l;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v9

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_f
    move-object/from16 v20, v9

    :goto_a
    iget-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v4, v4, 0x2

    :goto_b
    const v5, 0x102001b

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-virtual {v5, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v10, :cond_10

    iget-object v5, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    iget v2, v12, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_11

    iget-object v2, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-static {v13, v2, v8}, Lj3/f;->t(ILandroid/widget/Button;Z)V

    goto :goto_c

    :cond_11
    iget-object v2, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-static {v2, v8}, Lj3/f;->u(Landroid/widget/TextView;Z)V

    :goto_c
    iget-object v2, v0, Ld/l;->q:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Ld/l;->s:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_12

    iget-object v2, v0, Ld/l;->p:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_12
    iget-object v2, v0, Ld/l;->p:Landroid/widget/Button;

    iget-object v5, v0, Ld/l;->q:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Ld/l;->s:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    if-eqz v2, :cond_13

    invoke-virtual {v2, v5, v5, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Ld/l;->p:Landroid/widget/Button;

    iget-object v6, v0, Ld/l;->s:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_13
    iget-object v2, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v4, v4, 0x4

    :goto_d
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f03002c

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_14

    move v2, v8

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    :goto_e
    const/4 v15, 0x2

    if-eqz v2, :cond_17

    if-ne v4, v8, :cond_15

    iget-object v2, v0, Ld/l;->h:Landroid/widget/Button;

    goto :goto_f

    :cond_15
    if-ne v4, v15, :cond_16

    iget-object v2, v0, Ld/l;->l:Landroid/widget/Button;

    goto :goto_f

    :cond_16
    const/4 v2, 0x4

    if-ne v4, v2, :cond_17

    iget-object v2, v0, Ld/l;->p:Landroid/widget/Button;

    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x1

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    if-eqz v4, :cond_18

    const/4 v2, 0x1

    goto :goto_10

    :cond_18
    const/4 v2, 0x0

    :goto_10
    if-nez v2, :cond_19

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v2, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_11

    :cond_1a
    const/4 v2, 0x0

    :goto_11
    iget-object v4, v0, Ld/l;->h:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_12

    :cond_1b
    const/4 v4, 0x0

    :goto_12
    iget-object v5, v0, Ld/l;->l:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_13

    :cond_1c
    const/4 v5, 0x0

    :goto_13
    const v6, 0x7f0901f7

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1f

    if-eqz v2, :cond_1d

    if-nez v4, :cond_1e

    :cond_1d
    if-eqz v2, :cond_1f

    if-eqz v5, :cond_1f

    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    :cond_1f
    const/4 v2, 0x0

    :goto_14
    const v6, 0x7f0901f6

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_20

    if-eqz v4, :cond_20

    if-eqz v5, :cond_20

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    iget-object v2, v0, Ld/l;->H:Ld/d;

    if-eqz v2, :cond_21

    const v2, 0x7f09006f

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_21

    iget-object v4, v0, Ld/l;->H:Ld/d;

    invoke-virtual {v4, v2}, Ld/d;->accept(Ljava/lang/Object;)V

    :cond_21
    iget-object v2, v0, Ld/l;->z:Landroid/view/View;

    const v4, 0x7f09025c

    if-eqz v2, :cond_22

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v2, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v5, v0, Ld/l;->z:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    :cond_22
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Ld/l;->w:Landroid/widget/ImageView;

    iget-object v2, v0, Ld/l;->e:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    if-eqz v2, :cond_25

    iget-boolean v2, v0, Ld/l;->I:Z

    if-eqz v2, :cond_25

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Ld/l;->x:Landroid/widget/TextView;

    iget-object v5, v0, Ld/l;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Ld/l;->x:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0603ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ld/l;->a(Landroid/widget/TextView;I)V

    iget v2, v0, Ld/l;->u:I

    if-eqz v2, :cond_23

    iget-object v5, v0, Ld/l;->w:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    :cond_23
    iget-object v2, v0, Ld/l;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_24

    iget-object v5, v0, Ld/l;->w:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_15
    const/16 v5, 0x8

    goto :goto_16

    :cond_24
    iget-object v2, v0, Ld/l;->x:Landroid/widget/TextView;

    iget-object v5, v0, Ld/l;->w:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget-object v6, v0, Ld/l;->w:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v8, v0, Ld/l;->w:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, v0, Ld/l;->w:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v2, v5, v6, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Ld/l;->w:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    :cond_25
    const/16 v5, 0x8

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Ld/l;->w:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_26

    const/4 v2, 0x1

    goto :goto_17

    :cond_26
    const/4 v2, 0x0

    :goto_17
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_27

    const/4 v3, 0x1

    goto :goto_18

    :cond_27
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_28

    const/4 v6, 0x1

    goto :goto_19

    :cond_28
    const/4 v6, 0x0

    :goto_19
    if-eqz v19, :cond_29

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_29

    const/4 v7, 0x1

    goto :goto_1a

    :cond_29
    const/4 v7, 0x0

    :goto_1a
    if-eqz v18, :cond_2a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_2a

    const/4 v8, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v8, 0x0

    :goto_1b
    iget-object v9, v0, Ld/l;->z:Landroid/view/View;

    if-eqz v9, :cond_2b

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v5, 0x0

    :goto_1c
    if-eqz v2, :cond_2c

    if-nez v7, :cond_2c

    if-eqz v8, :cond_2d

    :cond_2c
    if-eqz v5, :cond_2e

    :cond_2d
    move-object/from16 v5, v17

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1d

    :cond_2e
    move-object/from16 v5, v17

    const/4 v9, 0x0

    :goto_1d
    if-eqz v2, :cond_2f

    if-eqz v7, :cond_2f

    if-nez v8, :cond_2f

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0603a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v7, v9, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_2f
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f06039b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, v0, Ld/l;->h:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_30

    iget-object v7, v0, Ld/l;->h:Landroid/widget/Button;

    int-to-float v9, v4

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v0, Ld/l;->h:Landroid/widget/Button;

    invoke-virtual {v0, v7, v4}, Ld/l;->a(Landroid/widget/TextView;I)V

    goto :goto_1e

    :cond_30
    const/4 v10, 0x0

    :goto_1e
    iget-object v7, v0, Ld/l;->l:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_31

    iget-object v7, v0, Ld/l;->l:Landroid/widget/Button;

    int-to-float v9, v4

    invoke-virtual {v7, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v0, Ld/l;->l:Landroid/widget/Button;

    invoke-virtual {v0, v7, v4}, Ld/l;->a(Landroid/widget/TextView;I)V

    :cond_31
    iget-object v7, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_32

    iget-object v7, v0, Ld/l;->p:Landroid/widget/Button;

    int-to-float v8, v4

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-virtual {v0, v7, v4}, Ld/l;->a(Landroid/widget/TextView;I)V

    :cond_32
    invoke-virtual {v5}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_38

    if-eqz v2, :cond_33

    move-object/from16 v9, v20

    goto :goto_1f

    :cond_33
    move-object/from16 v9, v16

    :goto_1f
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_20

    :cond_34
    iget-object v4, v0, Ld/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v4, :cond_35

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    :goto_20
    const/4 v4, 0x1

    goto :goto_21

    :cond_35
    const/4 v4, 0x0

    :goto_21
    if-nez v4, :cond_38

    iget-object v4, v0, Ld/l;->h:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, v0, Ld/l;->h:Landroid/widget/Button;

    goto :goto_22

    :cond_36
    iget-object v4, v0, Ld/l;->l:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v0, Ld/l;->l:Landroid/widget/Button;

    goto :goto_22

    :cond_37
    iget-object v4, v0, Ld/l;->p:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, v0, Ld/l;->p:Landroid/widget/Button;

    :goto_22
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    :cond_38
    if-eqz v3, :cond_39

    iget-object v4, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_39

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_39
    iget-object v4, v0, Ld/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    instance-of v5, v4, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v5, :cond_3d

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_3a

    if-nez v3, :cond_3d

    :cond_3a
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    if-eqz v3, :cond_3b

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    goto :goto_23

    :cond_3b
    iget v7, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    :goto_23
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    if-eqz v6, :cond_3c

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    goto :goto_24

    :cond_3c
    iget v9, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    :goto_24
    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_3d
    if-nez v2, :cond_41

    iget-object v2, v0, Ld/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v2, :cond_3e

    goto :goto_25

    :cond_3e
    iget-object v2, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    :goto_25
    if-eqz v2, :cond_41

    if-eqz v6, :cond_3f

    goto :goto_26

    :cond_3f
    const/4 v15, 0x0

    :goto_26
    or-int/2addr v3, v15

    const v4, 0x7f0901dc

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0901db

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v5, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Landroidx/core/view/p0;->d(Landroid/view/View;II)V

    move-object/from16 v2, v16

    if-eqz v4, :cond_40

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_40
    if-eqz v1, :cond_41

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_41
    iget-object v1, v0, Ld/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_43

    iget-object v2, v0, Ld/l;->A:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_43

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/widget/AdapterView;

    const-string v6, "hidden_semSetBottomColor"

    invoke-static {v4, v6, v3}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_42

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    iget v0, v0, Ld/l;->B:I

    const/4 v3, -0x1

    if-le v0, v3, :cond_43

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060473

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_43
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Ld/n;->f:Ld/l;

    iget-object v0, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->o(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Ld/n;->f:Ld/l;

    iget-object v0, v0, Ld/l;->t:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->o(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic onStop()V
    .locals 0

    invoke-virtual {p0}, Ld/n;->k()V

    return-void
.end method

.method public final bridge synthetic onSupportActionModeFinished(Lg/c;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onSupportActionModeStarted(Lg/c;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onWindowStartingSupportActionMode(Lg/b;)Lg/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final p(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ld/u;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final q(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld/u;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final r(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/n;->m(I)V

    return-void
.end method

.method public final bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ld/n;->n(Landroid/view/View;)V

    return-void
.end method

.method public final bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Ld/n;->o(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final bridge synthetic setTitle(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/n;->p(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld/n;->q(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Ld/n;->f:Ld/l;

    iput-object p1, p0, Ld/l;->e:Ljava/lang/CharSequence;

    .line 3
    iget-object p0, p0, Ld/l;->x:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
