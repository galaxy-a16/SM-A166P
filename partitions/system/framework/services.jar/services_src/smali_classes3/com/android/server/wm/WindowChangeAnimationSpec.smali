.class public Lcom/android/server/wm/WindowChangeAnimationSpec;
.super Ljava/lang/Object;
.source "WindowChangeAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public mAnimation:Landroid/view/animation/Animation;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mIsAppAnimation:Z

.field public final mIsThumbnail:Z

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mThreadLocalTmps:Ljava/lang/ThreadLocal;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$vitfewbiFedy3AD_blhhfyU1ohA()Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues-IA;)V

    return-object v0
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/server/wm/WindowChangeAnimationSpec$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/WindowChangeAnimationSpec$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 62
    iput-boolean p5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    .line 63
    iput-boolean p6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    const/high16 p1, 0x43a80000    # 336.0f

    mul-float/2addr p4, p1

    float-to-int p1, p4

    int-to-long p1, p1

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createBoundsInterpolator(JLandroid/view/DisplayInfo;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    .line 141
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v1, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 143
    iget-object p0, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 144
    iget-object p0, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 147
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    .line 148
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 152
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, p4, v1

    const/4 v1, 0x1

    aput v2, p4, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 153
    aput v2, p4, v1

    const/4 v3, 0x0

    aput v2, p4, v3

    .line 154
    invoke-virtual {p3, p4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 155
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget p4, p3, v3

    div-float p4, v2, p4

    aput p4, p3, v3

    .line 156
    aget p4, p3, v1

    div-float/2addr v2, p4

    aput v2, p3, v1

    .line 157
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget-object v0, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v2, v0, v3

    mul-float/2addr p4, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr p4, v3

    float-to-int p4, p4

    iput p4, p0, Landroid/graphics/Rect;->left:I

    .line 159
    iget p4, p3, Landroid/graphics/Rect;->right:I

    int-to-float p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, v3

    float-to-int p4, p4

    iput p4, p0, Landroid/graphics/Rect;->right:I

    .line 160
    iget p4, p3, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    aget v0, v0, v1

    mul-float/2addr p4, v0

    add-float/2addr p4, v3

    float-to-int p4, p4

    iput p4, p0, Landroid/graphics/Rect;->top:I

    .line 161
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    mul-float/2addr p3, v0

    add-float/2addr p3, v3

    float-to-int p3, p3

    iput p3, p0, Landroid/graphics/Rect;->bottom:I

    .line 162
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .locals 6

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 169
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-float p0, v2

    const v2, 0x3f7d70a4    # 0.99f

    mul-float/2addr p0, v2

    float-to-long v2, p0

    add-long/2addr v2, v0

    const-wide/16 v4, 0x78

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final createBoundsInterpolator(JLandroid/view/DisplayInfo;)V
    .locals 9

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    long-to-float v3, p1

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    float-to-long v5, v3

    .line 93
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget-object v7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    const v7, 0x3e99999a    # 0.3f

    add-float/2addr v3, v7

    .line 95
    iget-object v8, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v8, v4

    add-float/2addr v8, v7

    .line 97
    iget-boolean v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    .line 98
    new-instance p3, Landroid/view/animation/AnimationSet;

    invoke-direct {p3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 99
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 100
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez v0, :cond_1

    sub-long v4, p1, v5

    .line 102
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 104
    :cond_1
    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    div-float v0, v7, v3

    div-float/2addr v7, v8

    .line 107
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v0, v0, v7, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 108
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 109
    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iput-object p3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 111
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 111
    invoke-virtual {p3, p1, p2, v0, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_1

    .line 114
    :cond_2
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 115
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v3, v7, v8, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 116
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez v0, :cond_3

    sub-long v5, p1, v5

    .line 118
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 120
    :cond_3
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 121
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-direct {v0, v3, v6, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 128
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 129
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 131
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 132
    iput-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 133
    iget-object p1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget p2, p3, Landroid/view/DisplayInfo;->appWidth:I

    iget p3, p3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v4, p1, p0, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 185
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10b00000001L

    .line 190
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 191
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
