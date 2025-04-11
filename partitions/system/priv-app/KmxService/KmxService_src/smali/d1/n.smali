.class public final Ld1/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ld1/n;->a:I

    iput-object p2, p0, Ld1/n;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld1/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget v0, p0, Ld1/n;->a:I

    iget-object v1, p0, Ld1/n;->c:Ljava/lang/Object;

    iget-object v2, p0, Ld1/n;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lg4/i;

    iget-object v0, v1, Lg4/i;->k:Lg4/g;

    invoke-virtual {v0}, Lg4/g;->c()V

    iget-object v0, v1, Lg4/i;->k:Lg4/g;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    const-string v3, "y"

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :pswitch_1
    check-cast v2, Lt1/d;

    const/4 p0, 0x0

    iput-object p0, v2, Lt1/d;->d:Landroid/animation/ValueAnimator;

    return-void

    :pswitch_2
    check-cast v2, Ll/b;

    invoke-virtual {v2, p1}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ld1/q;

    iget-object p0, v1, Ld1/q;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Ld1/n;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Ld1/n;->c:Ljava/lang/Object;

    check-cast p0, Ld1/q;

    iget-object p0, p0, Ld1/q;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
