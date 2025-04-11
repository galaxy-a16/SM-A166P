.class public final Lp/g;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:Ljava/lang/String;

.field public final C:I

.field public D:F

.field public E:F

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:F

.field public O:F

.field public P:I

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Ljava/lang/String;

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a:I

.field public a0:I

.field public b:I

.field public b0:I

.field public c:F

.field public c0:I

.field public d:I

.field public d0:I

.field public e:I

.field public e0:I

.field public f:I

.field public f0:I

.field public g:I

.field public g0:F

.field public h:I

.field public h0:I

.field public i:I

.field public i0:I

.field public j:I

.field public j0:F

.field public k:I

.field public k0:Lo/f;

.field public l:I

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public final t:I

.field public u:I

.field public final v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lp/g;->a:I

    iput v0, p0, Lp/g;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lp/g;->c:F

    iput v0, p0, Lp/g;->d:I

    iput v0, p0, Lp/g;->e:I

    iput v0, p0, Lp/g;->f:I

    iput v0, p0, Lp/g;->g:I

    iput v0, p0, Lp/g;->h:I

    iput v0, p0, Lp/g;->i:I

    iput v0, p0, Lp/g;->j:I

    iput v0, p0, Lp/g;->k:I

    iput v0, p0, Lp/g;->l:I

    iput v0, p0, Lp/g;->m:I

    const/4 v2, 0x0

    iput v2, p0, Lp/g;->n:I

    const/4 v3, 0x0

    iput v3, p0, Lp/g;->o:F

    iput v0, p0, Lp/g;->p:I

    iput v0, p0, Lp/g;->q:I

    iput v0, p0, Lp/g;->r:I

    iput v0, p0, Lp/g;->s:I

    iput v0, p0, Lp/g;->t:I

    iput v0, p0, Lp/g;->u:I

    iput v0, p0, Lp/g;->v:I

    iput v0, p0, Lp/g;->w:I

    iput v0, p0, Lp/g;->x:I

    iput v0, p0, Lp/g;->y:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lp/g;->z:F

    iput v3, p0, Lp/g;->A:F

    const/4 v4, 0x0

    iput-object v4, p0, Lp/g;->B:Ljava/lang/String;

    const/4 v5, 0x1

    iput v5, p0, Lp/g;->C:I

    iput v1, p0, Lp/g;->D:F

    iput v1, p0, Lp/g;->E:F

    iput v2, p0, Lp/g;->F:I

    iput v2, p0, Lp/g;->G:I

    iput v2, p0, Lp/g;->H:I

    iput v2, p0, Lp/g;->I:I

    iput v2, p0, Lp/g;->J:I

    iput v2, p0, Lp/g;->K:I

    iput v2, p0, Lp/g;->L:I

    iput v2, p0, Lp/g;->M:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lp/g;->N:F

    iput v1, p0, Lp/g;->O:F

    iput v0, p0, Lp/g;->P:I

    iput v0, p0, Lp/g;->Q:I

    iput v0, p0, Lp/g;->R:I

    iput-boolean v2, p0, Lp/g;->S:Z

    iput-boolean v2, p0, Lp/g;->T:Z

    iput-object v4, p0, Lp/g;->U:Ljava/lang/String;

    iput-boolean v5, p0, Lp/g;->V:Z

    iput-boolean v5, p0, Lp/g;->W:Z

    iput-boolean v2, p0, Lp/g;->X:Z

    iput-boolean v2, p0, Lp/g;->Y:Z

    iput-boolean v2, p0, Lp/g;->Z:Z

    iput v0, p0, Lp/g;->a0:I

    iput v0, p0, Lp/g;->b0:I

    iput v0, p0, Lp/g;->c0:I

    iput v0, p0, Lp/g;->d0:I

    iput v0, p0, Lp/g;->e0:I

    iput v0, p0, Lp/g;->f0:I

    iput v3, p0, Lp/g;->g0:F

    new-instance v0, Lo/f;

    invoke-direct {v0}, Lo/f;-><init>()V

    iput-object v0, p0, Lp/g;->k0:Lo/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lp/g;->a:I

    iput v0, p0, Lp/g;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lp/g;->c:F

    iput v0, p0, Lp/g;->d:I

    iput v0, p0, Lp/g;->e:I

    iput v0, p0, Lp/g;->f:I

    iput v0, p0, Lp/g;->g:I

    iput v0, p0, Lp/g;->h:I

    iput v0, p0, Lp/g;->i:I

    iput v0, p0, Lp/g;->j:I

    iput v0, p0, Lp/g;->k:I

    iput v0, p0, Lp/g;->l:I

    iput v0, p0, Lp/g;->m:I

    const/4 v2, 0x0

    iput v2, p0, Lp/g;->n:I

    const/4 v3, 0x0

    iput v3, p0, Lp/g;->o:F

    iput v0, p0, Lp/g;->p:I

    iput v0, p0, Lp/g;->q:I

    iput v0, p0, Lp/g;->r:I

    iput v0, p0, Lp/g;->s:I

    iput v0, p0, Lp/g;->t:I

    iput v0, p0, Lp/g;->u:I

    iput v0, p0, Lp/g;->v:I

    iput v0, p0, Lp/g;->w:I

    iput v0, p0, Lp/g;->x:I

    iput v0, p0, Lp/g;->y:I

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lp/g;->z:F

    iput v4, p0, Lp/g;->A:F

    const/4 v5, 0x0

    iput-object v5, p0, Lp/g;->B:Ljava/lang/String;

    const/4 v6, 0x1

    iput v6, p0, Lp/g;->C:I

    iput v1, p0, Lp/g;->D:F

    iput v1, p0, Lp/g;->E:F

    iput v2, p0, Lp/g;->F:I

    iput v2, p0, Lp/g;->G:I

    iput v2, p0, Lp/g;->H:I

    iput v2, p0, Lp/g;->I:I

    iput v2, p0, Lp/g;->J:I

    iput v2, p0, Lp/g;->K:I

    iput v2, p0, Lp/g;->L:I

    iput v2, p0, Lp/g;->M:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lp/g;->N:F

    iput v1, p0, Lp/g;->O:F

    iput v0, p0, Lp/g;->P:I

    iput v0, p0, Lp/g;->Q:I

    iput v0, p0, Lp/g;->R:I

    iput-boolean v2, p0, Lp/g;->S:Z

    iput-boolean v2, p0, Lp/g;->T:Z

    iput-object v5, p0, Lp/g;->U:Ljava/lang/String;

    iput-boolean v6, p0, Lp/g;->V:Z

    iput-boolean v6, p0, Lp/g;->W:Z

    iput-boolean v2, p0, Lp/g;->X:Z

    iput-boolean v2, p0, Lp/g;->Y:Z

    iput-boolean v2, p0, Lp/g;->Z:Z

    iput v0, p0, Lp/g;->a0:I

    iput v0, p0, Lp/g;->b0:I

    iput v0, p0, Lp/g;->c0:I

    iput v0, p0, Lp/g;->d0:I

    iput v0, p0, Lp/g;->e0:I

    iput v0, p0, Lp/g;->f0:I

    iput v4, p0, Lp/g;->g0:F

    new-instance v1, Lo/f;

    invoke-direct {v1}, Lo/f;-><init>()V

    iput-object v1, p0, Lp/g;->k0:Lo/f;

    sget-object v1, Lp/r;->b:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_6

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget-object v5, Lp/f;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const/4 v7, 0x2

    const/4 v8, -0x2

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_0
    iget v5, p0, Lp/g;->O:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lp/g;->O:F

    iput v7, p0, Lp/g;->I:I

    goto/16 :goto_4

    :pswitch_1
    :try_start_0
    iget v5, p0, Lp/g;->M:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lp/g;->M:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    iget v5, p0, Lp/g;->M:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    iput v8, p0, Lp/g;->M:I

    goto/16 :goto_4

    :pswitch_2
    :try_start_1
    iget v5, p0, Lp/g;->K:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lp/g;->K:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    iget v5, p0, Lp/g;->K:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    iput v8, p0, Lp/g;->K:I

    goto/16 :goto_4

    :pswitch_3
    iget v5, p0, Lp/g;->N:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lp/g;->N:F

    iput v7, p0, Lp/g;->H:I

    goto/16 :goto_4

    :pswitch_4
    :try_start_2
    iget v5, p0, Lp/g;->L:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lp/g;->L:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    iget v5, p0, Lp/g;->L:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    iput v8, p0, Lp/g;->L:I

    goto/16 :goto_4

    :pswitch_5
    :try_start_3
    iget v5, p0, Lp/g;->J:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lp/g;->J:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    :catch_3
    iget v5, p0, Lp/g;->J:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    iput v8, p0, Lp/g;->J:I

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->I:I

    if-ne v4, v6, :cond_5

    const-string v4, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    goto :goto_1

    :pswitch_7
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->H:I

    if-ne v4, v6, :cond_5

    const-string v4, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    :goto_1
    const-string v5, "ConstraintLayout"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_8
    iget v5, p0, Lp/g;->A:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lp/g;->A:F

    goto/16 :goto_4

    :pswitch_9
    iget v5, p0, Lp/g;->z:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lp/g;->z:F

    goto/16 :goto_4

    :pswitch_a
    iget-boolean v5, p0, Lp/g;->T:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lp/g;->T:Z

    goto/16 :goto_4

    :pswitch_b
    iget-boolean v5, p0, Lp/g;->S:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lp/g;->S:Z

    goto/16 :goto_4

    :pswitch_c
    iget v5, p0, Lp/g;->y:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lp/g;->y:I

    goto/16 :goto_4

    :pswitch_d
    iget v5, p0, Lp/g;->x:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lp/g;->x:I

    goto/16 :goto_4

    :pswitch_e
    iget v5, p0, Lp/g;->w:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lp/g;->w:I

    goto/16 :goto_4

    :pswitch_f
    iget v5, p0, Lp/g;->v:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lp/g;->v:I

    goto/16 :goto_4

    :pswitch_10
    iget v5, p0, Lp/g;->u:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lp/g;->u:I

    goto/16 :goto_4

    :pswitch_11
    iget v5, p0, Lp/g;->t:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lp/g;->t:I

    goto/16 :goto_4

    :pswitch_12
    iget v5, p0, Lp/g;->s:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->s:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->s:I

    goto/16 :goto_4

    :pswitch_13
    iget v5, p0, Lp/g;->r:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->r:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->r:I

    goto/16 :goto_4

    :pswitch_14
    iget v5, p0, Lp/g;->q:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->q:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->q:I

    goto/16 :goto_4

    :pswitch_15
    iget v5, p0, Lp/g;->p:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->p:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->p:I

    goto/16 :goto_4

    :pswitch_16
    iget v5, p0, Lp/g;->l:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->l:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->l:I

    goto/16 :goto_4

    :pswitch_17
    iget v5, p0, Lp/g;->k:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->k:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->k:I

    goto/16 :goto_4

    :pswitch_18
    iget v5, p0, Lp/g;->j:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->j:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->j:I

    goto/16 :goto_4

    :pswitch_19
    iget v5, p0, Lp/g;->i:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->i:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->i:I

    goto/16 :goto_4

    :pswitch_1a
    iget v5, p0, Lp/g;->h:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->h:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->h:I

    goto/16 :goto_4

    :pswitch_1b
    iget v5, p0, Lp/g;->g:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->g:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->g:I

    goto/16 :goto_4

    :pswitch_1c
    iget v5, p0, Lp/g;->f:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->f:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->f:I

    goto/16 :goto_4

    :pswitch_1d
    iget v5, p0, Lp/g;->e:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->e:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->e:I

    goto/16 :goto_4

    :pswitch_1e
    iget v5, p0, Lp/g;->d:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->d:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->d:I

    goto/16 :goto_4

    :pswitch_1f
    iget v5, p0, Lp/g;->c:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lp/g;->c:F

    goto/16 :goto_4

    :pswitch_20
    iget v5, p0, Lp/g;->b:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lp/g;->b:I

    goto/16 :goto_4

    :pswitch_21
    iget v5, p0, Lp/g;->a:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lp/g;->a:I

    goto/16 :goto_4

    :pswitch_22
    iget v5, p0, Lp/g;->o:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v4, v5

    iput v4, p0, Lp/g;->o:F

    cmpg-float v7, v4, v3

    if-gez v7, :cond_5

    sub-float v4, v5, v4

    rem-float/2addr v4, v5

    iput v4, p0, Lp/g;->o:F

    goto/16 :goto_4

    :pswitch_23
    iget v5, p0, Lp/g;->n:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lp/g;->n:I

    goto/16 :goto_4

    :pswitch_24
    iget v5, p0, Lp/g;->m:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lp/g;->m:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->m:I

    goto/16 :goto_4

    :pswitch_25
    iget v5, p0, Lp/g;->R:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->R:I

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lp/g;->U:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_27
    iget v5, p0, Lp/g;->Q:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lp/g;->Q:I

    goto/16 :goto_4

    :pswitch_28
    iget v5, p0, Lp/g;->P:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lp/g;->P:I

    goto/16 :goto_4

    :pswitch_29
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->G:I

    goto/16 :goto_4

    :pswitch_2a
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lp/g;->F:I

    goto/16 :goto_4

    :pswitch_2b
    iget v5, p0, Lp/g;->E:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lp/g;->E:F

    goto/16 :goto_4

    :pswitch_2c
    iget v5, p0, Lp/g;->D:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lp/g;->D:F

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lp/g;->B:Ljava/lang/String;

    iput v0, p0, Lp/g;->C:I

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lp/g;->B:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_2

    add-int/lit8 v7, v4, -0x1

    if-ge v5, v7, :cond_2

    iget-object v7, p0, Lp/g;->B:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "W"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iput v2, p0, Lp/g;->C:I

    goto :goto_2

    :cond_0
    const-string v8, "H"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v6, p0, Lp/g;->C:I

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    iget-object v7, p0, Lp/g;->B:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_4

    iget-object v4, p0, Lp/g;->B:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lp/g;->B:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    :try_start_4
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    cmpl-float v7, v4, v3

    if-lez v7, :cond_5

    cmpl-float v7, v5, v3

    if-lez v7, :cond_5

    iget v7, p0, Lp/g;->C:I

    if-ne v7, v6, :cond_3

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    goto :goto_4

    :cond_3
    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lp/g;->B:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    :try_start_5
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lp/g;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Lp/g;->a:I

    iput p1, p0, Lp/g;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lp/g;->c:F

    iput p1, p0, Lp/g;->d:I

    iput p1, p0, Lp/g;->e:I

    iput p1, p0, Lp/g;->f:I

    iput p1, p0, Lp/g;->g:I

    iput p1, p0, Lp/g;->h:I

    iput p1, p0, Lp/g;->i:I

    iput p1, p0, Lp/g;->j:I

    iput p1, p0, Lp/g;->k:I

    iput p1, p0, Lp/g;->l:I

    iput p1, p0, Lp/g;->m:I

    const/4 v1, 0x0

    iput v1, p0, Lp/g;->n:I

    const/4 v2, 0x0

    iput v2, p0, Lp/g;->o:F

    iput p1, p0, Lp/g;->p:I

    iput p1, p0, Lp/g;->q:I

    iput p1, p0, Lp/g;->r:I

    iput p1, p0, Lp/g;->s:I

    iput p1, p0, Lp/g;->t:I

    iput p1, p0, Lp/g;->u:I

    iput p1, p0, Lp/g;->v:I

    iput p1, p0, Lp/g;->w:I

    iput p1, p0, Lp/g;->x:I

    iput p1, p0, Lp/g;->y:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lp/g;->z:F

    iput v2, p0, Lp/g;->A:F

    const/4 v3, 0x0

    iput-object v3, p0, Lp/g;->B:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, p0, Lp/g;->C:I

    iput v0, p0, Lp/g;->D:F

    iput v0, p0, Lp/g;->E:F

    iput v1, p0, Lp/g;->F:I

    iput v1, p0, Lp/g;->G:I

    iput v1, p0, Lp/g;->H:I

    iput v1, p0, Lp/g;->I:I

    iput v1, p0, Lp/g;->J:I

    iput v1, p0, Lp/g;->K:I

    iput v1, p0, Lp/g;->L:I

    iput v1, p0, Lp/g;->M:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lp/g;->N:F

    iput v0, p0, Lp/g;->O:F

    iput p1, p0, Lp/g;->P:I

    iput p1, p0, Lp/g;->Q:I

    iput p1, p0, Lp/g;->R:I

    iput-boolean v1, p0, Lp/g;->S:Z

    iput-boolean v1, p0, Lp/g;->T:Z

    iput-object v3, p0, Lp/g;->U:Ljava/lang/String;

    iput-boolean v4, p0, Lp/g;->V:Z

    iput-boolean v4, p0, Lp/g;->W:Z

    iput-boolean v1, p0, Lp/g;->X:Z

    iput-boolean v1, p0, Lp/g;->Y:Z

    iput-boolean v1, p0, Lp/g;->Z:Z

    iput p1, p0, Lp/g;->a0:I

    iput p1, p0, Lp/g;->b0:I

    iput p1, p0, Lp/g;->c0:I

    iput p1, p0, Lp/g;->d0:I

    iput p1, p0, Lp/g;->e0:I

    iput p1, p0, Lp/g;->f0:I

    iput v2, p0, Lp/g;->g0:F

    new-instance p1, Lo/f;

    invoke-direct {p1}, Lo/f;-><init>()V

    iput-object p1, p0, Lp/g;->k0:Lo/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp/g;->Y:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lp/g;->V:Z

    iput-boolean v1, p0, Lp/g;->W:Z

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v4, p0, Lp/g;->S:Z

    if-eqz v4, :cond_0

    iput-boolean v0, p0, Lp/g;->V:Z

    iget v4, p0, Lp/g;->H:I

    if-nez v4, :cond_0

    iput v1, p0, Lp/g;->H:I

    :cond_0
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v3, :cond_1

    iget-boolean v5, p0, Lp/g;->T:Z

    if-eqz v5, :cond_1

    iput-boolean v0, p0, Lp/g;->W:Z

    iget v5, p0, Lp/g;->I:I

    if-nez v5, :cond_1

    iput v1, p0, Lp/g;->I:I

    :cond_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_3

    :cond_2
    iput-boolean v0, p0, Lp/g;->V:Z

    if-nez v2, :cond_3

    iget v2, p0, Lp/g;->H:I

    if-ne v2, v1, :cond_3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v1, p0, Lp/g;->S:Z

    :cond_3
    if-eqz v4, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    iput-boolean v0, p0, Lp/g;->W:Z

    if-nez v4, :cond_5

    iget v0, p0, Lp/g;->I:I

    if-ne v0, v1, :cond_5

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v1, p0, Lp/g;->T:Z

    :cond_5
    iget v0, p0, Lp/g;->c:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lp/g;->a:I

    if-ne v0, v5, :cond_6

    iget v0, p0, Lp/g;->b:I

    if-eq v0, v5, :cond_8

    :cond_6
    iput-boolean v1, p0, Lp/g;->Y:Z

    iput-boolean v1, p0, Lp/g;->V:Z

    iput-boolean v1, p0, Lp/g;->W:Z

    iget-object v0, p0, Lp/g;->k0:Lo/f;

    instance-of v0, v0, Lo/k;

    if-nez v0, :cond_7

    new-instance v0, Lo/k;

    invoke-direct {v0}, Lo/k;-><init>()V

    iput-object v0, p0, Lp/g;->k0:Lo/f;

    :cond_7
    iget-object v0, p0, Lp/g;->k0:Lo/f;

    check-cast v0, Lo/k;

    iget p0, p0, Lp/g;->R:I

    invoke-virtual {v0, p0}, Lo/k;->J(I)V

    :cond_8
    return-void
