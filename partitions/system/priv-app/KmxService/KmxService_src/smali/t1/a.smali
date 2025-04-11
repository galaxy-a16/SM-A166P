.class public final Lt1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lt1/d;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lcom/andrognito/patternlockview/PatternLockView;


# direct methods
.method public constructor <init>(Lcom/andrognito/patternlockview/PatternLockView;Lt1/d;FFFF)V
    .locals 0

    iput-object p1, p0, Lt1/a;->f:Lcom/andrognito/patternlockview/PatternLockView;

    iput-object p2, p0, Lt1/a;->a:Lt1/d;

    iput p3, p0, Lt1/a;->b:F

    iput p4, p0, Lt1/a;->c:F

    iput p5, p0, Lt1/a;->d:F

    iput p6, p0, Lt1/a;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lt1/a;->b:F

    mul-float/2addr v1, v0

    iget v2, p0, Lt1/a;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    iget-object v1, p0, Lt1/a;->a:Lt1/d;

    iput v2, v1, Lt1/d;->b:F

    iget v2, p0, Lt1/a;->d:F

    mul-float/2addr v0, v2

    iget v2, p0, Lt1/a;->e:F

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    iput p1, v1, Lt1/d;->c:F

    iget-object p0, p0, Lt1/a;->f:Lcom/andrognito/patternlockview/PatternLockView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
