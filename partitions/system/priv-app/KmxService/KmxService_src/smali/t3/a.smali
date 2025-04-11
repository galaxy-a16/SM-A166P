.class public abstract Lt3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Lm0/b;

.field public static final c:Lm0/a;

.field public static final d:Lm0/c;

.field public static final e:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lt3/a;->a:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Lm0/b;

    invoke-direct {v0}, Lm0/b;-><init>()V

    sput-object v0, Lt3/a;->b:Lm0/b;

    new-instance v0, Lm0/a;

    invoke-direct {v0}, Lm0/a;-><init>()V

    sput-object v0, Lt3/a;->c:Lm0/a;

    new-instance v0, Lm0/c;

    invoke-direct {v0}, Lm0/c;-><init>()V

    sput-object v0, Lt3/a;->d:Lm0/c;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lt3/a;->e:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public static a(FFFFF)F
    .locals 1

    cmpg-float v0, p4, p2

    if-gtz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-ltz v0, :cond_1

    return p1

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    sub-float/2addr p1, p0

    mul-float/2addr p1, p4

    add-float/2addr p1, p0

    return p1
.end method

.method public static b(IFI)I
    .locals 0

    sub-int/2addr p2, p0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
