.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;
.implements Landroidx/core/view/o;


# static fields
.field public static final x0:F

.field public static final y0:Le0/j;

.field public static final z0:[I


# instance fields
.field public final A:Landroidx/core/view/s;

.field public final B:Landroidx/core/view/p;

.field public C:F

.field public E:Le0/l;

.field public F:Z

.field public G:I

.field public H:Z

.field public final I:Landroid/graphics/Rect;

.field public K:I

.field public L:Z

.field public final N:Z

.field public O:Z

.field public P:Z

.field public Q:Ld/j;

.field public R:I

.field public T:I

.field public V:I

.field public final a:F

.field public b:J

.field public final c:Landroid/graphics/Rect;

.field public d:Landroid/widget/OverScroller;

.field public final e:Landroid/widget/EdgeEffect;

.field public final f:Landroid/widget/EdgeEffect;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Landroid/view/View;

.field public k:Z

.field public l:Landroid/view/VelocityTracker;

.field public l0:J

.field public m:Z

.field public m0:J

.field public n:Z

.field public final n0:J

.field public o0:J

.field public p:I

.field public p0:Z

.field public q:I

.field public final q0:Landroid/content/Context;

.field public r0:I

.field public s0:Z

.field public t:I

.field public final t0:[I

.field public u:I

.field public u0:I

.field public final v:[I

.field public v0:I

.field public final w:[I

.field public final w0:Le0/i;

.field public x:I

.field public y:I

.field public z:Le0/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroidx/core/widget/NestedScrollView;->x0:F

    new-instance v0, Le0/j;

    invoke-direct {v0}, Le0/j;-><init>()V

    sput-object v0, Landroidx/core/widget/NestedScrollView;->y0:Le0/j;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroidx/core/widget/NestedScrollView;->z0:[I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v0, 0x7f03035f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->i:Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->n:Z

    const/4 v3, -0x1

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->u:I

    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroidx/core/widget/NestedScrollView;->v:[I

    new-array v5, v4, [I

    iput-object v5, p0, Landroidx/core/widget/NestedScrollView;->w:[I

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->F:Z

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->G:I

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->H:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/core/widget/NestedScrollView;->I:Landroid/graphics/Rect;

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->K:I

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Le0/i;

    invoke-direct {v6, p0, v1}, Le0/i;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    new-instance v6, Le0/i;

    invoke-direct {v6, p0, v4}, Le0/i;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    new-instance v6, Le0/i;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7}, Le0/i;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->L:Z

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->N:Z

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->O:Z

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->P:Z

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->R:I

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->T:I

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->V:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroidx/core/widget/NestedScrollView;->l0:J

    iput-wide v6, p0, Landroidx/core/widget/NestedScrollView;->m0:J

    const-wide/16 v8, 0x12c

    iput-wide v8, p0, Landroidx/core/widget/NestedScrollView;->n0:J

    iput-wide v6, p0, Landroidx/core/widget/NestedScrollView;->o0:J

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->p0:Z

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->r0:I

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->s0:Z

    new-array v3, v4, [I

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->t0:[I

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->v0:I

    new-instance v3, Landroidx/appcompat/widget/s2;

    invoke-direct {v3, p0, v1}, Landroidx/appcompat/widget/s2;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Le0/i;

    invoke-direct {v4, p0, v2}, Le0/i;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    iput-object v4, p0, Landroidx/core/widget/NestedScrollView;->w0:Le0/i;

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->q0:Landroid/content/Context;

    invoke-static {}, Lfc/c;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1, p2}, Le0/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/widget/EdgeEffect;

    invoke-direct {v6, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v6, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-static {}, Lfc/c;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1, p2}, Le0/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v6

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/widget/EdgeEffect;

    invoke-direct {v6, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v6, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x43200000    # 160.0f

    mul-float/2addr v6, v7

    const v7, 0x43c10b3d

    mul-float/2addr v6, v7

    const v7, 0x3f570a3d    # 0.84f

    mul-float/2addr v6, v7

    iput v6, p0, Landroidx/core/widget/NestedScrollView;->a:F

    new-instance v6, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v6, 0x40000

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroidx/core/widget/NestedScrollView;->p:I

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroidx/core/widget/NestedScrollView;->q:I

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, p0, Landroidx/core/widget/NestedScrollView;->t:I

    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object v3, Landroidx/core/widget/NestedScrollView;->z0:[I

    invoke-virtual {p1, p2, v3, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroidx/core/view/s;

    invoke-direct {p1}, Landroidx/core/view/s;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->A:Landroidx/core/view/s;

    new-instance p1, Landroidx/core/view/p;

    invoke-direct {p1, p0}, Landroidx/core/view/p;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    sget-object p1, Landroidx/core/widget/NestedScrollView;->y0:Le0/j;

    invoke-static {p0, p1}, Landroidx/core/view/x0;->g(Landroid/view/View;Landroidx/core/view/c;)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    iget v0, p0, Landroidx/core/widget/NestedScrollView;->C:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->C:F

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected theme to define listPreferredItemHeight."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p0, Landroidx/core/widget/NestedScrollView;->C:F

    return p0
.end method

.method public static synthetic h(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->setupGoToTop(I)V

    return-void
.end method

.method public static r(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->r(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setupGoToTop(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "enabled_accessibility_services"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static y(Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lv9/a;->Y(Landroid/view/InputDevice;I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to change PointerIcon to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NestedScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final A(II)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/p;->f(II)Z

    move-result p0

    return p0
.end method

.method public final B(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v0, v2, v1}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-static {v1}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    invoke-static {v1, v2, p0}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    return v3
.end method

.method public final a(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->A:Landroidx/core/view/s;

    if-ne p4, p1, :cond_0

    iput p3, p2, Landroidx/core/view/s;->c:I

    goto :goto_0

    :cond_0
    iput p3, p2, Landroidx/core/view/s;->b:I

    :goto_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4}, Landroidx/core/widget/NestedScrollView;->A(II)Z

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->A:Landroidx/core/view/s;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iput v1, p1, Landroidx/core/view/s;->c:I

    goto :goto_0

    :cond_0
    iput v1, p1, Landroidx/core/view/s;->b:I

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->g(I)V

    return-void
.end method

.method public final c(Landroid/view/View;II[II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p4

    move v3, p3

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->l(I[III[I)Z

    return-void
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollRange()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result p0

    return p0
.end method

.method public final computeScroll()V
    .locals 15

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget v1, p0, Landroidx/core/widget/NestedScrollView;->y:I

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    if-lez v1, :cond_1

    invoke-static {v4}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_1

    neg-int v6, v1

    int-to-float v6, v6

    mul-float/2addr v6, v7

    int-to-float v8, v2

    div-float/2addr v6, v8

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-static {v4, v6, v5}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0

    :cond_1
    if-gez v1, :cond_3

    invoke-static {v3}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_3

    int-to-float v6, v1

    mul-float/2addr v6, v7

    int-to-float v2, v2

    div-float/2addr v6, v2

    div-float/2addr v2, v7

    invoke-static {v3, v6, v5}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    :cond_2
    :goto_0
    sub-int/2addr v1, v2

    :cond_3
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->y:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->w:[I

    const/4 v2, 0x1

    const/4 v13, 0x0

    aput v13, v0, v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    move-object v5, p0

    move-object v7, v0

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Landroidx/core/widget/NestedScrollView;->l(I[III[I)Z

    aget v5, v0, v2

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v14

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v6, v5, v14}, Landroidx/core/widget/NestedScrollView;->v(IIII)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int v8, v6, v5

    sub-int/2addr v1, v8

    aput v13, v0, v2

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/core/widget/NestedScrollView;->v:[I

    const/4 v12, 0x1

    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    move v10, v1

    move-object v11, v0

    invoke-virtual/range {v5 .. v12}, Landroidx/core/view/p;->d(I[IIII[II)Z

    move-result v5

    iget-object v6, p0, Landroidx/core/widget/NestedScrollView;->v:[I

    if-eqz v5, :cond_4

    aput v13, v6, v13

    aput v13, v6, v2

    :cond_4
    aget v5, v6, v13

    if-ltz v5, :cond_5

    aget v5, v6, v2

    if-gez v5, :cond_6

    :cond_5
    aput v13, v6, v13

    aput v13, v6, v2

    :cond_6
    aget v0, v0, v2

    sub-int/2addr v1, v0

    :cond_7
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_8

    if-ne v0, v2, :cond_9

    if-lez v14, :cond_9

    :cond_8
    move v13, v2

    :cond_9
    if-eqz v13, :cond_b

    if-gez v1, :cond_a

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_a
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_b
    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->g(I)V

    :cond_c
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->g(I)V

    :goto_2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->r(Landroid/view/View;F)V

    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez p0, :cond_1

    sub-int/2addr v2, p0

    goto :goto_0

    :cond_1
    if-le p0, v0, :cond_2

    sub-int/2addr p0, v0

    add-int/2addr v2, p0

    :cond_2
    :goto_0
    return v2
.end method

.method public final d(Landroid/view/View;IIIII[I)V
    .locals 0

    invoke-virtual {p0, p5, p6, p7}, Landroidx/core/widget/NestedScrollView;->t(II[I)V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->q0:Landroid/content/Context;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x9

    if-eq v2, v7, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v8, v0, Landroidx/core/widget/NestedScrollView;->s0:Z

    if-eqz v8, :cond_1

    iget-object v8, v0, Landroidx/core/widget/NestedScrollView;->t0:[I

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    iget v9, v0, Landroidx/core/widget/NestedScrollView;->v0:I

    iget v10, v0, Landroidx/core/widget/NestedScrollView;->r0:I

    aget v8, v8, v6

    sub-int/2addr v10, v8

    sub-int/2addr v9, v10

    iput v9, v0, Landroidx/core/widget/NestedScrollView;->u0:I

    if-gez v10, :cond_1

    iput v9, v0, Landroidx/core/widget/NestedScrollView;->v0:I

    iput v8, v0, Landroidx/core/widget/NestedScrollView;->r0:I

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    iput-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->P:Z

    iget-boolean v9, v0, Landroidx/core/widget/NestedScrollView;->L:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v0, Landroidx/core/widget/NestedScrollView;->N:Z

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_0

    :cond_2
    move v9, v5

    :goto_0
    if-nez v9, :cond_3

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->P:Z

    :cond_3
    iget-boolean v9, v0, Landroidx/core/widget/NestedScrollView;->P:Z

    if-eqz v9, :cond_5

    if-ne v8, v4, :cond_5

    invoke-static {}, Lh9/a;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_4

    move v9, v6

    goto :goto_1

    :cond_4
    move v9, v5

    :goto_1
    if-nez v9, :cond_5

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->P:Z

    :cond_5
    iget-boolean v9, v0, Landroidx/core/widget/NestedScrollView;->P:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->P:Z

    :cond_6
    :goto_2
    iget-boolean v8, v0, Landroidx/core/widget/NestedScrollView;->P:Z

    if-nez v8, :cond_7

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    if-nez v12, :cond_8

    new-instance v12, Ld/j;

    invoke-direct {v12, v0}, Ld/j;-><init>(Landroidx/core/widget/NestedScrollView;)V

    iput-object v12, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    :cond_8
    iget v12, v0, Landroidx/core/widget/NestedScrollView;->R:I

    if-lez v12, :cond_9

    iget v12, v0, Landroidx/core/widget/NestedScrollView;->T:I

    if-gtz v12, :cond_a

    :cond_9
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/high16 v13, 0x41c80000    # 25.0f

    invoke-static {v6, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v12, v14

    float-to-int v12, v12

    iput v12, v0, Landroidx/core/widget/NestedScrollView;->R:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v6, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    add-float/2addr v12, v14

    float-to-int v12, v12

    iput v12, v0, Landroidx/core/widget/NestedScrollView;->T:I

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    goto :goto_3

    :cond_b
    move v10, v5

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v12

    if-ne v12, v4, :cond_c

    move v12, v6

    goto :goto_4

    :cond_c
    move v12, v5

    :goto_4
    iget v13, v0, Landroidx/core/widget/NestedScrollView;->R:I

    const-wide/16 v14, 0x0

    if-le v9, v13, :cond_d

    iget v13, v0, Landroidx/core/widget/NestedScrollView;->T:I

    sub-int v13, v10, v13

    iget v4, v0, Landroidx/core/widget/NestedScrollView;->u0:I

    sub-int/2addr v13, v4

    if-lt v9, v13, :cond_1e

    :cond_d
    if-lez v8, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v8, v4, :cond_1e

    if-eqz v11, :cond_1e

    if-ltz v9, :cond_e

    iget v4, v0, Landroidx/core/widget/NestedScrollView;->R:I

    if-gt v9, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    if-gtz v4, :cond_e

    iget-boolean v4, v0, Landroidx/core/widget/NestedScrollView;->p0:Z

    if-nez v4, :cond_1e

    :cond_e
    iget v4, v0, Landroidx/core/widget/NestedScrollView;->T:I

    sub-int v4, v10, v4

    if-lt v9, v4, :cond_f

    if-gt v9, v10, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    if-lt v4, v11, :cond_f

    iget-boolean v4, v0, Landroidx/core/widget/NestedScrollView;->p0:Z

    if-nez v4, :cond_1e

    :cond_f
    if-eqz v12, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    const/16 v11, 0x20

    if-eq v4, v11, :cond_1e

    :cond_10
    if-eqz v12, :cond_1e

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-nez v3, :cond_1e

    iget-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    if-nez v3, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/core/widget/NestedScrollView;->o0:J

    :cond_11
    const/4 v3, 0x7

    const/16 v4, 0xa

    if-eq v2, v3, :cond_18

    if-eq v2, v7, :cond_14

    if-eq v2, v4, :cond_12

    goto/16 :goto_9

    :cond_12
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    invoke-static {}, Lva/n;->s()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/widget/NestedScrollView;->y(Landroid/view/MotionEvent;I)V

    iput-wide v14, v0, Landroidx/core/widget/NestedScrollView;->m0:J

    iput-wide v14, v0, Landroidx/core/widget/NestedScrollView;->o0:J

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->p0:Z

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v2, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto/16 :goto_a

    :cond_14
    iput-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    if-ltz v9, :cond_17

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->R:I

    if-gt v9, v2, :cond_17

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/NestedScrollView;->m0:J

    :cond_15
    :goto_5
    invoke-static {}, Lva/n;->v()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/widget/NestedScrollView;->y(Landroid/view/MotionEvent;I)V

    :cond_16
    const/4 v1, 0x2

    goto :goto_6

    :cond_17
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->T:I

    sub-int v2, v10, v2

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->u0:I

    sub-int/2addr v2, v3

    if-lt v9, v2, :cond_1d

    if-gt v9, v10, :cond_1d

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/NestedScrollView;->m0:J

    goto :goto_7

    :cond_18
    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    if-nez v2, :cond_19

    iput-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_a

    :cond_19
    if-ltz v9, :cond_1a

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->R:I

    if-gt v9, v2, :cond_1a

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/NestedScrollView;->m0:J

    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->p0:Z

    if-eqz v2, :cond_15

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->V:I

    if-ne v2, v6, :cond_16

    goto :goto_5

    :goto_6
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->V:I

    goto :goto_8

    :cond_1a
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->T:I

    sub-int v2, v10, v2

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->u0:I

    sub-int/2addr v2, v3

    if-lt v9, v2, :cond_1d

    if-gt v9, v10, :cond_1d

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/NestedScrollView;->m0:J

    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->p0:Z

    if-eqz v2, :cond_1b

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->V:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    :cond_1b
    :goto_7
    invoke-static {}, Lva/n;->u()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/widget/NestedScrollView;->y(Landroid/view/MotionEvent;I)V

    :cond_1c
    iput v6, v0, Landroidx/core/widget/NestedScrollView;->V:I

    :goto_8
    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1d
    :goto_9
    return v6

    :cond_1e
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lva/n;->s()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/widget/NestedScrollView;->y(Landroid/view/MotionEvent;I)V

    :cond_1f
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->R:I

    if-le v9, v2, :cond_20

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->T:I

    sub-int/2addr v10, v2

    if-lt v9, v10, :cond_21

    :cond_20
    if-lez v8, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v8, v2, :cond_22

    :cond_21
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->p0:Z

    :cond_22
    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    if-nez v2, :cond_23

    iget-wide v2, v0, Landroidx/core/widget/NestedScrollView;->o0:J

    cmp-long v2, v2, v14

    if-eqz v2, :cond_24

    :cond_23
    invoke-static {}, Lva/n;->s()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/widget/NestedScrollView;->y(Landroid/view/MotionEvent;I)V

    :cond_24
    iput-wide v14, v0, Landroidx/core/widget/NestedScrollView;->m0:J

    iput-wide v14, v0, Landroidx/core/widget/NestedScrollView;->o0:J

    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    :goto_a
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->o(Landroid/view/KeyEvent;)Z

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

.method public final dispatchNestedFling(FFZ)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/p;->a(FFZ)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->r(Landroid/view/View;F)V

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/p;->b(FF)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->l(I[III[I)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    const/4 v7, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p5

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/p;->d(I[IIII[II)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v4

    iget-object v5, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    if-nez v5, :cond_0

    new-instance v5, Ld/j;

    invoke-direct {v5, p0}, Ld/j;-><init>(Landroidx/core/widget/NestedScrollView;)V

    iput-object v5, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    :cond_0
    iget v5, v0, Landroidx/core/widget/NestedScrollView;->R:I

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v5, v0, Landroidx/core/widget/NestedScrollView;->T:I

    if-gtz v5, :cond_2

    :cond_1
    iget-object v5, v0, Landroidx/core/widget/NestedScrollView;->q0:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v6, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v0, Landroidx/core/widget/NestedScrollView;->R:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v0, Landroidx/core/widget/NestedScrollView;->T:I

    :cond_2
    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v7, p1

    goto :goto_0

    :cond_3
    move-object/from16 v7, p1

    move v3, v5

    :goto_0
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    move v8, v6

    goto :goto_1

    :cond_4
    move v8, v5

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, -0x1

    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->I:Landroid/graphics/Rect;

    const/4 v13, 0x0

    if-eqz v10, :cond_b

    if-eq v10, v6, :cond_9

    if-eq v10, v9, :cond_7

    const/4 v14, 0x3

    if-eq v10, v14, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v14, v0, Landroidx/core/widget/NestedScrollView;->H:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->K:I

    if-nez v14, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :cond_7
    iget-boolean v14, v0, Landroidx/core/widget/NestedScrollView;->H:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->K:I

    if-ne v14, v9, :cond_d

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_8

    return v6

    :cond_8
    iput v6, v0, Landroidx/core/widget/NestedScrollView;->K:I

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :cond_9
    iget-boolean v14, v0, Landroidx/core/widget/NestedScrollView;->H:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->K:I

    if-ne v14, v9, :cond_d

    invoke-virtual {p0, v11}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Le0/i;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Le0/i;-><init>(Landroidx/core/widget/NestedScrollView;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    iput v6, v0, Landroidx/core/widget/NestedScrollView;->K:I

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :cond_b
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->F:Z

    iget-boolean v14, v0, Landroidx/core/widget/NestedScrollView;->H:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->K:I

    if-eq v14, v9, :cond_d

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_2

    :cond_c
    invoke-direct {p0, v9}, Landroidx/core/widget/NestedScrollView;->setupGoToTop(I)V

    throw v13

    :cond_d
    :goto_2
    iget v14, v0, Landroidx/core/widget/NestedScrollView;->R:I

    const-wide/16 v5, 0x0

    if-le v2, v14, :cond_e

    iget v14, v0, Landroidx/core/widget/NestedScrollView;->T:I

    sub-int/2addr v3, v14

    if-lt v2, v3, :cond_17

    :cond_e
    if-eqz v4, :cond_17

    if-eqz v8, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_f

    goto/16 :goto_5

    :cond_f
    iget-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    if-nez v3, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/core/widget/NestedScrollView;->o0:J

    :cond_10
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->H:Z

    if-eqz v3, :cond_16

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->K:I

    if-ne v3, v9, :cond_16

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_4

    :cond_11
    const/4 v1, 0x1

    iput v1, v0, Landroidx/core/widget/NestedScrollView;->K:I

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :pswitch_1
    iget-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->H:Z

    if-eqz v1, :cond_13

    iget v1, v0, Landroidx/core/widget/NestedScrollView;->K:I

    if-ne v1, v9, :cond_13

    const-string v1, "NestedScrollView"

    const-string v2, "pen up false GOTOTOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v11}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    rsub-int/lit8 v5, v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    const/16 v3, 0xfa

    invoke-virtual {p0, v5, v1, v3}, Landroidx/core/widget/NestedScrollView;->z(III)V

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_12
    const/4 v2, 0x0

    :goto_3
    invoke-direct {p0, v2}, Landroidx/core/widget/NestedScrollView;->setupGoToTop(I)V

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    throw v13

    :cond_13
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    iput-wide v5, v0, Landroidx/core/widget/NestedScrollView;->m0:J

    iput-wide v5, v0, Landroidx/core/widget/NestedScrollView;->o0:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->p0:Z

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    goto :goto_6

    :pswitch_2
    iget-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->H:Z

    if-eqz v3, :cond_16

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->K:I

    if-eq v3, v9, :cond_16

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    invoke-direct {p0, v9}, Landroidx/core/widget/NestedScrollView;->setupGoToTop(I)V

    throw v13

    :cond_16
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_17
    :goto_5
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    iput-wide v5, v0, Landroidx/core/widget/NestedScrollView;->m0:J

    iput-wide v5, v0, Landroidx/core/widget/NestedScrollView;->o0:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->O:Z

    iput-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->p0:Z

    :goto_6
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p0}, Le0/k;->a(Landroid/view/ViewGroup;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v7

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    invoke-static {p0}, Le0/k;->a(Landroid/view/ViewGroup;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v8

    sub-int/2addr v5, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    :cond_1
    int-to-float v7, v7

    int-to-float v6, v6

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {p0}, Le0/k;->a(Landroid/view/ViewGroup;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v3, v6

    :cond_4
    invoke-static {p0}, Le0/k;->a(Landroid/view/ViewGroup;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    :cond_5
    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v4

    const/4 v3, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    return-void
.end method

.method public final e(Landroid/view/View;IIIII)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p5, p6, p1}, Landroidx/core/widget/NestedScrollView;->t(II[I)V

    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    invoke-virtual {p0, p1}, Landroidx/core/view/p;->g(I)V

    return-void
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    sub-int/2addr v0, p0

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_1

    int-to-float p0, v0

    int-to-float v0, v2

    div-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getMaxScrollAmount()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->A:Landroidx/core/view/s;

    iget v0, p0, Landroidx/core/view/s;->b:I

    iget p0, p0, Landroidx/core/view/s;->c:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getTopFadingEdgeStrength()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-ge p0, v0, :cond_1

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final hasNestedScrollingParent()Z
    .locals 1

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/p;->e(I)Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final i(I)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v2, v4}, Landroidx/core/widget/NestedScrollView;->s(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->k(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iput v4, p0, Landroidx/core/widget/NestedScrollView;->y:I

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->m(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    const/16 v1, 0x21

    const/16 v4, 0x82

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v3

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    neg-int v2, v2

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->m(I)V

    :goto_2
    const/4 p1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Landroidx/core/widget/NestedScrollView;->s(Landroid/view/View;II)Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_6
    return p1
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    iget-boolean p0, p0, Landroidx/core/view/p;->d:Z

    return p0
.end method

.method public final j()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final k(Landroid/graphics/Rect;)I
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    sub-int v4, v3, v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_4

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le p0, v0, :cond_3

    iget p0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v2

    goto :goto_1

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v4

    :goto_1
    add-int/2addr p0, v1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_6

    if-ge v7, v4, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_3
    return v1
.end method

.method public final l(I[III[I)Z
    .locals 6

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/p;->c(I[III[I)Z

    move-result p0

    return p0
.end method

.method public final m(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xfa

    invoke-virtual {p0, v1, p1, v0}, Landroidx/core/widget/NestedScrollView;->z(III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final measureChild(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v0

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, p5

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p5

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p5

    add-int/2addr p0, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final n()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->g(I)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    return-void
.end method

.method public final o(Landroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v5

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v4, 0x82

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0x13

    const/16 v6, 0x21

    if-eq v1, v5, :cond_c

    const/16 v5, 0x14

    if-eq v1, v5, :cond_a

    const/16 v5, 0x3e

    if-eq v1, v5, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    if-ne v6, v4, :cond_7

    move p1, v2

    goto :goto_3

    :cond_7
    move p1, v3

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    if-le p1, v2, :cond_9

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    if-gez p1, :cond_9

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_9
    :goto_4
    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, p1, v1}, Landroidx/core/widget/NestedScrollView;->w(III)Z

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->i(I)Z

    move-result v3

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->q(I)Z

    move-result v3

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0, v6}, Landroidx/core/widget/NestedScrollView;->i(I)Z

    move-result v3

    goto :goto_5

    :cond_d
    invoke-virtual {p0, v6}, Landroidx/core/widget/NestedScrollView;->q(I)Z

    move-result v3

    :cond_e
    :goto_5
    return v3
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->i:Z

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    if-nez v0, :cond_a

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->n(Landroid/view/MotionEvent;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x400000

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->n(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v0, v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v5, 0x2002

    const/4 v6, 0x1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->n(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v6

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz p1, :cond_3

    int-to-float p1, v0

    neg-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-static {v0, p1, v4}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    move p1, v6

    goto :goto_4

    :cond_3
    move p1, v2

    goto :goto_4

    :cond_4
    if-le v0, v1, :cond_7

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->j()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p1, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->n(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v6

    goto :goto_3

    :cond_5
    move p1, v2

    :goto_3
    if-eqz p1, :cond_6

    sub-int/2addr v0, v1

    int-to-float p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    invoke-static {v0, p1, v4}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    move v2, v6

    :cond_6
    move p1, v2

    move v2, v1

    goto :goto_4

    :cond_7
    move p1, v2

    move v2, v0

    :goto_4
    if-eq v2, v3, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v2}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0, v2, v6}, Landroidx/core/widget/NestedScrollView;->A(II)Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    move-object v7, p0

    move v10, v2

    invoke-virtual/range {v7 .. v12}, Landroidx/core/widget/NestedScrollView;->l(I[III[I)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_8
    return v6

    :cond_9
    return p1

    :cond_a
    return v2
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    const/4 v5, -0x1

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->u(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_2
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->u:I

    if-ne v0, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ne v3, v5, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Landroidx/core/widget/NestedScrollView;->g:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroidx/core/widget/NestedScrollView;->p:I

    if-le v3, v5, :cond_11

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_11

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->g:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v4, p0, Landroidx/core/widget/NestedScrollView;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_4

    :cond_6
    iput-boolean v4, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    iput v5, p0, Landroidx/core/widget/NestedScrollView;->u:I

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    :cond_7
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->g(I)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v6

    if-lt v0, v8, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge v0, v8, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lt v5, v6, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v5, v6, :cond_a

    move v5, v1

    goto :goto_0

    :cond_a
    move v5, v4

    :goto_0
    if-nez v5, :cond_d

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->B(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    move v1, v4

    :cond_c
    :goto_1
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    goto :goto_4

    :cond_d
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->g:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->u:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->r(Landroid/view/View;F)V

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->B(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    move v1, v4

    :cond_10
    :goto_3
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    invoke-virtual {p0, v2, v4}, Landroidx/core/widget/NestedScrollView;->A(II)Z

    :cond_11
    :goto_4
    iget-boolean p0, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    if-eqz p4, :cond_0

    invoke-static {p4, p0}, Landroidx/core/widget/NestedScrollView;->r(Landroid/view/View;Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p4, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->k(Landroid/graphics/Rect;)I

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p2, p4}, Landroid/view/View;->scrollBy(II)V

    :cond_0
    const/4 p4, 0x0

    iput-object p4, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06041b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    :cond_1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->i:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Le0/m;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->z:Le0/m;

    iget v1, v1, Le0/m;->a:I

    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    iput-object p4, p0, Landroidx/core/widget/NestedScrollView;->z:Le0/m;

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-lez p4, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p4, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p4, v0

    goto :goto_0

    :cond_3
    move p4, p2

    :goto_0
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-ge p5, p4, :cond_6

    if-gez p3, :cond_4

    goto :goto_1

    :cond_4
    add-int v0, p5, p3

    if-le v0, p4, :cond_5

    sub-int/2addr p4, p5

    goto :goto_2

    :cond_5
    move p4, p3

    goto :goto_2

    :cond_6
    :goto_1
    move p4, p2

    :goto_2
    if-eq p4, p3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    invoke-virtual {p0, p3, p4}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p3, p4}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/core/widget/NestedScrollView;->i:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result p1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result p4

    if-le p1, p4, :cond_8

    move p1, p3

    goto :goto_3

    :cond_8
    move p1, p2

    :goto_3
    if-nez p1, :cond_e

    iput-boolean p2, p0, Landroidx/core/widget/NestedScrollView;->s0:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_d

    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_d

    instance-of p4, p1, Landroidx/core/view/q;

    if-eqz p4, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    :goto_5
    if-eqz p4, :cond_a

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    const-string v0, "CoordinatorLayout"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_9

    move p4, p3

    goto :goto_6

    :cond_9
    invoke-virtual {p4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_5

    :cond_a
    move p4, p2

    :goto_6
    if-eqz p4, :cond_c

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->t0:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget p5, p4, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p5

    invoke-virtual {p0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget p4, p4, p3

    iput p4, p0, Landroidx/core/widget/NestedScrollView;->r0:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    iget p5, p0, Landroidx/core/widget/NestedScrollView;->r0:I

    sub-int/2addr p1, p5

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    if-gez p4, :cond_b

    iput p2, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    :cond_b
    iget p1, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->v0:I

    iput-boolean p3, p0, Landroidx/core/widget/NestedScrollView;->s0:Z

    goto :goto_7

    :cond_c
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_4

    :cond_d
    :goto_7
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->s0:Z

    if-nez p1, :cond_e

    iput p2, p0, Landroidx/core/widget/NestedScrollView;->r0:I

    iput p2, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    iput p2, p0, Landroidx/core/widget/NestedScrollView;->v0:I

    :cond_e
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, p0, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    float-to-int p1, p3

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->p(I)V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->c(Landroid/view/View;II[II)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p5, p1, p2}, Landroidx/core/widget/NestedScrollView;->t(II[I)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public final onOverScrolled(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    if-nez p2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Landroidx/core/widget/NestedScrollView;->s(Landroid/view/View;II)Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_4

    return v2

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Le0/m;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Le0/m;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->z:Le0/m;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Le0/m;

    invoke-direct {v1, v0}, Le0/m;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    iput p0, v1, Le0/m;->a:I

    return-object v1
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->j()Z

    move-result p1

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->E:Le0/l;

    if-eqz p1, :cond_0

    check-cast p1, Lp1/v;

    iget-object p2, p1, Lp1/v;->b:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    iget-object p1, p1, Lp1/v;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p2, p1}, Ld/l;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4}, Landroidx/core/widget/NestedScrollView;->s(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->k(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->m(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->f(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->b(Landroid/view/View;I)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    iput v8, v6, Landroidx/core/widget/NestedScrollView;->x:I

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    iget v1, v6, Landroidx/core/widget/NestedScrollView;->x:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v10, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_1e

    const/4 v3, -0x1

    iget-object v11, v6, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    iget-object v12, v6, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    if-eq v0, v10, :cond_17

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_10

    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroidx/core/widget/NestedScrollView;->u(Landroid/view/MotionEvent;)V

    iget v0, v6, Landroidx/core/widget/NestedScrollView;->u:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Landroidx/core/widget/NestedScrollView;->g:I

    goto/16 :goto_10

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v6, Landroidx/core/widget/NestedScrollView;->g:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/core/widget/NestedScrollView;->u:I

    goto/16 :goto_10

    :cond_4
    iget-boolean v0, v6, Landroidx/core/widget/NestedScrollView;->k:Z

    if-eqz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v11, v6, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v17

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    goto/16 :goto_e

    :cond_5
    iget v0, v6, Landroidx/core/widget/NestedScrollView;->u:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    if-ne v13, v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Landroidx/core/widget/NestedScrollView;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NestedScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_6
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v14, v0

    iget v0, v6, Landroidx/core/widget/NestedScrollView;->g:I

    sub-int/2addr v0, v14

    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v12}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v2

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v4, :cond_8

    neg-float v3, v3

    invoke-static {v12, v3, v1}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    move-result v1

    neg-float v1, v1

    invoke-static {v12}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpl-float v2, v3, v2

    if-nez v2, :cond_7

    move-object v2, v12

    goto :goto_1

    :cond_7
    :goto_0
    move v2, v1

    goto :goto_2

    :cond_8
    invoke-static {v11}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_9

    sub-float v1, v15, v1

    invoke-static {v11, v3, v1}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    move-result v1

    invoke-static {v11}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpl-float v2, v3, v2

    if-nez v2, :cond_7

    move-object v2, v11

    :goto_1
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_a
    sub-int/2addr v0, v1

    iget-boolean v1, v6, Landroidx/core/widget/NestedScrollView;->k:Z

    if-nez v1, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v6, Landroidx/core/widget/NestedScrollView;->p:I

    if-le v1, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    iput-boolean v10, v6, Landroidx/core/widget/NestedScrollView;->k:Z

    iget v1, v6, Landroidx/core/widget/NestedScrollView;->p:I

    if-lez v0, :cond_c

    sub-int/2addr v0, v1

    goto :goto_3

    :cond_c
    add-int/2addr v0, v1

    :cond_d
    :goto_3
    move/from16 v16, v0

    iget-boolean v0, v6, Landroidx/core/widget/NestedScrollView;->k:Z

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    iget-object v2, v6, Landroidx/core/widget/NestedScrollView;->w:[I

    iget-object v5, v6, Landroidx/core/widget/NestedScrollView;->v:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->l(I[III[I)Z

    move-result v0

    iget-object v1, v6, Landroidx/core/widget/NestedScrollView;->w:[I

    iget-object v2, v6, Landroidx/core/widget/NestedScrollView;->v:[I

    if-eqz v0, :cond_e

    aget v0, v1, v10

    sub-int v16, v16, v0

    iget v0, v6, Landroidx/core/widget/NestedScrollView;->x:I

    aget v3, v2, v10

    add-int/2addr v0, v3

    iput v0, v6, Landroidx/core/widget/NestedScrollView;->x:I

    :cond_e
    move/from16 v0, v16

    aget v3, v2, v10

    sub-int/2addr v14, v3

    iput v14, v6, Landroidx/core/widget/NestedScrollView;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v5

    if-eqz v5, :cond_10

    if-ne v5, v10, :cond_f

    if-lez v4, :cond_f

    goto :goto_4

    :cond_f
    move v5, v8

    goto :goto_5

    :cond_10
    :goto_4
    move v5, v10

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v14

    invoke-virtual {v6, v0, v8, v14, v4}, Landroidx/core/widget/NestedScrollView;->v(IIII)Z

    move-result v14

    if-eqz v14, :cond_12

    iget-object v14, v6, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    invoke-virtual {v14, v8}, Landroidx/core/view/p;->e(I)Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_11

    move v14, v10

    goto :goto_6

    :cond_11
    move v14, v8

    :goto_6
    if-nez v14, :cond_12

    move v14, v10

    goto :goto_7

    :cond_12
    move v14, v8

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v20, v16, v3

    sub-int v22, v0, v20

    aput v8, v1, v10

    const/16 v18, 0x0

    const/16 v21, 0x0

    iget-object v8, v6, Landroidx/core/widget/NestedScrollView;->v:[I

    const/16 v24, 0x0

    iget-object v15, v6, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    move-object/from16 v17, v15

    move-object/from16 v19, v8

    move-object/from16 v23, v1

    invoke-virtual/range {v17 .. v24}, Landroidx/core/view/p;->d(I[IIII[II)Z

    iget v8, v6, Landroidx/core/widget/NestedScrollView;->g:I

    aget v2, v2, v10

    sub-int/2addr v8, v2

    iput v8, v6, Landroidx/core/widget/NestedScrollView;->g:I

    iget v8, v6, Landroidx/core/widget/NestedScrollView;->x:I

    add-int/2addr v8, v2

    iput v8, v6, Landroidx/core/widget/NestedScrollView;->x:I

    if-eqz v5, :cond_16

    aget v1, v1, v10

    sub-int/2addr v0, v1

    add-int/2addr v3, v0

    if-gez v3, :cond_13

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v12, v0, v1}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    :cond_13
    if-le v3, v4, :cond_14

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, v2, v1

    invoke-static {v11, v0, v15}, Lva/n;->G(Landroid/widget/EdgeEffect;FF)F

    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_14
    :goto_8
    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p0 .. p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    const/4 v8, 0x0

    goto :goto_9

    :cond_16
    move v8, v14

    :goto_9
    if-eqz v8, :cond_22

    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_10

    :cond_17
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    iget v1, v6, Landroidx/core/widget/NestedScrollView;->t:I

    int-to-float v1, v1

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, v6, Landroidx/core/widget/NestedScrollView;->u:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v6, Landroidx/core/widget/NestedScrollView;->q:I

    if-lt v1, v4, :cond_1c

    invoke-static {v12}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_19

    invoke-virtual {v6, v12, v0}, Landroidx/core/widget/NestedScrollView;->x(Landroid/widget/EdgeEffect;I)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v0

    move-object v11, v12

    goto :goto_a

    :cond_18
    neg-int v1, v0

    goto :goto_b

    :cond_19
    invoke-static {v11}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    neg-int v1, v0

    invoke-virtual {v6, v11, v1}, Landroidx/core/widget/NestedScrollView;->x(Landroid/widget/EdgeEffect;I)Z

    move-result v4

    if-eqz v4, :cond_1a

    :goto_a
    invoke-virtual {v11, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_c

    :cond_1a
    :goto_b
    invoke-virtual {v6, v1}, Landroidx/core/widget/NestedScrollView;->p(I)V

    :goto_c
    move v8, v10

    goto :goto_d

    :cond_1b
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_1d

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v6, v2, v1}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v6, v2, v1, v10}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v6, v0}, Landroidx/core/widget/NestedScrollView;->p(I)V

    goto :goto_f

    :cond_1c
    iget-object v11, v6, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v17

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    :goto_e
    invoke-static/range {p0 .. p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_1d
    :goto_f
    iput v3, v6, Landroidx/core/widget/NestedScrollView;->u:I

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->n()V

    goto :goto_10

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    return v0

    :cond_1f
    iget-boolean v0, v6, Landroidx/core/widget/NestedScrollView;->k:Z

    if-eqz v0, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_20
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v6, v10}, Landroidx/core/widget/NestedScrollView;->g(I)V

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Landroidx/core/widget/NestedScrollView;->g:I

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v6, Landroidx/core/widget/NestedScrollView;->u:I

    invoke-virtual {v6, v1, v0}, Landroidx/core/widget/NestedScrollView;->A(II)Z

    :cond_22
    :goto_10
    iget-object v0, v6, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_23

    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_23
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    return v10
.end method

.method public final p(I)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->r(Landroid/view/View;F)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->A(II)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->y:I

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final q(I)Z
    .locals 5

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->w(III)Z

    move-result p0

    return p0
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->k(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->k(Landroid/graphics/Rect;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    :cond_1
    const/16 p3, 0xfa

    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/widget/NestedScrollView;->z(III)V

    :cond_2
    :goto_1
    return v0
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final s(Landroid/view/View;II)Z
    .locals 2

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final scrollTo(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v6

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    if-ge v3, v4, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int v2, v3, p1

    if-le v2, v4, :cond_2

    sub-int p1, v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :cond_2
    :goto_1
    if-ge v5, v1, :cond_4

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    add-int v0, v5, p2

    if-le v0, v1, :cond_5

    sub-int p2, v1, v5

    goto :goto_3

    :cond_4
    :goto_2
    move p2, v0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_7

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_7
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    iget-boolean v0, p0, Landroidx/core/view/p;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Landroidx/core/view/p;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/o0;->z(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, Landroidx/core/view/p;->d:Z

    return-void
.end method

.method public setOnScrollChangeListener(Le0/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->E:Le0/l;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->n:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->A(II)Z

    move-result p0

    return p0
.end method

.method public final stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->g(I)V

    return-void
.end method

.method public final t(II[I)V
    .locals 10

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->y:I

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v5, v1, v0

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    aget v1, p3, v0

    add-int/2addr v1, v5

    aput v1, p3, v0

    :cond_2
    sub-int v7, p1, v5

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v8, p3

    move v9, p2

    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/p;->d(I[IIII[II)Z

    return-void
.end method

.method public final u(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/core/widget/NestedScrollView;->u:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->u:I

    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final v(IIII)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    const/4 v1, 0x1

    const/4 v0, 0x0

    add-int/2addr p2, v0

    add-int/2addr p3, p1

    add-int/2addr p4, v0

    if-lez p2, :cond_0

    :goto_0
    move p2, v0

    move p1, v1

    goto :goto_1

    :cond_0
    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    if-le p3, p4, :cond_2

    move p3, p4

    :goto_2
    move p4, v1

    goto :goto_3

    :cond_2
    if-gez p3, :cond_3

    move p3, v0

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_3
    if-eqz p4, :cond_5

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/view/p;

    invoke-virtual {v2, v1}, Landroidx/core/view/p;->e(I)Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    move v3, p2

    move v4, p3

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    :cond_5
    invoke-virtual {p0, p2, p3, p1, p4}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez p1, :cond_7

    if-eqz p4, :cond_6

    goto :goto_5

    :cond_6
    move v1, v0

    :cond_7
    :goto_5
    return v1
.end method

.method public final w(III)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v6, 0x21

    if-ne v1, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v10, :cond_9

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge v2, v7, :cond_8

    if-ge v15, v3, :cond_8

    if-ge v2, v15, :cond_1

    if-ge v7, v3, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    :goto_2
    if-nez v11, :cond_2

    move-object v11, v14

    move/from16 v13, v16

    goto :goto_5

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v15, v8, :cond_4

    :cond_3
    if-nez v6, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v8

    if-le v7, v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-eqz v13, :cond_6

    if-eqz v16, :cond_8

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_6
    if-eqz v16, :cond_7

    move-object v11, v14

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    if-eqz v7, :cond_8

    :goto_4
    move-object v11, v14

    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_9
    if-nez v11, :cond_a

    move-object v11, v0

    :cond_a
    if-lt v2, v5, :cond_b

    if-gt v3, v4, :cond_b

    const/4 v7, 0x0

    goto :goto_7

    :cond_b
    if-eqz v6, :cond_c

    sub-int/2addr v2, v5

    goto :goto_6

    :cond_c
    sub-int v2, v3, v4

    :goto_6
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->m(I)V

    const/4 v7, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v11, v0, :cond_d

    invoke-virtual {v11, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_d
    return v7
.end method

.method public final x(Landroid/widget/EdgeEffect;I)Z
    .locals 9

    const/4 v0, 0x1

    if-lez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lva/n;->r(Landroid/widget/EdgeEffect;)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    neg-int p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr p2, v1

    iget p0, p0, Landroidx/core/widget/NestedScrollView;->a:F

    const v1, 0x3c75c28f    # 0.015f

    mul-float/2addr p0, v1

    div-float/2addr p2, p0

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    sget p2, Landroidx/core/widget/NestedScrollView;->x0:F

    float-to-double v3, p2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v5

    float-to-double v7, p0

    div-double/2addr v3, v5

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    double-to-float p0, v1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z(III)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v5

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v7, p1, v5

    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    const/4 v6, 0x0

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->g(I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->y:I

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->g(I)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->b:J

    return-void
.end method
