.class public Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public mLatestEventWasMouse:Z

.field public mLatestMouseX:F

.field public mLatestMouseY:F

.field public mPointerDisplayId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLatestEventWasMouse(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatestMouseX(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatestMouseY(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPointerDisplayId(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 8018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8027
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$MousePositionTracker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/16 v0, 0x2002

    .line 8056
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8057
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 8058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 8057
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(IFF)Z

    goto :goto_0

    .line 8060
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    .line 8061
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 8062
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPointerDisplayId(I)V
    .locals 0

    .line 8049
    monitor-enter p0

    .line 8050
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    .line 8051
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updatePosition(IFF)Z
    .locals 2

    .line 8034
    monitor-enter p0

    const/4 v0, 0x1

    .line 8035
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 8037
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    if-eq p1, v1, :cond_0

    .line 8040
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 8042
    :cond_0
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    .line 8043
    iput p3, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    .line 8044
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 8045
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
