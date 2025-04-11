.class public final Landroidx/recyclerview/widget/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/g0;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/recyclerview/widget/g0;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, v0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/RecyclerView;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(ILandroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :pswitch_1
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v2

    :pswitch_2
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->y2:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v2

    :pswitch_3
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-eqz v1, :cond_2

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()V

    :cond_3
    :goto_0
    return-void

    :pswitch_4
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    return-void

    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->T:Landroidx/recyclerview/widget/p0;

    if-eqz v1, :cond_d

    check-cast v1, Landroidx/recyclerview/widget/l;

    iget-object v2, v1, Landroidx/recyclerview/widget/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    iget-object v6, v1, Landroidx/recyclerview/widget/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    iget-object v8, v1, Landroidx/recyclerview/widget/l;->h:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v3

    iget-object v10, v1, Landroidx/recyclerview/widget/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v3

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    if-nez v11, :cond_5

    if-nez v9, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "preferencecategory"

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/n1;

    iget-object v15, v13, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v16, 0x0

    move/from16 p0, v5

    move-wide/from16 v4, v16

    goto :goto_3

    :cond_6
    move/from16 p0, v5

    const-wide/16 v4, 0x64

    :goto_3
    iget-object v14, v1, Landroidx/recyclerview/widget/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroidx/recyclerview/widget/f;

    invoke-direct {v5, v1, v13, v3, v15}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/l;Landroidx/recyclerview/widget/n1;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v3, 0x1

    move/from16 v5, p0

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    move/from16 p0, v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Landroidx/recyclerview/widget/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Landroidx/recyclerview/widget/e;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Landroidx/recyclerview/widget/e;-><init>(Landroidx/recyclerview/widget/l;Ljava/util/ArrayList;I)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/e;->run()V

    :cond_8
    if-eqz v9, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Landroidx/recyclerview/widget/l;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Landroidx/recyclerview/widget/e;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Landroidx/recyclerview/widget/e;-><init>(Landroidx/recyclerview/widget/l;Ljava/util/ArrayList;I)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/e;->run()V

    :cond_9
    if-eqz v11, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Landroidx/recyclerview/widget/l;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Landroidx/recyclerview/widget/e;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Landroidx/recyclerview/widget/e;-><init>(Landroidx/recyclerview/widget/l;Ljava/util/ArrayList;I)V

    if-nez p0, :cond_a

    if-nez v7, :cond_a

    if-eqz v9, :cond_b

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/n1;

    iget-object v1, v2, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    invoke-virtual {v3}, Landroidx/recyclerview/widget/e;->run()V

    goto :goto_4

    :cond_c
    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    const-wide/16 v4, 0x64

    invoke-static {v1, v3, v4, v5}, Landroidx/core/view/i0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_d
    :goto_4
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
