.class public final Landroidx/appcompat/widget/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/i4;

.field public c:Landroidx/appcompat/widget/i4;

.field public d:Landroidx/appcompat/widget/i4;

.field public e:Landroidx/appcompat/widget/i4;

.field public f:Landroidx/appcompat/widget/i4;

.field public g:Landroidx/appcompat/widget/i4;

.field public h:Landroidx/appcompat/widget/i4;

.field public final i:Landroidx/appcompat/widget/i1;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/b1;->j:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/b1;->k:I

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroid/widget/TextView;

    new-instance v0, Landroidx/appcompat/widget/i1;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/i1;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->i:Landroidx/appcompat/widget/i1;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/widget/z;I)Landroidx/appcompat/widget/i4;
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/l2;

    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/l2;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/i4;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/b1;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/appcompat/widget/z;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/i4;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->b:Landroidx/appcompat/widget/i4;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/i4;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/i4;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroidx/appcompat/widget/i4;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v4, v0, v2

    iget-object v5, p0, Landroidx/appcompat/widget/b1;->b:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/b1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/i4;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iget-object v5, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/b1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/i4;)V

    aget-object v4, v0, v1

    iget-object v5, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/b1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/i4;)V

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v4, p0, Landroidx/appcompat/widget/b1;->e:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/b1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/i4;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->f:Landroidx/appcompat/widget/i4;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->g:Landroidx/appcompat/widget/i4;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {v3}, Landroidx/appcompat/widget/x0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->f:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/b1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/i4;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->g:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/b1;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/i4;)V

    :cond_3
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/b1;->h:Landroidx/appcompat/widget/i4;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/b1;->h:Landroidx/appcompat/widget/i4;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v10, v0, Landroidx/appcompat/widget/b1;->a:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Landroidx/appcompat/widget/z;->a()Landroidx/appcompat/widget/z;

    move-result-object v12

    sget-object v3, Lb/a;->h:[I

    invoke-static {v11, v8, v3, v9}, Landroidx/appcompat/widget/b3;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/b3;

    move-result-object v13

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v13, Landroidx/appcompat/widget/b3;->b:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    move-object v1, v10

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Landroidx/core/view/u0;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v14, -0x1

    invoke-virtual {v13, v7, v14}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v1

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v13, v15, v7}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/b1;->c(Landroid/content/Context;Landroidx/appcompat/widget/z;I)Landroidx/appcompat/widget/i4;

    iput-object v6, v0, Landroidx/appcompat/widget/b1;->b:Landroidx/appcompat/widget/i4;

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v13, v5, v7}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/b1;->c(Landroid/content/Context;Landroidx/appcompat/widget/z;I)Landroidx/appcompat/widget/i4;

    iput-object v6, v0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/i4;

    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v13, v4, v7}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/b1;->c(Landroid/content/Context;Landroidx/appcompat/widget/z;I)Landroidx/appcompat/widget/i4;

    iput-object v6, v0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/i4;

    :cond_2
    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v13, v3, v7}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/b1;->c(Landroid/content/Context;Landroidx/appcompat/widget/z;I)Landroidx/appcompat/widget/i4;

    iput-object v6, v0, Landroidx/appcompat/widget/b1;->e:Landroidx/appcompat/widget/i4;

    :cond_3
    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v13, v2, v7}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v3

    invoke-static {v11, v12, v3}, Landroidx/appcompat/widget/b1;->c(Landroid/content/Context;Landroidx/appcompat/widget/z;I)Landroidx/appcompat/widget/i4;

    iput-object v6, v0, Landroidx/appcompat/widget/b1;->f:Landroidx/appcompat/widget/i4;

    :cond_4
    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v13, v3, v7}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/b1;->c(Landroid/content/Context;Landroidx/appcompat/widget/z;I)Landroidx/appcompat/widget/i4;

    iput-object v6, v0, Landroidx/appcompat/widget/b1;->g:Landroidx/appcompat/widget/i4;

    :cond_5
    invoke-virtual {v13}, Landroidx/appcompat/widget/b3;->n()V

    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    sget-object v13, Lb/a;->A:[I

    const/16 v15, 0xf

    const/16 v6, 0xd

    const/16 v3, 0xe

    if-eq v1, v14, :cond_9

    new-instance v4, Landroidx/appcompat/widget/b3;

    invoke-virtual {v11, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v4, v11, v1}, Landroidx/appcompat/widget/b3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v2, :cond_6

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v4, v3, v7}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result v1

    move/from16 v18, v5

    goto :goto_0

    :cond_6
    move v1, v7

    move/from16 v18, v1

    :goto_0
    invoke-virtual {v0, v11, v4}, Landroidx/appcompat/widget/b1;->j(Landroid/content/Context;Landroidx/appcompat/widget/b3;)V

    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/b3;->j(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    :cond_7
    const/16 v19, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/b3;->j(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :cond_8
    const/16 v20, 0x0

    :goto_2
    invoke-virtual {v4}, Landroidx/appcompat/widget/b3;->n()V

    goto :goto_3

    :cond_9
    move v1, v7

    move/from16 v18, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_3
    new-instance v4, Landroidx/appcompat/widget/b3;

    invoke-virtual {v11, v8, v13, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-direct {v4, v11, v13}, Landroidx/appcompat/widget/b3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v2, :cond_a

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v4, v3, v7}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result v1

    move/from16 v18, v5

    :cond_a
    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/b3;->j(I)Ljava/lang/String;

    move-result-object v19

    :cond_b
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/b3;->j(I)Ljava/lang/String;

    move-result-object v20

    :cond_c
    move-object/from16 v3, v20

    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v4, v7, v14}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v13

    if-nez v13, :cond_d

    const/4 v13, 0x0

    invoke-virtual {v10, v7, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-virtual {v0, v11, v4}, Landroidx/appcompat/widget/b1;->j(Landroid/content/Context;Landroidx/appcompat/widget/b3;)V

    invoke-virtual {v4}, Landroidx/appcompat/widget/b3;->n()V

    if-nez v2, :cond_e

    if-eqz v18, :cond_e

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_e
    iget-object v1, v0, Landroidx/appcompat/widget/b1;->l:Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    iget v2, v0, Landroidx/appcompat/widget/b1;->k:I

    if-ne v2, v14, :cond_f

    iget v2, v0, Landroidx/appcompat/widget/b1;->j:I

    invoke-virtual {v10, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    :cond_f
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_4
    if-eqz v3, :cond_11

    invoke-static {v10, v3}, Landroidx/appcompat/widget/z0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_11
    if-eqz v19, :cond_12

    invoke-static/range {v19 .. v19}, Landroidx/appcompat/widget/y0;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v10, v1}, Landroidx/appcompat/widget/y0;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    :cond_12
    sget-object v13, Lb/a;->i:[I

    iget-object v4, v0, Landroidx/appcompat/widget/b1;->i:Landroidx/appcompat/widget/i1;

    iget-object v3, v4, Landroidx/appcompat/widget/i1;->i:Landroid/content/Context;

    invoke-virtual {v3, v8, v13, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v0, v4, Landroidx/appcompat/widget/i1;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v18, 0x0

    move-object/from16 p0, v2

    const/4 v15, 0x5

    move-object v2, v13

    move-object/from16 v16, v3

    const/4 v14, 0x2

    move-object/from16 v3, p1

    move-object v14, v4

    move-object/from16 v4, p0

    move/from16 v5, p2

    move v9, v6

    move/from16 v6, v18

    invoke-static/range {v0 .. v6}, Landroidx/core/view/u0;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v14, Landroidx/appcompat/widget/i1;->a:I

    :cond_13
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_14

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_5

    :cond_14
    move v1, v3

    :goto_5
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_6

    :cond_15
    move v4, v3

    :goto_6
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    goto :goto_7

    :cond_16
    move v5, v3

    :goto_7
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    if-lez v15, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v15

    new-array v9, v15, [I

    if-lez v15, :cond_18

    :goto_8
    if-ge v7, v15, :cond_17

    const/4 v3, -0x1

    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    aput v20, v9, v7

    add-int/lit8 v7, v7, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_8

    :cond_17
    invoke-static {v9}, Landroidx/appcompat/widget/i1;->a([I)[I

    move-result-object v3

    iput-object v3, v14, Landroidx/appcompat/widget/i1;->f:[I

    invoke-virtual {v14}, Landroidx/appcompat/widget/i1;->c()Z

    :cond_18
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v14}, Landroidx/appcompat/widget/i1;->d()Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1e

    iget v0, v14, Landroidx/appcompat/widget/i1;->a:I

    if-ne v0, v2, :cond_1f

    iget-boolean v0, v14, Landroidx/appcompat/widget/i1;->g:Z

    if-nez v0, :cond_1d

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v7, v4, v6

    if-nez v7, :cond_1a

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v7, 0x2

    invoke-static {v7, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    goto :goto_9

    :cond_1a
    const/4 v7, 0x2

    :goto_9
    cmpl-float v9, v5, v6

    if-nez v9, :cond_1b

    const/high16 v5, 0x42e00000    # 112.0f

    invoke-static {v7, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    :cond_1b
    cmpl-float v0, v1, v6

    if-nez v0, :cond_1c

    move v1, v3

    :cond_1c
    invoke-virtual {v14, v4, v5, v1}, Landroidx/appcompat/widget/i1;->e(FFF)V

    :cond_1d
    invoke-virtual {v14}, Landroidx/appcompat/widget/i1;->b()Z

    goto :goto_a

    :cond_1e
    const/4 v0, 0x0

    iput v0, v14, Landroidx/appcompat/widget/i1;->a:I

    :cond_1f
    :goto_a
    sget-object v0, Landroidx/appcompat/widget/x4;->a:Ljava/lang/reflect/Method;

    iget v0, v14, Landroidx/appcompat/widget/i1;->a:I

    if-eqz v0, :cond_21

    iget-object v0, v14, Landroidx/appcompat/widget/i1;->f:[I

    array-length v1, v0

    if-lez v1, :cond_21

    invoke-static {v10}, Landroidx/appcompat/widget/z0;->a(Landroid/widget/TextView;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_20

    iget v0, v14, Landroidx/appcompat/widget/i1;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, v14, Landroidx/appcompat/widget/i1;->e:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, v14, Landroidx/appcompat/widget/i1;->c:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v10, v0, v1, v4, v5}, Landroidx/appcompat/widget/z0;->b(Landroid/widget/TextView;IIII)V

    goto :goto_b

    :cond_20
    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Landroidx/appcompat/widget/z0;->c(Landroid/widget/TextView;[II)V

    :cond_21
    :goto_b
    new-instance v0, Landroidx/appcompat/widget/b3;

    invoke-virtual {v11, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroidx/appcompat/widget/b3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 v1, 0x8

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v1

    if-eq v1, v4, :cond_22

    invoke-virtual {v12, v11, v1}, Landroidx/appcompat/widget/z;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v1, 0xd

    goto :goto_c

    :cond_22
    const/16 v1, 0xd

    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v1

    if-eq v1, v4, :cond_23

    invoke-virtual {v12, v11, v1}, Landroidx/appcompat/widget/z;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_d

    :cond_23
    const/4 v1, 0x0

    :goto_d
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v5

    if-eq v5, v4, :cond_24

    invoke-virtual {v12, v11, v5}, Landroidx/appcompat/widget/z;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_e

    :cond_24
    const/4 v5, 0x0

    :goto_e
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v7

    if-eq v7, v4, :cond_25

    invoke-virtual {v12, v11, v7}, Landroidx/appcompat/widget/z;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_f

    :cond_25
    const/4 v7, 0x0

    :goto_f
    const/16 v8, 0xa

    invoke-virtual {v0, v8, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v8

    if-eq v8, v4, :cond_26

    invoke-virtual {v12, v11, v8}, Landroidx/appcompat/widget/z;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_10

    :cond_26
    const/4 v8, 0x0

    :goto_10
    const/4 v9, 0x7

    invoke-virtual {v0, v9, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v9

    if-eq v9, v4, :cond_27

    invoke-virtual {v12, v11, v9}, Landroidx/appcompat/widget/z;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_11

    :cond_27
    const/4 v4, 0x0

    :goto_11
    if-nez v8, :cond_32

    if-eqz v4, :cond_28

    goto :goto_19

    :cond_28
    if-nez v6, :cond_29

    if-nez v1, :cond_29

    if-nez v5, :cond_29

    if-eqz v7, :cond_37

    :cond_29
    invoke-static {v10}, Landroidx/appcompat/widget/x0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v9, v4, v8

    if-nez v9, :cond_2f

    const/4 v11, 0x2

    aget-object v12, v4, v11

    if-eqz v12, :cond_2a

    goto :goto_16

    :cond_2a
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v6, :cond_2b

    goto :goto_12

    :cond_2b
    aget-object v6, v4, v8

    :goto_12
    if-eqz v1, :cond_2c

    goto :goto_13

    :cond_2c
    aget-object v1, v4, v2

    :goto_13
    if-eqz v5, :cond_2d

    goto :goto_14

    :cond_2d
    const/4 v2, 0x2

    aget-object v5, v4, v2

    :goto_14
    if-eqz v7, :cond_2e

    goto :goto_15

    :cond_2e
    const/4 v2, 0x3

    aget-object v7, v4, v2

    :goto_15
    invoke-virtual {v10, v6, v1, v5, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    :cond_2f
    :goto_16
    if-eqz v1, :cond_30

    goto :goto_17

    :cond_30
    aget-object v1, v4, v2

    :goto_17
    const/4 v2, 0x2

    aget-object v2, v4, v2

    if-eqz v7, :cond_31

    goto :goto_18

    :cond_31
    const/4 v5, 0x3

    aget-object v7, v4, v5

    :goto_18
    invoke-static {v10, v9, v1, v2, v7}, Landroidx/appcompat/widget/x0;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    :cond_32
    :goto_19
    invoke-static {v10}, Landroidx/appcompat/widget/x0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v8, :cond_33

    goto :goto_1a

    :cond_33
    const/4 v6, 0x0

    aget-object v8, v5, v6

    :goto_1a
    if-eqz v1, :cond_34

    goto :goto_1b

    :cond_34
    aget-object v1, v5, v2

    :goto_1b
    if-eqz v4, :cond_35

    goto :goto_1c

    :cond_35
    const/4 v2, 0x2

    aget-object v4, v5, v2

    :goto_1c
    if-eqz v7, :cond_36

    goto :goto_1d

    :cond_36
    const/4 v2, 0x3

    aget-object v7, v5, v2

    :goto_1d
    invoke-static {v10, v8, v1, v4, v7}, Landroidx/appcompat/widget/x0;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_37
    :goto_1e
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/b3;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v10, v1}, Le0/r;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_38
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-static {v10, v1}, Le0/r;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1f

    :cond_39
    const/4 v2, -0x1

    :goto_1f
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v1

    const/16 v4, 0x12

    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v4

    const/16 v5, 0x13

    invoke-virtual {v0, v5, v2}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v5

    invoke-virtual {v0}, Landroidx/appcompat/widget/b3;->n()V

    if-eq v1, v2, :cond_3a

    invoke-static {v1}, Lkotlinx/coroutines/a0;->b(I)V

    invoke-static {v10, v1}, Le0/t;->d(Landroid/widget/TextView;I)V

    :cond_3a
    if-eq v4, v2, :cond_3d

    invoke-static {v4}, Lkotlinx/coroutines/a0;->b(I)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {v10}, Le0/p;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_20

    :cond_3b
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v4, v1, :cond_3c

    sub-int/2addr v4, v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3c
    const/4 v0, -0x1

    goto :goto_21

    :cond_3d
    move v0, v2

    :goto_21
    if-eq v5, v0, :cond_3e

    invoke-static {v5}, Lkotlinx/coroutines/a0;->b(I)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq v5, v0, :cond_3e

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {v10, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_3e
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 4

    sget-object v0, Lb/a;->A:[I

    new-instance v1, Landroidx/appcompat/widget/b3;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/widget/b3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 p2, 0xe

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/widget/b1;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2, v3}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    invoke-virtual {v1, v3, p2}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/b1;->j(Landroid/content/Context;Landroidx/appcompat/widget/b3;)V

    const/16 p1, 0xd

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/b3;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v2, p1}, Landroidx/appcompat/widget/z0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/b3;->n()V

    iget-object p1, p0, Landroidx/appcompat/widget/b1;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget p0, p0, Landroidx/appcompat/widget/b1;->j:I

    invoke-virtual {v2, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->h:Landroidx/appcompat/widget/i4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/i4;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/i4;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->h:Landroidx/appcompat/widget/i4;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->h:Landroidx/appcompat/widget/i4;

    iput-object p1, v0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Landroidx/appcompat/widget/i4;->c:Z

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->b:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->f:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->g:Landroidx/appcompat/widget/i4;

    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->h:Landroidx/appcompat/widget/i4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/i4;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/i4;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->h:Landroidx/appcompat/widget/i4;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->h:Landroidx/appcompat/widget/i4;

    iput-object p1, v0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Landroidx/appcompat/widget/i4;->b:Z

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->b:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->f:Landroidx/appcompat/widget/i4;

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->g:Landroidx/appcompat/widget/i4;

    return-void
.end method

.method public final j(Landroid/content/Context;Landroidx/appcompat/widget/b3;)V
    .locals 8

    iget v0, p0, Landroidx/appcompat/widget/b1;->j:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/b1;->j:I

    const/16 v0, 0xb

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/b1;->k:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/b1;->j:I

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/widget/b1;->j:I

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-nez v4, :cond_6

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Landroidx/appcompat/widget/b1;->m:Z

    invoke-virtual {p2, v6, v6}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result p1

    if-eq p1, v6, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/appcompat/widget/b1;->l:Landroid/graphics/Typeface;

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v5

    :cond_7
    iget v4, p0, Landroidx/appcompat/widget/b1;->k:I

    iget v5, p0, Landroidx/appcompat/widget/b1;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Landroidx/appcompat/widget/b1;->a:Landroid/widget/TextView;

    invoke-direct {p1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Landroidx/appcompat/widget/v0;

    invoke-direct {v7, p0, v4, v5, p1}, Landroidx/appcompat/widget/v0;-><init>(Landroidx/appcompat/widget/b1;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/b1;->j:I

    invoke-virtual {p2, v0, p1, v7}, Landroidx/appcompat/widget/b3;->g(IILandroidx/appcompat/widget/v0;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    iget v4, p0, Landroidx/appcompat/widget/b1;->k:I

    if-eq v4, v2, :cond_9

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v4, p0, Landroidx/appcompat/widget/b1;->k:I

    iget v5, p0, Landroidx/appcompat/widget/b1;->j:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_3

    :cond_8
    move v5, v3

    :goto_3
    invoke-static {p1, v4, v5}, Landroidx/appcompat/widget/a1;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->l:Landroid/graphics/Typeface;

    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v6

    goto :goto_4

    :cond_b
    move p1, v3

    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/b1;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/b3;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    iget p2, p0, Landroidx/appcompat/widget/b1;->k:I

    if-eq p2, v2, :cond_e

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/b1;->k:I

    iget v0, p0, Landroidx/appcompat/widget/b1;->j:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    move v3, v6

    :cond_d
    invoke-static {p1, p2, v3}, Landroidx/appcompat/widget/a1;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_5

    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/b1;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->l:Landroid/graphics/Typeface;

    :cond_f
    return-void
.end method
