.class public final Landroidx/appcompat/widget/n;
.super Landroidx/appcompat/widget/e1;
.source "SourceFile"


# instance fields
.field public final synthetic g:Landroidx/appcompat/widget/p;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/p;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Landroidx/appcompat/widget/n;->g:Landroidx/appcompat/widget/p;

    const/4 v0, 0x0

    const v1, 0x7f030020

    invoke-direct {p0, p2, v0, v1}, Landroidx/appcompat/widget/e1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lb/a;->j:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12011f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lva/n;->z(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const p1, 0x7f0700e7

    goto :goto_0

    :cond_0
    const p1, 0x7f0700e6

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e1;->setBackgroundResource(I)V

    invoke-static {p0, v1}, Lj3/f;->u(Landroid/widget/TextView;Z)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/e1;->onMeasure(II)V

    return-void
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/n;->g:Landroidx/appcompat/widget/p;

    invoke-virtual {p0}, Landroidx/appcompat/widget/p;->p()Z

    return v1
.end method
