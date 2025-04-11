.class public Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Long;

.field public static final k:Ljava/lang/Long;

.field public static final l:Landroid/view/animation/LinearInterpolator;

.field public static final m:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Landroid/animation/ValueAnimator;

.field public d:J

.field public e:J

.field public f:I

.field public g:I

.field public h:F

.field public i:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->j:Ljava/lang/Long;

    const-wide/16 v0, 0x15e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->k:Ljava/lang/Long;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->l:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->m:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->a:Z

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->b:Z

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->b()V

    return-void
.end method

.method public constructor <init>(I[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->b()V

    iput p1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->f:I

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    const p2, 0x102002e

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->a:Z

    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->b:Z

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->b()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    iget p0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->f:I

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {p0, v0}, Lw/a;->b(II)I

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 3

    sget-object v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->j:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->d:J

    sget-object v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->k:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->e:J

    new-instance v0, Lc/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lc/b;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    return-void
.end method

.method public final c(F)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    sget-object p1, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->l:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide p0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->d:J

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final d(Landroid/content/res/TypedArray;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v2, 0x19000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->f:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->g:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    const v2, 0x102002e

    invoke-virtual {p0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->h:F

    iget v2, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->i:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->g:I

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_3

    :goto_1
    int-to-float p0, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, p0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float p0, v1

    neg-float v1, v2

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_4
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasFocusStateSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4

    sget-object v0, Lb/a;->x:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->d(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SeslRecoilDrawable"

    const-string v3, "Failed to parse!!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const p1, 0x102002e

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-object p1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final isProjected()Z
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onStateChange([I)Z
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v2, v0, :cond_3

    aget v7, p1, v2

    const v8, 0x101009c

    if-eq v7, v8, :cond_2

    const v8, 0x10100a7

    if-eq v7, v8, :cond_1

    const v8, 0x1010367

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v6

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v5, :cond_6

    iput-boolean v6, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->b:Z

    invoke-virtual {p0, v2}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->c(F)V

    goto :goto_5

    :cond_6
    if-eqz v4, :cond_7

    const v1, 0x3f19999a    # 0.6f

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    const v1, 0x3f4ccccd    # 0.8f

    :goto_4
    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->c(F)V

    goto :goto_5

    :cond_8
    iget-boolean v3, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->a:Z

    if-eqz v3, :cond_b

    if-nez v0, :cond_b

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget-boolean v4, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->b:Z

    if-nez v4, :cond_a

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_a
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v1

    const/4 v1, 0x0

    aput v1, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    sget-object v1, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->m:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->e:J

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :cond_b
    :goto_5
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->a:Z

    iput-boolean v5, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->b:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public final setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setHotspot(FF)V

    iput p1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->h:F

    iput p2, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->i:F

    return-void
.end method

.method public final setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    const p1, 0x102002e

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const p1, 0x102002e

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->a()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method
