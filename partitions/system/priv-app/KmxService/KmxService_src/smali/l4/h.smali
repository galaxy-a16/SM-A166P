.class public Ll4/h;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Ll4/v;


# static fields
.field public static final A:Landroid/graphics/Paint;


# instance fields
.field public a:Ll4/g;

.field public final b:[Ll4/t;

.field public final c:[Ll4/t;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/Region;

.field public final l:Landroid/graphics/Region;

.field public m:Ll4/k;

.field public final n:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public final q:Lk4/a;

.field public final t:Ld/s0;

.field public final u:Ll4/m;

.field public v:Landroid/graphics/PorterDuffColorFilter;

.field public w:Landroid/graphics/PorterDuffColorFilter;

.field public x:I

.field public final y:Landroid/graphics/RectF;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Ll4/h;->A:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ll4/k;

    invoke-direct {v0}, Ll4/k;-><init>()V

    invoke-direct {p0, v0}, Ll4/h;-><init>(Ll4/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Ll4/k;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Ln2/h;

    move-result-object p1

    invoke-virtual {p1}, Ln2/h;->a()Ll4/k;

    move-result-object p1

    invoke-direct {p0, p1}, Ll4/h;-><init>(Ll4/k;)V

    return-void
.end method

.method public constructor <init>(Ll4/g;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ll4/t;

    iput-object v1, p0, Ll4/h;->b:[Ll4/t;

    new-array v0, v0, [Ll4/t;

    iput-object v0, p0, Ll4/h;->c:[Ll4/t;

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Ll4/h;->d:Ljava/util/BitSet;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ll4/h;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ll4/h;->g:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ll4/h;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ll4/h;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ll4/h;->j:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Ll4/h;->k:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Ll4/h;->l:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ll4/h;->n:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ll4/h;->p:Landroid/graphics/Paint;

    new-instance v3, Lk4/a;

    invoke-direct {v3}, Lk4/a;-><init>()V

    iput-object v3, p0, Ll4/h;->q:Lk4/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 3
    sget-object v3, Ll4/l;->a:Ll4/m;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Ll4/m;

    invoke-direct {v3}, Ll4/m;-><init>()V

    :goto_0
    iput-object v3, p0, Ll4/h;->u:Ll4/m;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Ll4/h;->y:Landroid/graphics/RectF;

    iput-boolean v1, p0, Ll4/h;->z:Z

    iput-object p1, p0, Ll4/h;->a:Ll4/g;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Ll4/h;->m()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/h;->l([I)Z

    new-instance p1, Ld/s0;

    const/16 v0, 0x1a

    invoke-direct {p1, p0, v0}, Ld/s0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Ll4/h;->t:Ld/s0;

    return-void
.end method

.method public constructor <init>(Ll4/k;)V
    .locals 1

    .line 5
    new-instance v0, Ll4/g;

    invoke-direct {v0, p1}, Ll4/g;-><init>(Ll4/k;)V

    invoke-direct {p0, v0}, Ll4/h;-><init>(Ll4/g;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Ll4/h;->u:Ll4/m;

    iget-object v1, p0, Ll4/h;->a:Ll4/g;

    iget-object v2, v1, Ll4/g;->a:Ll4/k;

    iget v3, v1, Ll4/g;->j:F

    iget-object v4, p0, Ll4/h;->t:Ld/s0;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ll4/m;->a(Ll4/k;FLandroid/graphics/RectF;Ld/s0;Landroid/graphics/Path;)V

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget v0, v0, Ll4/g;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll4/h;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Ll4/h;->a:Ll4/g;

    iget v1, v1, Ll4/g;->i:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p0, p0, Ll4/h;->y:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Ll4/h;->d(I)I

    move-result p1

    :cond_1
    iput p1, p0, Ll4/h;->x:I

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Ll4/h;->d(I)I

    move-result p2

    iput p2, p0, Ll4/h;->x:I

    if-eq p2, p1, :cond_3

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final d(I)I
    .locals 3

    iget-object p0, p0, Ll4/h;->a:Ll4/g;

    iget v0, p0, Ll4/g;->n:F

    iget v1, p0, Ll4/g;->o:F

    add-float/2addr v0, v1

    iget v1, p0, Ll4/g;->m:F

    add-float/2addr v0, v1

    iget-object p0, p0, Ll4/g;->b:Le4/a;

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Le4/a;->a:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    invoke-static {p1, v1}, Lw/a;->b(II)I

    move-result v1

    iget v2, p0, Le4/a;->d:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1}, Le4/a;->a(FI)I

    move-result p0

    move p1, p0

    :cond_1
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v6, Ll4/h;->n:Landroid/graphics/Paint;

    iget-object v0, v6, Ll4/h;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget v0, v0, Ll4/g;->l:I

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int/2addr v0, v9

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v6, Ll4/h;->p:Landroid/graphics/Paint;

    iget-object v0, v6, Ll4/h;->w:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget v0, v0, Ll4/g;->k:F

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget v0, v0, Ll4/g;->l:I

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int/2addr v0, v11

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, v6, Ll4/h;->e:Z

    iget-object v3, v6, Ll4/h;->g:Landroid/graphics/Path;

    const/4 v12, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->u:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v12

    :goto_1
    neg-float v0, v0

    iget-object v4, v6, Ll4/h;->a:Ll4/g;

    iget-object v4, v4, Ll4/g;->a:Ll4/k;

    new-instance v5, Ll4/f;

    invoke-direct {v5, v0}, Ll4/f;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ln2/h;

    invoke-direct {v0, v4}, Ln2/h;-><init>(Ll4/k;)V

    iget-object v13, v4, Ll4/k;->e:Ll4/c;

    invoke-virtual {v5, v13}, Ll4/f;->a(Ll4/c;)Ll4/c;

    move-result-object v13

    iput-object v13, v0, Ln2/h;->e:Ljava/lang/Object;

    iget-object v13, v4, Ll4/k;->f:Ll4/c;

    invoke-virtual {v5, v13}, Ll4/f;->a(Ll4/c;)Ll4/c;

    move-result-object v13

    iput-object v13, v0, Ln2/h;->f:Ljava/lang/Object;

    iget-object v13, v4, Ll4/k;->h:Ll4/c;

    invoke-virtual {v5, v13}, Ll4/f;->a(Ll4/c;)Ll4/c;

    move-result-object v13

    iput-object v13, v0, Ln2/h;->h:Ljava/lang/Object;

    iget-object v4, v4, Ll4/k;->g:Ll4/c;

    invoke-virtual {v5, v4}, Ll4/f;->a(Ll4/c;)Ll4/c;

    move-result-object v4

    iput-object v4, v0, Ln2/h;->g:Ljava/lang/Object;

    new-instance v14, Ll4/k;

    invoke-direct {v14, v0}, Ll4/k;-><init>(Ln2/h;)V

    iput-object v14, v6, Ll4/h;->m:Ll4/k;

    iget-object v13, v6, Ll4/h;->u:Ll4/m;

    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget v15, v0, Ll4/g;->j:F

    iget-object v0, v6, Ll4/h;->j:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, v6, Ll4/h;->a:Ll4/g;

    iget-object v4, v4, Ll4/g;->u:Landroid/graphics/Paint$Style;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v4, v5, :cond_3

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    cmpl-float v4, v4, v12

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v2

    goto :goto_3

    :cond_5
    move v4, v12

    :goto_3
    invoke-virtual {v0, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, v6, Ll4/h;->h:Landroid/graphics/Path;

    const/16 v17, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v13 .. v18}, Ll4/m;->a(Ll4/k;FLandroid/graphics/RectF;Ld/s0;Landroid/graphics/Path;)V

    invoke-virtual/range {p0 .. p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v6, v0, v3}, Ll4/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iput-boolean v1, v6, Ll4/h;->e:Z

    :cond_6
    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget v2, v0, Ll4/g;->p:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_8

    iget v13, v0, Ll4/g;->q:I

    if-lez v13, :cond_8

    if-eq v2, v4, :cond_7

    iget-object v0, v0, Ll4/g;->a:Ll4/k;

    invoke-virtual/range {p0 .. p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll4/k;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    goto :goto_4

    :cond_7
    move v1, v5

    :cond_8
    :goto_4
    if-nez v1, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget v1, v0, Ll4/g;->r:I

    int-to-double v1, v1

    iget v0, v0, Ll4/g;->s:I

    int-to-double v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v1

    double-to-int v0, v13

    iget-object v1, v6, Ll4/h;->a:Ll4/g;

    iget v2, v1, Ll4/g;->r:I

    int-to-double v13, v2

    iget v1, v1, Ll4/g;->s:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v13

    double-to-int v1, v1

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, v6, Ll4/h;->z:Z

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p1}, Ll4/h;->e(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_a
    iget-object v0, v6, Ll4/h;->y:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    if-ltz v1, :cond_11

    if-ltz v2, :cond_11

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v13, v6, Ll4/h;->a:Ll4/g;

    iget v13, v13, Ll4/g;->q:I

    invoke-static {v13, v4, v5, v1}, Landroidx/activity/b;->B(IIII)I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iget-object v13, v6, Ll4/h;->a:Ll4/g;

    iget v13, v13, Ll4/g;->q:I

    invoke-static {v13, v4, v0, v2}, Landroidx/activity/b;->B(IIII)I

    move-result v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v13, v6, Ll4/h;->a:Ll4/g;

    iget v13, v13, Ll4/g;->q:I

    sub-int/2addr v5, v13

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v13, v6, Ll4/h;->a:Ll4/g;

    iget v13, v13, Ll4/g;->q:I

    sub-int/2addr v5, v13

    sub-int/2addr v5, v2

    int-to-float v2, v5

    neg-float v5, v1

    neg-float v13, v2

    invoke-virtual {v4, v5, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, v4}, Ll4/h;->e(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {v7, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_6
    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget-object v1, v0, Ll4/g;->u:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v1, v2, :cond_c

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v1, v2, :cond_b

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_d

    iget-object v4, v0, Ll4/g;->a:Ll4/k;

    invoke-virtual/range {p0 .. p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Ll4/h;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Ll4/k;Landroid/graphics/RectF;)V

    :cond_d
    iget-object v0, v6, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->u:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_e

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_f

    :cond_e
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p1}, Ll4/h;->g(Landroid/graphics/Canvas;)V

    :cond_10
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Ll4/h;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "h"

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget v0, v0, Ll4/g;->r:I

    iget-object v1, p0, Ll4/h;->g:Landroid/graphics/Path;

    iget-object v2, p0, Ll4/h;->q:Lk4/a;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lk4/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ll4/h;->b:[Ll4/t;

    aget-object v3, v3, v0

    iget-object v4, p0, Ll4/h;->a:Ll4/g;

    iget v4, v4, Ll4/g;->q:I

    sget-object v5, Ll4/t;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v2, v4, p1}, Ll4/t;->a(Landroid/graphics/Matrix;Lk4/a;ILandroid/graphics/Canvas;)V

    iget-object v3, p0, Ll4/h;->c:[Ll4/t;

    aget-object v3, v3, v0

    iget-object v4, p0, Ll4/h;->a:Ll4/g;

    iget v4, v4, Ll4/g;->q:I

    invoke-virtual {v3, v5, v2, v4, p1}, Ll4/t;->a(Landroid/graphics/Matrix;Lk4/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Ll4/h;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget v2, v0, Ll4/g;->r:I

    int-to-double v2, v2

    iget v0, v0, Ll4/g;->s:I

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v0, v4

    iget-object p0, p0, Ll4/h;->a:Ll4/g;

    iget v2, p0, Ll4/g;->r:I

    int-to-double v2, v2

    iget p0, p0, Ll4/g;->s:I

    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int p0, v4

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, p0

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v2, Ll4/h;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Ll4/k;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, Ll4/k;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p4, Ll4/k;->f:Ll4/c;

    invoke-interface {p3, p5}, Ll4/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p0, p0, Ll4/h;->a:Ll4/g;

    iget p0, p0, Ll4/g;->j:F

    mul-float/2addr p3, p0

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public g(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v2, p0, Ll4/h;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Ll4/h;->h:Landroid/graphics/Path;

    iget-object v4, p0, Ll4/h;->m:Ll4/k;

    iget-object v5, p0, Ll4/h;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->u:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v6, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    :cond_2
    invoke-virtual {v5, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ll4/h;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Ll4/k;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Ll4/h;->a:Ll4/g;

    iget p0, p0, Ll4/g;->l:I

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Ll4/h;->a:Ll4/g;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget v1, v0, Ll4/g;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Ll4/g;->a:Ll4/k;

    invoke-virtual {p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll4/k;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->a:Ll4/k;

    iget-object v0, v0, Ll4/k;->e:Ll4/c;

    invoke-virtual {p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Ll4/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, Ll4/h;->a:Ll4/g;

    iget v1, v1, Ll4/g;->j:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Ll4/h;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Ll4/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->h:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Ll4/h;->k:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Ll4/h;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Ll4/h;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v2}, Ll4/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object p0, p0, Ll4/h;->l:Landroid/graphics/Region;

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Ll4/h;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    new-instance v1, Le4/a;

    invoke-direct {v1, p1}, Le4/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Ll4/g;->b:Le4/a;

    invoke-virtual {p0}, Ll4/h;->n()V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll4/h;->e:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object p0, p0, Ll4/h;->a:Ll4/g;

    iget-object p0, p0, Ll4/g;->c:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j(F)V
    .locals 2

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget v1, v0, Ll4/g;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Ll4/g;->n:F

    invoke-virtual {p0}, Ll4/h;->n()V

    :cond_0
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v1, v0, Ll4/g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Ll4/g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/h;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final l([I)Z
    .locals 4

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->c:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll4/h;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Ll4/h;->a:Ll4/g;

    iget-object v3, v3, Ll4/g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ll4/h;->a:Ll4/g;

    iget-object v2, v2, Ll4/g;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ll4/h;->p:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object p0, p0, Ll4/h;->a:Ll4/g;

    iget-object p0, p0, Ll4/g;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    if-eq v3, p0, :cond_1

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final m()Z
    .locals 7

    iget-object v0, p0, Ll4/h;->v:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Ll4/h;->w:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Ll4/h;->a:Ll4/g;

    iget-object v3, v2, Ll4/g;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Ll4/g;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Ll4/h;->n:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Ll4/h;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Ll4/h;->v:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Ll4/h;->a:Ll4/g;

    iget-object v3, v2, Ll4/g;->e:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Ll4/g;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Ll4/h;->p:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v2, v4, v6}, Ll4/h;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Ll4/h;->w:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Ll4/h;->a:Ll4/g;

    iget-boolean v3, v2, Ll4/g;->t:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Ll4/g;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v3, p0, Ll4/h;->q:Lk4/a;

    invoke-virtual {v3, v2}, Lk4/a;->a(I)V

    :cond_0
    iget-object v2, p0, Ll4/h;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Ll4/h;->w:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, p0}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ll4/g;

    iget-object v1, p0, Ll4/h;->a:Ll4/g;

    invoke-direct {v0, v1}, Ll4/g;-><init>(Ll4/g;)V

    iput-object v0, p0, Ll4/h;->a:Ll4/g;

    return-object p0
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget v1, v0, Ll4/g;->n:F

    iget v2, v0, Ll4/g;->o:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Ll4/g;->q:I

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Ll4/g;->r:I

    invoke-virtual {p0}, Ll4/h;->m()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll4/h;->e:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0, p1}, Ll4/h;->l([I)Z

    move-result p1

    invoke-virtual {p0}, Ll4/h;->m()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ll4/h;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget v1, v0, Ll4/g;->l:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Ll4/g;->l:I

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p1, p0, Ll4/h;->a:Ll4/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setShapeAppearanceModel(Ll4/k;)V
    .locals 1

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iput-object p1, v0, Ll4/g;->a:Ll4/k;

    invoke-virtual {p0}, Ll4/h;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/h;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iput-object p1, v0, Ll4/g;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Ll4/h;->m()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Ll4/h;->a:Ll4/g;

    iget-object v1, v0, Ll4/g;->g:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Ll4/g;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Ll4/h;->m()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
