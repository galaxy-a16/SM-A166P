.class public final Lc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:Landroid/view/animation/Interpolator;

.field public static h:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/view/View;

.field public b:F

.field public c:Z

.field public final d:Landroid/animation/ValueAnimator;

.field public e:Z

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d;->c:Z

    iput-boolean v0, p0, Lc/d;->e:Z

    iput-object p1, p0, Lc/d;->a:Landroid/view/View;

    iput-object p2, p0, Lc/d;->f:Landroid/content/Context;

    instance-of p1, p1, Landroid/view/ViewGroup;

    iput-boolean p1, p0, Lc/d;->c:Z

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lc/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    sget-object v1, Lc/d;->g:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_0

    const v1, 0x7f010065

    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lc/d;->g:Landroid/view/animation/Interpolator;

    :cond_0
    sget-object v1, Lc/d;->h:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    const v1, 0x7f010066

    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    sput-object p2, Lc/d;->h:Landroid/view/animation/Interpolator;

    :cond_1
    new-instance p2, Lc/b;

    invoke-direct {p2, p0, v0}, Lc/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
