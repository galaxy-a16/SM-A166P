.class public final Landroidx/appcompat/util/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:I

.field public final c:F


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint;F)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Landroidx/appcompat/util/b;->b:I

    iput-object p2, p0, Landroidx/appcompat/util/b;->a:Landroid/graphics/Paint;

    iput p3, p0, Landroidx/appcompat/util/b;->c:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/appcompat/util/b;->b:I

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-lez v2, :cond_3

    if-gtz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v5, v1, v5

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v8, v5, v7

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v8, :cond_1

    sub-float v7, v5, v7

    const v8, 0x3ecccccd    # 0.4f

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const v8, 0x3e0e1bf0

    mul-float/2addr v7, v8

    sub-float v7, v9, v7

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_0
    float-to-double v10, v5

    const-wide v12, 0x3fe3333333333333L    # 0.6

    cmpl-double v8, v10, v12

    if-lez v8, :cond_2

    const v8, 0x3f19999a    # 0.6f

    sub-float/2addr v5, v8

    const v8, 0x3e99999a    # 0.3f

    div-float/2addr v5, v8

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v8, 0x3d2de440

    mul-float/2addr v5, v8

    add-float/2addr v9, v5

    :cond_2
    div-float/2addr v3, v1

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v3, v5

    div-float/2addr v2, v1

    mul-float/2addr v2, v5

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const v13, 0x430030a4    # 128.19f

    mul-float/2addr v7, v13

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v13, 0x1

    aput-object v3, v11, v13

    const-string v3, "L %f %f "

    invoke-static {v8, v3, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v6, v15, v12

    const v16, 0x42a73d71    # 83.62f

    mul-float v9, v9, v16

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v15, v13

    const v16, 0x40947ae1    # 4.64f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v15, v10

    const v17, 0x4286e666    # 67.45f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v18, 0x3

    aput-object v17, v15, v18

    const v19, 0x4155c28f    # 13.36f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/16 v20, 0x4

    aput-object v19, v15, v20

    const v21, 0x424ca3d7    # 51.16f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v15, v22

    const-string v4, "C %f %f %f %f %f %f "

    invoke-static {v8, v4, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-array v5, v14, [Ljava/lang/Object;

    const v23, 0x41b08f5c    # 22.07f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v5, v12

    const v24, 0x420b70a4    # 34.86f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v5, v13

    aput-object v24, v5, v10

    aput-object v23, v5, v18

    aput-object v21, v5, v20

    aput-object v19, v5, v22

    invoke-static {v8, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v17, v14, v12

    aput-object v16, v14, v13

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v14, v10

    aput-object v6, v14, v18

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v14, v20

    aput-object v6, v14, v22

    invoke-static {v8, v4, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v12

    aput-object v6, v9, v13

    invoke-static {v8, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "M 0 0 "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Z"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/annotation/i0;->l(Ljava/lang/String;)[Lw/f;

    move-result-object v2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-static {v2, v3}, Lw/f;->b([Lw/f;Landroid/graphics/Path;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget v5, v0, Landroidx/appcompat/util/b;->c:F

    invoke-virtual {v2, v5, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    :goto_2
    iget-object v0, v0, Landroidx/appcompat/util/b;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/util/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/util/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
