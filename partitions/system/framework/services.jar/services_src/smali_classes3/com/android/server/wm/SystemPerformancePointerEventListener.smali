.class public Lcom/android/server/wm/SystemPerformancePointerEventListener;
.super Ljava/lang/Object;
.source "SystemPerformancePointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Landroid/os/Handler;

.field public mLastAcquireTime:J

.field public mScrollAcquireRunnable:Ljava/lang/Runnable;

.field public mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public mScrollReleaseRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$9XG_QzU20ezzrcARWjunwLf41aM(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NoDwWicZh1ufq6_a2q2MnPSGC5k(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$g3AMsgroFyHlXW5l0WiU_nVSjy8(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastAcquireTime(Lcom/android/server/wm/SystemPerformancePointerEventListener;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScrollAcquireRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScrollDvfsManager(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScrollReleaseRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastAcquireTime(Lcom/android/server/wm/SystemPerformancePointerEventListener;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    const-string v2, "WM_SCROLL_DETECTED"

    const/16 v3, 0xe

    invoke-static {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v2, 0x0

    aget p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const-string p1, "SemDvfsManager Not Initialized..."

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    :cond_1
    :goto_0
    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 4

    new-instance v0, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    iget-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector-IA;)V

    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    :cond_2
    :goto_0
    return-void
.end method
