.class public Landroidx/appcompat/widget/SeslProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final u0:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Landroid/view/animation/Transformation;

.field public E:Landroid/view/animation/AlphaAnimation;

.field public F:Z

.field public G:Landroid/graphics/drawable/Drawable;

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:Landroid/graphics/drawable/Drawable;

.field public K:Landroidx/appcompat/widget/u3;

.field public L:I

.field public final N:Z

.field public O:Landroid/view/animation/Interpolator;

.field public P:Landroidx/appcompat/widget/q3;

.field public final Q:J

.field public R:Z

.field public T:Z

.field public V:Z

.field public a:I

.field public final b:F

.field public c:I

.field public d:I

.field public final e:Z

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:Landroid/graphics/drawable/Drawable;

.field public final j:Landroid/graphics/drawable/Drawable;

.field public k:Landroidx/appcompat/widget/t3;

.field public l:I

.field public l0:Z

.field public m:I

.field public m0:F

.field public n:I

.field public final n0:Z

.field public o0:Z

.field public p:I

.field public final p0:Ljava/util/ArrayList;

.field public q:I

.field public q0:Landroidx/appcompat/widget/q3;

.field public r0:Ljava/text/NumberFormat;

.field public s0:Ljava/util/Locale;

.field public t:I

.field public final t0:Landroidx/appcompat/widget/p3;

.field public u:I

