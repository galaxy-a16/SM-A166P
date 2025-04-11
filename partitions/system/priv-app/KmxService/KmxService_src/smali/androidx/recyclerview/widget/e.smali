.class public final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/recyclerview/widget/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/l;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Landroidx/recyclerview/widget/e;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/e;->c:Landroidx/recyclerview/widget/l;

    iput-object p2, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v2, 0x190

    iget v4, v0, Landroidx/recyclerview/widget/e;->a:I

    const/4 v5, 0x0

    iget-object v13, v0, Landroidx/recyclerview/widget/e;->c:Landroidx/recyclerview/widget/l;

    iget-object v0, v0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroidx/recyclerview/widget/j;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v12, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/n1;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v10, v7

    goto :goto_1

    :cond_0
    iget-object v6, v6, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    move-object v10, v6

    :goto_1
    iget-object v6, v12, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/n1;

    if-eqz v6, :cond_1

    iget-object v6, v6, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    move-object v14, v6

    goto :goto_2

    :cond_1
    move-object v14, v7

    :goto_2
    sget-object v15, Landroidx/recyclerview/widget/l;->s:Landroid/view/animation/PathInterpolator;

    iget-object v11, v13, Landroidx/recyclerview/widget/l;->o:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v6, v12, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/n1;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v12, Landroidx/recyclerview/widget/j;->e:I

    iget v7, v12, Landroidx/recyclerview/widget/j;->c:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v9, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v6, v12, Landroidx/recyclerview/widget/j;->f:I

    iget v7, v12, Landroidx/recyclerview/widget/j;->d:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v9, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v9, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v7, Landroidx/recyclerview/widget/i;

    const/16 v16, 0x0

    move-object v6, v7

    move-object v1, v7

    move-object v7, v13

    move-object v2, v8

    move-object v8, v12

    move-object v3, v11

    move/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/j;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_2
    move-object v3, v11

    :goto_3
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v1, v12, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/n1;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroidx/recyclerview/widget/i;

    const/4 v11, 0x1

    move-object v6, v2

    move-object v7, v13

    move-object v8, v12

    move-object v10, v14

    invoke-direct/range {v6 .. v11}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/j;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    const-wide/16 v2, 0x190

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v13, Landroidx/recyclerview/widget/l;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/k;

    iget-object v8, v2, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/n1;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    iget v3, v2, Landroidx/recyclerview/widget/k;->d:I

    iget v4, v2, Landroidx/recyclerview/widget/k;->b:I

    sub-int v9, v3, v4

    iget v3, v2, Landroidx/recyclerview/widget/k;->e:I

    iget v2, v2, Landroidx/recyclerview/widget/k;->c:I

    sub-int v11, v3, v2

    if-eqz v9, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    sget-object v2, Landroidx/recyclerview/widget/l;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, v13, Landroidx/recyclerview/widget/l;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v13, Landroidx/recyclerview/widget/p0;->c:Landroid/view/View;

    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_7

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView;->G1:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/n1;->getLayoutPosition()I

    move-result v3

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/d;->e()I

    move-result v6

    add-int/2addr v6, v4

    if-ne v3, v6, :cond_7

    new-instance v3, Landroidx/recyclerview/widget/g;

    invoke-direct {v3, v2}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v12, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_7
    const-wide/16 v2, 0x190

    invoke-virtual {v12, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v14, Landroidx/recyclerview/widget/h;

    move-object v6, v14

    move-object v7, v13

    invoke-direct/range {v6 .. v12}, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/n1;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v4, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v13, Landroidx/recyclerview/widget/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "preferencecategory"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-wide/16 v5, 0x0

    goto :goto_7

    :cond_9
    const-wide/16 v5, 0xc8

    :goto_7
    iget-object v7, v13, Landroidx/recyclerview/widget/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroidx/recyclerview/widget/f;

    invoke-direct {v6, v13, v2, v3, v4}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/n1;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v13, Landroidx/recyclerview/widget/l;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
