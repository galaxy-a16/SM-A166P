.class public final synthetic Landroidx/core/view/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/core/view/f1;->a:I

    iput-object p2, p0, Landroidx/core/view/f1;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/view/f1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Landroidx/core/view/f1;->a:I

    iget-object v1, p0, Landroidx/core/view/f1;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Ld/s0;

    iget-object p0, v1, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Ld/z0;

    iget-object p0, p0, Ld/z0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :goto_0
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object p0, p0, Landroidx/core/view/f1;->c:Ljava/lang/Object;

    check-cast p0, Ll4/h;

    sget v0, Lcom/google/android/material/appbar/AppBarLayout;->r0:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ll4/h;->j(F)V

    iget-object p0, v1, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Ll4/h;

    if-eqz v0, :cond_0

    check-cast p0, Ll4/h;

    invoke-virtual {p0, p1}, Ll4/h;->j(F)V

    :cond_0
    iget-object p0, v1, Lcom/google/android/material/appbar/AppBarLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
