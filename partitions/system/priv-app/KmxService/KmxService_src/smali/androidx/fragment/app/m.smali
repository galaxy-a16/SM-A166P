.class public final Landroidx/fragment/app/m;
.super Landroidx/fragment/app/a2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/a2;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static m(Landroidx/fragment/app/y1;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/y1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const-string v1, "view"

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    return-void
.end method

.method public static n(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/a1;->b(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/m;->n(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static o(Ll/b;Landroid/view/View;)V
    .locals 4

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/o0;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/m;->o(Ll/b;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final f(Ljava/util/ArrayList;Z)V
    .locals 38

    move-object/from16 v6, p0

    move/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v7, 0x1

    const-string v4, "operation.fragment.mView"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/fragment/app/y1;

    sget-object v9, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->Companion:Landroidx/fragment/app/v1;

    iget-object v10, v5, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v10, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/fragment/app/v1;->a(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v9

    sget-object v10, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v9, v10, :cond_1

    iget-object v5, v5, Landroidx/fragment/app/y1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v5, v10, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v9, v2

    check-cast v9, Landroidx/fragment/app/y1;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroidx/fragment/app/y1;

    sget-object v11, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->Companion:Landroidx/fragment/app/v1;

    iget-object v12, v10, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v12, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/fragment/app/v1;->a(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v11

    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v11, v12, :cond_4

    iget-object v10, v10, Landroidx/fragment/app/y1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v10, v12, :cond_4

    move v10, v7

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    move-object v10, v5

    check-cast v10, Landroidx/fragment/app/y1;

    const/4 v11, 0x2

    invoke-static {v11}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v1

    const-string v12, " to "

    const-string v13, "FragmentManager"

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Executing operations from "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lkotlin/collections/r;->Z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lkotlin/collections/r;->W0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/y1;

    iget-object v15, v15, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Landroidx/fragment/app/y1;

    iget-object v8, v8, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/y;

    iget-object v11, v15, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/y;

    iget v3, v11, Landroidx/fragment/app/y;->b:I

    iput v3, v8, Landroidx/fragment/app/y;->b:I

    iget v3, v11, Landroidx/fragment/app/y;->c:I

    iput v3, v8, Landroidx/fragment/app/y;->c:I

    iget v3, v11, Landroidx/fragment/app/y;->d:I

    iput v3, v8, Landroidx/fragment/app/y;->d:I

    iget v3, v11, Landroidx/fragment/app/y;->e:I

    iput v3, v8, Landroidx/fragment/app/y;->e:I

    const/4 v11, 0x2

    goto :goto_4

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/y1;

    new-instance v8, Landroidx/core/os/f;

    invoke-direct {v8}, Landroidx/core/os/f;-><init>()V

    invoke-virtual {v3}, Landroidx/fragment/app/y1;->d()V

    iget-object v11, v3, Landroidx/fragment/app/y1;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroidx/fragment/app/h;

    invoke-direct {v11, v3, v8, v0}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/y1;Landroidx/core/os/f;Z)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/core/os/f;

    invoke-direct {v8}, Landroidx/core/os/f;-><init>()V

    invoke-virtual {v3}, Landroidx/fragment/app/y1;->d()V

    iget-object v11, v3, Landroidx/fragment/app/y1;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroidx/fragment/app/j;

    if-eqz v0, :cond_8

    if-ne v3, v9, :cond_9

    goto :goto_6

    :cond_8
    if-ne v3, v10, :cond_9

    :goto_6
    move v15, v7

    goto :goto_7

    :cond_9
    const/4 v15, 0x0

    :goto_7
    invoke-direct {v11, v3, v8, v0, v15}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/y1;Landroidx/core/os/f;ZZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/emoji2/text/n;

    invoke-direct {v8, v14, v3, v6, v7}, Landroidx/emoji2/text/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v3, v3, Landroidx/fragment/app/y1;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Landroidx/fragment/app/j;

    invoke-virtual {v15}, Landroidx/fragment/app/i;->b()Z

    move-result v15

    if-nez v15, :cond_b

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Landroidx/fragment/app/j;

    invoke-virtual {v15}, Landroidx/fragment/app/j;->c()Landroidx/fragment/app/r1;

    move-result-object v15

    if-eqz v15, :cond_e

    move v15, v7

    goto :goto_a

    :cond_e
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_d

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/j;

    invoke-virtual {v11}, Landroidx/fragment/app/j;->c()Landroidx/fragment/app/r1;

    move-result-object v15

    if-eqz v3, :cond_11

    if-ne v15, v3, :cond_10

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    move v3, v7

    :goto_d
    if-eqz v3, :cond_12

    move-object v3, v15

    goto :goto_b

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/y1;

    iget-object v1, v1, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned Transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition type than other Fragments."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    iget-object v11, v6, Landroidx/fragment/app/a2;->a:Landroid/view/ViewGroup;

    if-nez v3, :cond_15

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/j;

    iget-object v3, v2, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/y1;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/fragment/app/i;->a()V

    goto :goto_e

    :cond_14
    move-object/from16 v28, v1

    move-object/from16 v30, v9

    move-object/from16 v33, v10

    move-object/from16 v27, v12

    move-object v6, v13

    move-object/from16 v29, v14

    move-object v13, v8

    goto/16 :goto_32

    :cond_15
    new-instance v2, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v2, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ll/b;

    invoke-direct {v6}, Ll/b;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move-object/from16 v28, v1

    const/16 p1, 0x0

    const/4 v1, 0x0

    const/16 v26, 0x0

    :goto_f
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_24

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v29, v14

    move-object/from16 v14, v19

    check-cast v14, Landroidx/fragment/app/j;

    iget-object v14, v14, Landroidx/fragment/app/j;->e:Ljava/lang/Object;

    if-eqz v14, :cond_16

    const/16 v19, 0x1

    goto :goto_10

    :cond_16
    const/16 v19, 0x0

    :goto_10
    if-eqz v19, :cond_23

    if-eqz v9, :cond_23

    if-eqz v10, :cond_23

    invoke-virtual {v3, v14}, Landroidx/fragment/app/r1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/fragment/app/r1;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v14, v10, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v30, v4

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v31, v5

    const-string v5, "lastIn.fragment.sharedElementSourceNames"

    invoke-static {v4, v5}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v9, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v32, v8

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v33, v2

    const-string v2, "firstOut.fragment.sharedElementSourceNames"

    invoke-static {v8, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v34, v15

    const-string v15, "firstOut.fragment.sharedElementTargetNames"

    invoke-static {v2, v15}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v35, v1

    move-object/from16 v36, v3

    const/4 v1, 0x0

    :goto_11
    const/4 v3, -0x1

    if-ge v1, v15, :cond_18

    move/from16 v19, v15

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    if-eq v15, v3, :cond_17

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v15, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v19

    goto :goto_11

    :cond_18
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "lastIn.fragment.sharedElementTargetNames"

    invoke-static {v1, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_19

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lt/p0;

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt/p0;

    new-instance v2, Lkotlin/Pair;

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_19
    const/4 v8, 0x0

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt/p0;

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lt/p0;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v8, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v2, :cond_1a

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v15, v3}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    const/4 v3, -0x1

    goto :goto_13

    :cond_1a
    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, ">>> entering view names <<<"

    invoke-static {v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v8, "Name: "

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_1b
    const-string v2, ">>> exiting view names <<<"

    invoke-static {v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_1c
    new-instance v2, Ll/b;

    invoke-direct {v2}, Ll/b;-><init>()V

    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v8, "firstOut.fragment.mView"

    invoke-static {v3, v8}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroidx/fragment/app/m;->o(Ll/b;Landroid/view/View;)V

    invoke-static {v2, v4}, Lh/e;->w(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ll/b;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v6, v3}, Lh/e;->w(Ljava/util/Map;Ljava/util/Collection;)Z

    new-instance v3, Ll/b;

    invoke-direct {v3}, Ll/b;-><init>()V

    iget-object v8, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v15, "lastIn.fragment.mView"

    invoke-static {v8, v15}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Landroidx/fragment/app/m;->o(Ll/b;Landroid/view/View;)V

    invoke-static {v3, v1}, Lh/e;->w(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ll/b;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v3, v8}, Lh/e;->w(Ljava/util/Map;Ljava/util/Collection;)Z

    sget-object v8, Landroidx/fragment/app/k1;->a:Landroidx/fragment/app/p1;

    iget v8, v6, Ll/j;->c:I

    const/4 v15, -0x1

    add-int/2addr v8, v15

    :goto_16
    if-ge v15, v8, :cond_1e

    invoke-virtual {v6, v8}, Ll/j;->k(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v3, v15}, Ll/j;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    invoke-virtual {v6, v8}, Ll/j;->j(I)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v8, v8, -0x1

    const/4 v15, -0x1

    goto :goto_16

    :cond_1e
    invoke-virtual {v6}, Ll/b;->keySet()Ljava/util/Set;

    move-result-object v8

    const-string v15, "sharedElementNameMapping.keys"

    invoke-static {v8, v15}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ll/b;->entrySet()Ljava/util/Set;

    move-result-object v15

    move-object/from16 v37, v13

    const-string v13, "entries"

    invoke-static {v15, v13}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v1

    new-instance v1, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;

    invoke-direct {v1, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;-><init>(Ljava/util/Collection;)V

    invoke-static {v15, v1}, Lkotlin/collections/q;->R0(Ljava/util/Set;Lvb/b;)V

    invoke-virtual {v6}, Ll/b;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v8, "sharedElementNameMapping.values"

    invoke-static {v1, v8}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ll/b;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8, v13}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;

    invoke-direct {v13, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;-><init>(Ljava/util/Collection;)V

    invoke-static {v8, v13}, Lkotlin/collections/q;->R0(Ljava/util/Set;Lvb/b;)V

    invoke-virtual {v6}, Ll/j;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v5, v31

    move-object/from16 v8, v32

    move-object/from16 v2, v33

    move-object/from16 v15, v34

    move-object/from16 v3, v36

    move-object/from16 v13, v37

    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_1f
    if-eqz v0, :cond_20

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt/p0;

    goto :goto_17

    :cond_20
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt/p0;

    :goto_17
    new-instance v1, Landroidx/fragment/app/e;

    invoke-direct {v1, v10, v9, v0, v3}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/y1;Landroidx/fragment/app/y1;ZLl/b;)V

    invoke-static {v11, v1}, Landroidx/core/view/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ll/b;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v2, v4, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    move-object/from16 v2, v35

    move-object/from16 v15, v36

    invoke-virtual {v15, v1, v2}, Landroidx/fragment/app/r1;->m(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_18

    :cond_21
    move-object/from16 v2, v35

    move-object/from16 v15, v36

    move-object/from16 v1, p1

    :goto_18
    invoke-virtual {v3}, Ll/b;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    if-eqz v4, :cond_22

    move-object/from16 v4, v19

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_22

    new-instance v4, Landroidx/emoji2/text/n;

    move-object/from16 v5, v34

    const/4 v13, 0x2

    invoke-direct {v4, v15, v3, v5, v13}, Landroidx/emoji2/text/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v11, v4}, Landroidx/core/view/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    move/from16 v26, v8

    goto :goto_19

    :cond_22
    move-object/from16 v5, v34

    :goto_19
    move-object/from16 v3, v33

    invoke-virtual {v15, v2, v3, v7}, Landroidx/fragment/app/r1;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v15

    move-object/from16 v20, v2

    move-object/from16 v23, v2

    move-object/from16 v24, v12

    invoke-virtual/range {v19 .. v24}, Landroidx/fragment/app/r1;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v13, v32

    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_23
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v37, v13

    move-object v5, v15

    move-object v15, v3

    move-object v13, v8

    const/4 v8, 0x1

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    :goto_1a
    move-object/from16 p1, v1

    move-object v1, v2

    move-object v2, v3

    move-object v8, v13

    move-object v3, v15

    move-object/from16 v14, v29

    move-object/from16 v4, v30

    move-object/from16 v13, v37

    move-object v15, v5

    move-object/from16 v5, v31

    goto/16 :goto_f

    :cond_24
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v37, v13

    move-object/from16 v29, v14

    move-object v5, v15

    move-object v15, v3

    move-object v13, v8

    const/4 v8, 0x1

    move-object v3, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/fragment/app/j;

    invoke-virtual {v8}, Landroidx/fragment/app/i;->b()Z

    move-result v16

    move-object/from16 p2, v2

    iget-object v2, v8, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/y1;

    if-eqz v16, :cond_25

    move-object/from16 v16, v6

    goto :goto_1d

    :cond_25
    move-object/from16 v16, v6

    iget-object v6, v8, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    invoke-virtual {v15, v6}, Landroidx/fragment/app/r1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v1, :cond_27

    if-eq v2, v9, :cond_26

    if-ne v2, v10, :cond_27

    :cond_26
    const/16 v19, 0x1

    goto :goto_1c

    :cond_27
    const/16 v19, 0x0

    :goto_1c
    if-nez v6, :cond_29

    if-nez v19, :cond_28

    :goto_1d
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroidx/fragment/app/i;->a()V

    :cond_28
    move-object/from16 v2, p2

    move-object/from16 v6, v16

    :goto_1e
    const/4 v8, 0x1

    goto :goto_1b

    :cond_29
    move-object/from16 v33, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v1

    iget-object v1, v2, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v25, v4

    move-object/from16 v4, v30

    invoke-static {v1, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v1}, Landroidx/fragment/app/m;->n(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v19, :cond_2b

    if-ne v2, v9, :cond_2a

    invoke-static {v7}, Lkotlin/collections/r;->a1(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    goto :goto_1f

    :cond_2a
    invoke-static {v12}, Lkotlin/collections/r;->a1(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    :goto_1f
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2b
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v15, v3, v6}, Landroidx/fragment/app/r1;->a(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v19, v3

    goto :goto_20

    :cond_2c
    invoke-virtual {v15, v6, v10}, Landroidx/fragment/app/r1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v15

    move-object/from16 v20, v6

    move-object/from16 v21, v6

    move-object/from16 v22, v10

    invoke-virtual/range {v19 .. v24}, Landroidx/fragment/app/r1;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v1, v2, Landroidx/fragment/app/y1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-object/from16 v19, v3

    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v1, v3, :cond_2d

    move-object/from16 v3, v29

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v30, v4

    iget-object v4, v2, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v15, v6, v3, v1}, Landroidx/fragment/app/r1;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v1, Lt/a;

    const/4 v3, 0x2

    invoke-direct {v1, v10, v3}, Lt/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v11, v1}, Landroidx/core/view/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_21

    :cond_2d
    :goto_20
    move-object/from16 v30, v4

    :goto_21
    iget-object v1, v2, Landroidx/fragment/app/y1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v1, v3, :cond_2f

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v26, :cond_2e

    invoke-virtual {v15, v6, v5}, Landroidx/fragment/app/r1;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2e
    move-object/from16 v1, p1

    goto :goto_22

    :cond_2f
    move-object/from16 v1, p1

    invoke-virtual {v15, v1, v6}, Landroidx/fragment/app/r1;->m(Landroid/view/View;Ljava/lang/Object;)V

    :goto_22
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v8, Landroidx/fragment/app/j;->d:Z

    if-eqz v2, :cond_30

    invoke-virtual {v15, v14, v6}, Landroidx/fragment/app/r1;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    move-object/from16 v4, v25

    goto :goto_23

    :cond_30
    move-object/from16 v4, v25

    invoke-virtual {v15, v4, v6}, Landroidx/fragment/app/r1;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    :goto_23
    move-object/from16 v2, p2

    move-object/from16 p1, v1

    move-object/from16 v6, v16

    move-object/from16 v3, v19

    move-object/from16 v10, v33

    move-object/from16 v1, v34

    goto/16 :goto_1e

    :cond_31
    move-object v2, v1

    move-object/from16 v16, v6

    move-object/from16 v33, v10

    invoke-virtual {v15, v14, v4, v2}, Landroidx/fragment/app/r1;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_32

    move-object/from16 v10, v33

    move-object/from16 v6, v37

    goto/16 :goto_2b

    :cond_32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/fragment/app/j;

    invoke-virtual {v6}, Landroidx/fragment/app/i;->b()Z

    move-result v6

    if-nez v6, :cond_33

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_34
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/j;

    iget-object v6, v4, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    iget-object v8, v4, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/y1;

    move-object/from16 v10, v33

    if-eqz v2, :cond_36

    if-eq v8, v9, :cond_35

    if-ne v8, v10, :cond_36

    :cond_35
    const/4 v14, 0x1

    goto :goto_26

    :cond_36
    const/4 v14, 0x0

    :goto_26
    if-nez v6, :cond_38

    if-eqz v14, :cond_37

    goto :goto_27

    :cond_37
    move-object/from16 v6, v37

    goto :goto_29

    :cond_38
    :goto_27
    sget-object v6, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v11}, Landroidx/core/view/l0;->c(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_3a

    const/4 v6, 0x2

    invoke-static {v6}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v5

    if-eqz v5, :cond_39

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Container "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has not been laid out. Completing operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v37

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_39
    move-object/from16 v6, v37

    :goto_28
    invoke-virtual {v4}, Landroidx/fragment/app/i;->a()V

    :goto_29
    move-object/from16 v37, v6

    goto :goto_2a

    :cond_3a
    move-object/from16 v6, v37

    iget-object v14, v8, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    new-instance v14, Ld/p0;

    invoke-direct {v14, v5, v4, v8}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v4, Landroidx/fragment/app/i;->b:Landroidx/core/os/f;

    invoke-virtual {v15, v1, v4, v14}, Landroidx/fragment/app/r1;->o(Ljava/lang/Object;Landroidx/core/os/f;Ld/p0;)V

    :goto_2a
    move-object/from16 v33, v10

    goto :goto_25

    :cond_3b
    move-object/from16 v10, v33

    move-object/from16 v6, v37

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v11}, Landroidx/core/view/l0;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3c

    :goto_2b
    move-object/from16 v30, v9

    move-object/from16 v33, v10

    goto/16 :goto_32

    :cond_3c
    invoke-static {v0, v5}, Landroidx/fragment/app/k1;->a(Ljava/util/ArrayList;I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v4, :cond_3d

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget-object v14, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v8}, Landroidx/core/view/o0;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    invoke-static {v8, v14}, Landroidx/core/view/o0;->v(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_3d
    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    const-string v4, ">>>>> Beginning transition <<<<<"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v8, " Name: "

    const-string v14, "View: "

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 p1, v4

    const-string v4, "sharedElementFirstOutViews"

    invoke-static {v5, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroidx/core/view/o0;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p1

    goto :goto_2d

    :cond_3e
    const-string v4, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 p1, v4

    const-string v4, "sharedElementLastInViews"

    invoke-static {v5, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroidx/core/view/o0;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p1

    goto :goto_2e

    :cond_3f
    invoke-virtual {v15, v11, v1}, Landroidx/fragment/app/r1;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v1, :cond_43

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget-object v14, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v8}, Landroidx/core/view/o0;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_40

    move-object/from16 v30, v9

    move-object/from16 v33, v10

    goto :goto_31

    :cond_40
    move-object/from16 v33, v10

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroidx/core/view/o0;->v(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v8, v16

    invoke-virtual {v8, v14, v10}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    move-object/from16 v16, v8

    const/4 v8, 0x0

    :goto_30
    move-object/from16 v30, v9

    if-ge v8, v1, :cond_42

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8, v14}, Landroidx/core/view/o0;->v(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_31

    :cond_41
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, v30

    goto :goto_30

    :cond_42
    :goto_31
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v30

    move-object/from16 v10, v33

    goto :goto_2f

    :cond_43
    move-object/from16 v30, v9

    move-object/from16 v33, v10

    new-instance v5, Landroidx/fragment/app/q1;

    const/16 v26, 0x0

    move-object/from16 v19, v5

    move-object/from16 v20, v15

    move/from16 v21, v1

    move-object/from16 v22, v12

    move-object/from16 v23, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v4

    invoke-direct/range {v19 .. v26}, Landroidx/fragment/app/q1;-><init>(Ljava/lang/Object;ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v11, v5}, Landroidx/core/view/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/fragment/app/k1;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v15, v2, v7, v12}, Landroidx/fragment/app/r1;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v5, 0x0

    :goto_33
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v12, " has started."

    const-string v1, "context"

    if-eqz v0, :cond_4c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/fragment/app/h;

    invoke-virtual {v14}, Landroidx/fragment/app/i;->b()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_34

    :cond_44
    invoke-static {v8, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Landroidx/fragment/app/h;->c(Landroid/content/Context;)Landroidx/fragment/app/n0;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_34

    :cond_45
    iget-object v0, v0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/animation/Animator;

    if-nez v15, :cond_46

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_46
    iget-object v4, v14, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/y1;

    iget-object v0, v4, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v2

    if-eqz v2, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring Animator set on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as this Fragment was involved in a Transition."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_34
    invoke-virtual {v14}, Landroidx/fragment/app/i;->a()V

    goto :goto_33

    :cond_48
    iget-object v1, v4, Landroidx/fragment/app/y1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v1, v2, :cond_49

    const/4 v3, 0x1

    goto :goto_35

    :cond_49
    const/4 v3, 0x0

    :goto_35
    move-object/from16 v5, v29

    if-eqz v3, :cond_4a

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4a
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v1, Landroidx/fragment/app/k;

    move-object v0, v1

    move-object/from16 p1, v10

    move-object v10, v1

    move-object/from16 v1, p0

    move-object/from16 p2, v2

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v18, v13

    move-object v13, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/m;Landroid/view/View;ZLandroidx/fragment/app/y1;Landroidx/fragment/app/h;)V

    invoke-virtual {v15, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animator from operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    new-instance v0, Landroidx/fragment/app/f;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v15, v13}, Landroidx/fragment/app/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v14, Landroidx/fragment/app/i;->b:Landroidx/core/os/f;

    invoke-virtual {v1, v0}, Landroidx/core/os/f;->a(Landroidx/core/os/e;)V

    move-object/from16 v10, p1

    move-object/from16 v29, v16

    move-object/from16 v13, v18

    const/4 v5, 0x1

    goto/16 :goto_33

    :cond_4c
    move-object/from16 v16, v29

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h;

    iget-object v3, v2, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/y1;

    iget-object v4, v3, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    const-string v9, "Ignoring Animation set on "

    if-eqz v7, :cond_4d

    const/4 v10, 0x2

    invoke-static {v10}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Transitions."

    goto :goto_37

    :cond_4d
    const/4 v10, 0x2

    if-eqz v5, :cond_4f

    invoke-static {v10}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Animators."

    :goto_37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-virtual {v2}, Landroidx/fragment/app/i;->a()V

    goto :goto_36

    :cond_4f
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v8, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroidx/fragment/app/h;->c(Landroid/content/Context;)Landroidx/fragment/app/n0;

    move-result-object v9

    const-string v10, "Required value was null."

    if-eqz v9, :cond_53

    iget-object v9, v9, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast v9, Landroid/view/animation/Animation;

    if-eqz v9, :cond_52

    iget-object v10, v3, Landroidx/fragment/app/y1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v13, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v10, v13, :cond_50

    invoke-virtual {v4, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroidx/fragment/app/i;->a()V

    move-object/from16 v13, p0

    goto :goto_38

    :cond_50
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v10, Landroidx/fragment/app/h0;

    invoke-direct {v10, v9, v11, v4}, Landroidx/fragment/app/h0;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v9, Landroidx/fragment/app/l;

    move-object/from16 v13, p0

    invoke-direct {v9, v4, v2, v13, v3}, Landroidx/fragment/app/l;-><init>(Landroid/view/View;Landroidx/fragment/app/h;Landroidx/fragment/app/m;Landroidx/fragment/app/y1;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v9, 0x2

    invoke-static {v9}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v10

    if-eqz v10, :cond_51

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Animation from operation "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_38
    new-instance v9, Landroidx/fragment/app/g;

    invoke-direct {v9, v4, v13, v2, v3}, Landroidx/fragment/app/g;-><init>(Landroid/view/View;Ljava/lang/Object;Landroidx/fragment/app/h;Landroidx/fragment/app/y1;)V

    iget-object v2, v2, Landroidx/fragment/app/i;->b:Landroidx/core/os/f;

    invoke-virtual {v2, v9}, Landroidx/core/os/f;->a(Landroidx/core/os/e;)V

    goto/16 :goto_36

    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/y1;

    invoke-static {v1}, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/y1;)V

    goto :goto_39

    :cond_55
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Completed executing operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-void
.end method