.end method

.method public final resolveLayoutDirection(I)V
    .locals 9

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lp/g;->c0:I

    iput v4, p0, Lp/g;->d0:I

    iput v4, p0, Lp/g;->a0:I

    iput v4, p0, Lp/g;->b0:I

    iget v5, p0, Lp/g;->t:I

    iput v5, p0, Lp/g;->e0:I

    iget v5, p0, Lp/g;->v:I

    iput v5, p0, Lp/g;->f0:I

    iget v5, p0, Lp/g;->z:F

    iput v5, p0, Lp/g;->g0:F

    iget v6, p0, Lp/g;->a:I

    iput v6, p0, Lp/g;->h0:I

    iget v7, p0, Lp/g;->b:I

    iput v7, p0, Lp/g;->i0:I

    iget v8, p0, Lp/g;->c:F

    iput v8, p0, Lp/g;->j0:F

    if-eqz p1, :cond_a

    iget p1, p0, Lp/g;->p:I

    if-eq p1, v4, :cond_1

    iput p1, p0, Lp/g;->c0:I

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    iget p1, p0, Lp/g;->q:I

    if-eq p1, v4, :cond_2

    iput p1, p0, Lp/g;->d0:I

    goto :goto_1

    :cond_2
    :goto_2
    iget p1, p0, Lp/g;->r:I

    if-eq p1, v4, :cond_3

    iput p1, p0, Lp/g;->b0:I

    move v2, v3

    :cond_3
    iget p1, p0, Lp/g;->s:I

    if-eq p1, v4, :cond_4

    iput p1, p0, Lp/g;->a0:I

    move v2, v3

    :cond_4
    iget p1, p0, Lp/g;->x:I

    if-eq p1, v4, :cond_5

    iput p1, p0, Lp/g;->f0:I

    :cond_5
    iget p1, p0, Lp/g;->y:I

    if-eq p1, v4, :cond_6

    iput p1, p0, Lp/g;->e0:I

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_7

    sub-float v2, p1, v5

    iput v2, p0, Lp/g;->g0:F

    :cond_7
    iget-boolean v2, p0, Lp/g;->Y:Z

    if-eqz v2, :cond_10

    iget v2, p0, Lp/g;->R:I

    if-ne v2, v3, :cond_10

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v8, v2

    if-eqz v3, :cond_8

    sub-float/2addr p1, v8

    iput p1, p0, Lp/g;->j0:F

    iput v4, p0, Lp/g;->h0:I

    iput v4, p0, Lp/g;->i0:I

    goto :goto_4

    :cond_8
    if-eq v6, v4, :cond_9

    iput v6, p0, Lp/g;->i0:I

    iput v4, p0, Lp/g;->h0:I

    :goto_3
    iput v2, p0, Lp/g;->j0:F

    goto :goto_4

    :cond_9
    if-eq v7, v4, :cond_10

    iput v7, p0, Lp/g;->h0:I

    iput v4, p0, Lp/g;->i0:I

    goto :goto_3

    :cond_a
    iget p1, p0, Lp/g;->p:I

    if-eq p1, v4, :cond_b

    iput p1, p0, Lp/g;->b0:I

    :cond_b
    iget p1, p0, Lp/g;->q:I

    if-eq p1, v4, :cond_c

    iput p1, p0, Lp/g;->a0:I

    :cond_c
    iget p1, p0, Lp/g;->r:I

    if-eq p1, v4, :cond_d

    iput p1, p0, Lp/g;->c0:I

    :cond_d
    iget p1, p0, Lp/g;->s:I

    if-eq p1, v4, :cond_e

    iput p1, p0, Lp/g;->d0:I

    :cond_e
    iget p1, p0, Lp/g;->x:I

    if-eq p1, v4, :cond_f

    iput p1, p0, Lp/g;->e0:I

    :cond_f
    iget p1, p0, Lp/g;->y:I

    if-eq p1, v4, :cond_10

    iput p1, p0, Lp/g;->f0:I

    :cond_10
    :goto_4
    iget p1, p0, Lp/g;->r:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lp/g;->s:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lp/g;->q:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lp/g;->p:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lp/g;->f:I

    if-eq p1, v4, :cond_11

    iput p1, p0, Lp/g;->c0:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    :goto_5
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_6

    :cond_11
    iget p1, p0, Lp/g;->g:I

    if-eq p1, v4, :cond_12

    iput p1, p0, Lp/g;->d0:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    goto :goto_5

    :cond_12
    :goto_6
    iget p1, p0, Lp/g;->d:I

    if-eq p1, v4, :cond_13

    iput p1, p0, Lp/g;->a0:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    :goto_7
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_8

    :cond_13
    iget p1, p0, Lp/g;->e:I

    if-eq p1, v4, :cond_14

    iput p1, p0, Lp/g;->b0:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    goto :goto_7

    :cond_14
    :goto_8
    return-void
.end method