.field public v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/SeslProgressBar;->u0:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:Z

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->L:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->p0:Ljava/util/ArrayList;

    new-instance v1, Landroidx/appcompat/widget/p3;

    invoke-direct {v1}, Landroidx/appcompat/widget/p3;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t0:Landroidx/appcompat/widget/p3;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->Q:J

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    const/16 v1, 0x64

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    const/16 v1, 0xfa0

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->z:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:I

    const/16 v2, 0x18

    iput v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    const/16 v3, 0x30

    iput v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    iput v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:I

    iput v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    .line 3
    sget-object v6, Lb/a;->t:[I

    invoke-virtual {p1, p2, v6, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v2

    move v9, p3

    :try_start_0
    invoke-virtual/range {v4 .. v10}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->N:Z

    const/16 p2, 0x8

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroidx/appcompat/widget/SeslProgressBar;->i(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->z:I

    const/16 p3, 0x9

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->z:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    const/16 p3, 0xb

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    invoke-virtual {v2, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:I

    const/16 p3, 0xc

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    invoke-virtual {v2, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:I

    const/16 p3, 0xa

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:I

    const p2, 0x10a000b

    const/16 p3, 0xd

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_2

    .line 4
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5
    :cond_2
    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    const/16 p3, 0x1a

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setMin(I)V

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    const/4 p3, 0x2

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    const/4 p3, 0x3

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:I

    const/4 p3, 0x4

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V

    const/4 p2, 0x7

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroidx/appcompat/widget/SeslProgressBar;->i(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    const/4 p3, 0x6

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->N:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    const/4 p3, 0x5

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move p2, v0

    goto :goto_3

    :cond_6
    :goto_2
    move p2, v1

    :goto_3
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminate(Z)V

    const/16 p2, 0xf

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    const/16 p2, 0x11

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez p3, :cond_7

    new-instance p3, Landroidx/appcompat/widget/u3;

    invoke-direct {p3}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_7
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v4}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/u3;->f:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-boolean v1, p2, Landroidx/appcompat/widget/u3;->h:Z

    :cond_8
    const/16 p2, 0x10

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez p3, :cond_9

    new-instance p3, Landroidx/appcompat/widget/u3;

    invoke-direct {p3}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_9
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/u3;->e:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-boolean v1, p2, Landroidx/appcompat/widget/u3;->g:Z

    :cond_a
    const/16 p2, 0x13

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez p3, :cond_b

    new-instance p3, Landroidx/appcompat/widget/u3;

    invoke-direct {p3}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_b
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v4}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/u3;->j:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-boolean v1, p2, Landroidx/appcompat/widget/u3;->l:Z

    :cond_c
    const/16 p2, 0x12

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez p3, :cond_d

    new-instance p3, Landroidx/appcompat/widget/u3;

    invoke-direct {p3}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_d
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/u3;->i:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-boolean v1, p2, Landroidx/appcompat/widget/u3;->k:Z

    :cond_e
    const/16 p2, 0x15

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez p3, :cond_f

    new-instance p3, Landroidx/appcompat/widget/u3;

    invoke-direct {p3}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_f
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v4}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/u3;->n:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-boolean v1, p2, Landroidx/appcompat/widget/u3;->p:Z

    :cond_10
    const/16 p2, 0x14

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez p3, :cond_11

    new-instance p3, Landroidx/appcompat/widget/u3;

    invoke-direct {p3}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_11
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/u3;->m:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-boolean v1, p2, Landroidx/appcompat/widget/u3;->o:Z

    :cond_12
    const/16 p2, 0x17

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez p3, :cond_13

    new-instance p3, Landroidx/appcompat/widget/u3;

    invoke-direct {p3}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_13
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v4}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/u3;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-boolean v1, p2, Landroidx/appcompat/widget/u3;->d:Z

    :cond_14
    const/16 p2, 0x16

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez p3, :cond_15

    new-instance p3, Landroidx/appcompat/widget/u3;

    invoke-direct {p3}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_15
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/u3;->a:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-boolean v1, p2, Landroidx/appcompat/widget/u3;->c:Z

    :cond_16
    const/16 p2, 0x1b

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:Z

    new-instance p2, Lg/f;

    const p3, 0x7f1300f5

    invoke-direct {p2, p1, p3}, Lg/f;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x7f07018c

    invoke-virtual {p3, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x7f070188

    invoke-virtual {p3, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x7f070186

    invoke-virtual {p3, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x7f070184

    invoke-virtual {p3, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const v0, 0x7f07018a

    invoke-virtual {p3, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_17

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->b()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->c()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->d()V

    .line 7
    :cond_17
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->a()V

    sget-object p2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    .line 8
    invoke-static {p0}, Landroidx/core/view/i0;->c(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_18

    .line 9
    invoke-static {p0, v1}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    .line 10
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->b:F

    new-instance p1, Landroidx/appcompat/widget/t3;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/t3;-><init>(Landroidx/appcompat/widget/SeslProgressBar;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->k:Landroidx/appcompat/widget/t3;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static i(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/widget/SeslProgressBar;->i(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    return v2

    :cond_3
    instance-of p0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz v1, :cond_3

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->d:Z

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/appcompat/widget/u3;->a:Landroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, v1, Landroidx/appcompat/widget/u3;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    iget-object v1, v1, Landroidx/appcompat/widget/u3;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v1, v0, Landroidx/appcompat/widget/u3;->g:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/u3;->h:Z

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x102000d

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->g(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->g:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/appcompat/widget/u3;->e:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->h:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroidx/appcompat/widget/u3;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v1, v0, Landroidx/appcompat/widget/u3;->k:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/u3;->l:Z

    if-eqz v0, :cond_3

    :cond_0
    const/high16 v0, 0x1020000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->g(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->k:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/appcompat/widget/u3;->i:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->l:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroidx/appcompat/widget/u3;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v1, v0, Landroidx/appcompat/widget/u3;->o:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/u3;->p:Z

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x102000f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->g(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->o:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/appcompat/widget/u3;->m:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iget-boolean v2, v1, Landroidx/appcompat/widget/u3;->p:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroidx/appcompat/widget/u3;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lx/b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-static {p0, p1, p2}, Lx/b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->t()V

    return-void
.end method

.method public final declared-synchronized e(IIZZZ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v0, 0x102000d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    instance-of v6, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_3

    move-object v6, v4

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Lx/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    :cond_2
    if-eqz v6, :cond_4

    move-object v4, v6

    goto :goto_2

    :cond_3
    instance-of v6, v4, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v6, :cond_4

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_3
    if-eqz v0, :cond_6

    if-eqz p5, :cond_6

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t0:Landroidx/appcompat/widget/p3;

    new-array p5, v3, [F

    aput v1, p5, v2

    invoke-static {p0, p1, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v2, 0x50

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p5, Landroidx/appcompat/widget/SeslProgressBar;->u0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/widget/SeslProgressBar;->n(FI)V

    :goto_4
    if-eqz v0, :cond_7

    if-eqz p4, :cond_7

    invoke-virtual {p0, v1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->j(FIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    iget-boolean v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->F:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroidx/appcompat/widget/SeslProgressBar;->C:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->C:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->T:Z

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->T:Z

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->T:Z

    throw p1

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->R:Z

    if-eqz p1, :cond_2

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_2

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->R:Z

    :cond_2
    return-void
.end method

.method public final g(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    instance-of p0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p0, :cond_0

    move-object p0, v0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/u3;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/u3;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->O:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxHeight()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    return p0
.end method

.method public declared-synchronized getMin()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMinHeight()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    return p0
.end method

.method public getMirrorForRtl()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    return p0
.end method

.method public getPaddingLeft()I
    .locals 2

    const-class v0, Landroid/view/View;

    const-string v1, "mPaddingLeft"

    invoke-static {v0, v1}, Lh3/a;->o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lh3/a;->k(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPaddingRight()I
    .locals 2

    const-class v0, Landroid/view/View;

    const-string v1, "mPaddingRight"

    invoke-static {v0, v1}, Lh3/a;->o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lh3/a;->k(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/u3;->i:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/u3;->j:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/u3;->e:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/u3;->f:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/u3;->m:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/u3;->n:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06043a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f060440

    const v3, 0x7f060443

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06043b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060442

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060441

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f060439

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06043f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06043e

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06043c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060445

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060444

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    :goto_2
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->T:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v2

    invoke-virtual {p0, v0, v3, v4, p1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(FIZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q0:Landroidx/appcompat/widget/q3;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/widget/q3;

    invoke-direct {p1, p0, p2, p2}, Landroidx/appcompat/widget/q3;-><init>(Landroidx/appcompat/widget/SeslProgressBar;II)V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q0:Landroidx/appcompat/widget/q3;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q0:Landroidx/appcompat/widget/q3;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:I

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    if-le p1, v0, :cond_2

    if-nez p3, :cond_2

    const p3, 0x102000f

    invoke-virtual {p0, p3, p1, p2, p2}, Landroidx/appcompat/widget/SeslProgressBar;->l(IIZZ)V

    :cond_2
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method public k(FI)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized l(IIZZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->Q:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/SeslProgressBar;->e(IIZZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->P:Landroidx/appcompat/widget/q3;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/q3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/widget/q3;-><init>(Landroidx/appcompat/widget/SeslProgressBar;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->P:Landroidx/appcompat/widget/q3;

    :cond_1
    sget-object v0, Landroidx/appcompat/widget/v3;->e:Landroidx/core/util/e;

    invoke-virtual {v0}, Landroidx/core/util/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/v3;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/widget/v3;

    invoke-direct {v0}, Landroidx/appcompat/widget/v3;-><init>()V

    :cond_2
    iput p1, v0, Landroidx/appcompat/widget/v3;->a:I

    iput p2, v0, Landroidx/appcompat/widget/v3;->b:I

    iput-boolean p3, v0, Landroidx/appcompat/widget/v3;->c:Z

    iput-boolean p4, v0, Landroidx/appcompat/widget/v3;->d:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->p0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->V:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->l0:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->P:Landroidx/appcompat/widget/q3;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->l0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(IZZ)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    invoke-static {p1, v0, v2}, Lv9/a;->k(III)I

    move-result p1

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    const v4, 0x102000d

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v2, v0, Landroidx/appcompat/widget/s3;

    if-eqz v2, :cond_3

    check-cast v0, Landroidx/appcompat/widget/s3;

    if-eqz p3, :cond_2

    iget-object v2, v0, Landroidx/appcompat/widget/s3;->i:Landroidx/appcompat/widget/r3;

    new-array v5, v3, [I

    aput p1, v5, v1

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Landroidx/appcompat/widget/SeslProgressBar;->u0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    iput p1, v0, Landroidx/appcompat/widget/s3;->e:I

    iget-object p1, v0, Landroidx/appcompat/widget/s3;->j:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    invoke-virtual {p0, v4, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->l(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final n(FI)V
    .locals 2

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->m0:F

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->k(FI)V

    return-void
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->R:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->F:Z

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->k:Landroidx/appcompat/widget/t3;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_2

    :cond_0
    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->F:Z

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->O:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->O:Landroid/view/animation/Interpolator;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->C:Landroid/view/animation/Transformation;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->C:Landroid/view/animation/Transformation;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:I

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->z:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->O:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->o()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/v3;

    iget v4, v2, Landroidx/appcompat/widget/v3;->a:I

    iget v5, v2, Landroidx/appcompat/widget/v3;->b:I

    iget-boolean v6, v2, Landroidx/appcompat/widget/v3;->c:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Landroidx/appcompat/widget/v3;->d:Z

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/widget/SeslProgressBar;->e(IIZZZ)V

    sget-object v3, Landroidx/appcompat/widget/v3;->e:Landroidx/core/util/e;

    invoke-virtual {v3, v2}, Landroidx/core/util/e;->b(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->V:Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->p()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->k:Landroidx/appcompat/widget/t3;

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->P:Landroidx/appcompat/widget/q3;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->l0:Z

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q0:Landroidx/appcompat/widget/q3;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->V:Z

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->f(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "android"

    const-string v3, "in_progress"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :cond_1
    const-string p0, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->s0:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->r0:Ljava/text/NumberFormat;

    if-nez v2, :cond_4

    :cond_3
    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->s0:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->r0:Ljava/text/NumberFormat;

    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->r0:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v2, p0

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_5

    goto :goto_0

    :cond_5
    int-to-float v0, v0

    sub-float/2addr v0, p0

    div-float/2addr v0, v2

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {v0, v3, p0}, Lv9/a;->j(FFF)F

    move-result v3

    :goto_0
    float-to-double v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->t()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    invoke-static {v3, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v2, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->h(I)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060437

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060436

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroidx/appcompat/widget/w3;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/appcompat/widget/w3;->a:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget p1, p1, Landroidx/appcompat/widget/w3;->b:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/w3;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/w3;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    iput v0, v1, Landroidx/appcompat/widget/w3;->a:I

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:I

    iput p0, v1, Landroidx/appcompat/widget/w3;->b:I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->s(II)V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->o0:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->o0:Z

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->p()V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->F:Z

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->k:Landroidx/appcompat/widget/t3;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->R:Z

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    return-void
.end method

.method public final postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->N:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public final q(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public final r(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_2

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x102000d

    if-eq v4, v6, :cond_1

    const v6, 0x102000f

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v1

    :goto_2
    invoke-virtual {p0, v5, v4}, Landroidx/appcompat/widget/SeslProgressBar;->r(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_3
    if-ge v2, p2, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-object p0

    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-object p0

    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->L:I

    if-gtz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->L:I

    :cond_6
    if-eqz p2, :cond_7

    new-instance p0, Landroid/graphics/drawable/ClipDrawable;

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object p0

    :cond_7
    return-object p1
.end method

.method public s(II)V
    .locals 10

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v4, v2, v3

    sub-float v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    sub-int v2, p1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    move v2, p1

    move v3, v1

    move v9, v0

    move v0, p2

    move p2, v9

    goto :goto_0

    :cond_1
    move v2, p1

    move v0, v1

    move v3, v0

    :goto_0
    iget-boolean v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    sub-int v2, p1, v2

    sub-int/2addr p1, v3

    move v3, v2

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->q(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->o()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->q(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->p()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lx/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->a()V

    :cond_3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->o()V

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->q(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2710

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/SeslProgressBar;->r(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-object p1, v1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u3;

    invoke-direct {v0}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-object p1, v0, Landroidx/appcompat/widget/u3;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/u3;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->a()V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u3;

    invoke-direct {v0}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-object p1, v0, Landroidx/appcompat/widget/u3;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/u3;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->a()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->O:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Z

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->x:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    if-le v0, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    :cond_1
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    const/4 v0, 0x0

    const v1, 0x102000d

    invoke-virtual {p0, v1, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->l(IIZZ)V

    goto :goto_0

    :cond_2
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->x:Z

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    if-le p1, v1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    :cond_1
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    const/4 v0, 0x0

    const v1, 0x102000d

    invoke-virtual {p0, v1, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->l(IIZZ)V

    goto :goto_0

    :cond_2
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMinHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMode(I)V
    .locals 7

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminate(Z)V

    new-instance v0, Landroidx/appcompat/widget/s3;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0503ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [[I

    new-array v4, p1, [I

    aput-object v4, v3, p1

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v2, [I

    aput v1, v5, p1

    invoke-direct {v4, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-direct {v0, p0, p1, v4}, Landroidx/appcompat/widget/s3;-><init>(Landroidx/appcompat/widget/SeslProgressBar;ZLandroid/content/res/ColorStateList;)V

    new-instance v1, Landroidx/appcompat/widget/s3;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0503cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    new-array v4, v2, [[I

    new-array v5, p1, [I

    aput-object v5, v4, p1

    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v6, v2, [I

    aput v3, v6, p1

    invoke-direct {v5, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-direct {v1, p0, v2, v5}, Landroidx/appcompat/widget/s3;-><init>(Landroidx/appcompat/widget/SeslProgressBar;ZLandroid/content/res/ColorStateList;)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, p1

    aput-object v0, v3, v2

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    const/high16 v1, 0x1020000

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000d

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lt/h;->a:Ljava/lang/Object;

    const v0, 0x7f0701b3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lt/h;->a:Ljava/lang/Object;

    const v0, 0x7f07019c

    :goto_1
    invoke-static {p1, v0}, Lu/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->m(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u3;

    invoke-direct {v0}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-object p1, v0, Landroidx/appcompat/widget/u3;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/u3;->k:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->c()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u3;

    invoke-direct {v0}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-object p1, v0, Landroidx/appcompat/widget/u3;->j:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/u3;->l:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->c()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_6

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lx/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    if-ge v1, v0, :cond_3

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    if-ge v1, v0, :cond_3

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->b()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->c()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->d()V

    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->q(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->s(II)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->t()V

    const v2, 0x102000d

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/SeslProgressBar;->e(IIZZZ)V

    const v8, 0x102000f

    iget v9, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/widget/SeslProgressBar;->e(IIZZZ)V

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_6
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->r(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u3;

    invoke-direct {v0}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-object p1, v0, Landroidx/appcompat/widget/u3;->e:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/u3;->g:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->b()V

    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u3;

    invoke-direct {v0}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-object p1, v0, Landroidx/appcompat/widget/u3;->f:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/u3;->h:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->b()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:I

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:I

    const/4 v0, 0x0

    const v1, 0x102000f

    invoke-virtual {p0, v1, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->l(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u3;

    invoke-direct {v0}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-object p1, v0, Landroidx/appcompat/widget/u3;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/u3;->o:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->d()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u3;

    invoke-direct {v0}, Landroidx/appcompat/widget/u3;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:Landroidx/appcompat/widget/u3;

    iput-object p1, v0, Landroidx/appcompat/widget/u3;->n:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/u3;->p:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->d()V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
