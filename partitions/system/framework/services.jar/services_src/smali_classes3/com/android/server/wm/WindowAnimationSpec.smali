.class public Lcom/android/server/wm/WindowAnimationSpec;
.super Ljava/lang/Object;
.source "WindowAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mAllowExtension:Z

.field public mAnimation:Landroid/view/animation/Animation;

.field public final mCanSkipFirstFrame:Z

.field public final mIsAppAnimation:Z

.field public final mPosition:Landroid/graphics/Point;

.field public final mRootTaskBounds:Landroid/graphics/Rect;

.field public mRootTaskClipMode:I

.field public final mThreadLocalTmps:Ljava/lang/ThreadLocal;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mWindowCornerRadius:F


# direct methods
.method public static synthetic $r8$lambda$LPYhkojuA7Rcm_KU4DHewFkMvcY()Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowAnimationSpec$TmpValues-IA;)V

    return-object v0
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 73
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZFZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZFZ)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    .line 52
    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/WindowAnimationSpec$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    if-eqz p2, :cond_0

    .line 83
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 85
    :cond_0
    iput p7, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    .line 86
    iput-boolean p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    .line 87
    iput-boolean p6, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    .line 88
    iput p5, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskClipMode:I

    if-eqz p3, :cond_1

    .line 90
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 94
    :cond_1
    iput-boolean p8, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAllowExtension:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, p4

    .line 65
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    return-void
.end method

.method public static findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .locals 2

    const v0, 0x3f7d70a4    # 0.99f

    const v1, 0x3c23d70a    # 0.01f

    .line 268
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/WindowAnimationSpec;->findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;FF)F

    move-result p0

    return p0
.end method

.method public static findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;FF)F
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3e800000    # 0.25f

    :goto_0
    cmpl-float v2, v1, p2

    if-ltz v2, :cond_1

    .line 289
    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    add-float/2addr v0, v1

    goto :goto_1

    :cond_0
    sub-float/2addr v0, v1

    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .locals 3

    .line 249
    instance-of v0, p0, Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    .line 250
    check-cast p0, Landroid/view/animation/TranslateAnimation;

    return-object p0

    .line 251
    :cond_0
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    .line 252
    check-cast p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    .line 253
    :goto_0
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 254
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 255
    instance-of v2, v1, Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_1

    .line 256
    check-cast v1, Landroid/view/animation/TranslateAnimation;

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V
    .locals 0

    .line 181
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object p0

    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {p0, p1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p0

    .line 182
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p0, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_0
    return-void
.end method

.method public allowExtension()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAllowExtension:Z

    return p0
.end method

.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    .line 149
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 151
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v1, p4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p3, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 152
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 153
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 156
    iget p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskClipMode:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    .line 157
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 158
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 159
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/WindowAnimationSpec;->accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V

    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_0

    .line 164
    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 166
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 168
    :cond_2
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/WindowAnimationSpec;->accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V

    .line 169
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    if-eqz p4, :cond_3

    .line 175
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p3}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result p3

    if-eqz p3, :cond_3

    iget p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    const/4 p3, 0x0

    cmpl-float p3, p0, p3

    if-lez p3, :cond_3

    .line 176
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    return-void
.end method

.method public asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;
    .locals 0

    .line 0
    return-object p0
.end method

.method public calculateStatusBarTransitionStartTime()J
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lcom/android/server/wm/WindowAnimationSpec;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->isXAxisTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->isFullWidthTranslate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowAnimationSpec;->findMiddleOfTranslationFraction(Landroid/view/animation/Interpolator;)F

    move-result p0

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 201
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 202
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v3

    long-to-float v0, v3

    mul-float/2addr v0, p0

    float-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    :goto_0
    sub-long/2addr v1, v3

    return-wide v1

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowAnimationSpec;->findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    move-result p0

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 211
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 212
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v3

    long-to-float v0, v3

    mul-float/2addr v0, p0

    float-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x78

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10b00000001L

    .line 237
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 238
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final findMiddleOfTranslationFraction(Landroid/view/animation/Interpolator;)F
    .locals 1

    const/high16 p0, 0x3f000000    # 0.5f

    const v0, 0x3c23d70a    # 0.01f

    .line 276
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/WindowAnimationSpec;->findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;FF)F

    move-result p0

    return p0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getBackdropColor()I

    move-result p0

    return p0
.end method

.method public getDuration()J
    .locals 2

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRootTaskBounds()Landroid/graphics/Rect;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getShowBackground()Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    move-result p0

    return p0
.end method

.method public getShowWallpaper()Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getShowWallpaper()Z

    move-result p0

    return p0
.end method

.method public hasExtension()Z
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasExtension()Z

    move-result p0

    return p0
.end method
