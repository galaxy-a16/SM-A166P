.class public final Landroidx/recyclerview/widget/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/j;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroidx/recyclerview/widget/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/j;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    iput p5, p0, Landroidx/recyclerview/widget/i;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/i;->e:Landroidx/recyclerview/widget/l;

    iput-object p2, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/j;

    iput-object p3, p0, Landroidx/recyclerview/widget/i;->c:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroidx/recyclerview/widget/i;->d:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget p1, p0, Landroidx/recyclerview/widget/i;->a:I

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->e:Landroidx/recyclerview/widget/l;

    iget-object v1, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/j;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/recyclerview/widget/i;->d:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object p0, p0, Landroidx/recyclerview/widget/i;->c:Landroid/view/ViewPropertyAnimator;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, v1, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/n1;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/n1;)V

    iget-object p0, v0, Landroidx/recyclerview/widget/l;->o:Ljava/util/ArrayList;

    iget-object p1, v1, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/n1;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/l;->i()V

    iget p0, v0, Landroidx/recyclerview/widget/l;->p:I

    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, -0x5

    and-int/2addr p0, p1

    iput p0, v0, Landroidx/recyclerview/widget/l;->p:I

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, v1, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/n1;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/n1;)V

    iget-object p0, v0, Landroidx/recyclerview/widget/l;->o:Ljava/util/ArrayList;

    iget-object p1, v1, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/n1;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/l;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Landroidx/recyclerview/widget/i;->a:I

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->e:Landroidx/recyclerview/widget/l;

    iget-object p0, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/j;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/n1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/n1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
