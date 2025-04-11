.class public Lcom/android/server/wm/DragState$PositionAnimationListener;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$PositionAnimationListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState$PositionAnimationListener;-><init>(Lcom/android/server/wm/DragState;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DragState;->endAnimator(I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DND_SEAMLESS_ANIMATION:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/DragState;->-$$Nest$fputmNeedAdjustPosition(Lcom/android/server/wm/DragState;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    :try_start_0
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string/jumbo v2, "y"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DND_ANIMATION:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-static {v2}, Lcom/android/server/wm/DragState;->-$$Nest$fgetmNeedAdjustPosition(Lcom/android/server/wm/DragState;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v3, v2, Lcom/android/server/wm/DragState;->mTargetX:F

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v6, v5, Lcom/android/server/wm/DragState;->mTargetY:F

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v5

    invoke-static {v2, v1, p1, v3, v5}, Lcom/android/server/wm/DragState;->-$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F

    move-result p1

    iget-object v1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v2, v1, Lcom/android/server/wm/DragState;->mSourceX:F

    invoke-static {v1, v2, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v5, v3, Lcom/android/server/wm/DragState;->mSourceY:F

    invoke-static {v3, v5, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v6, v5, Lcom/android/server/wm/DragState;->mTargetX:F

    invoke-static {v5, v6, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v8, v6, Lcom/android/server/wm/DragState;->mTargetY:F

    invoke-static {v6, v8, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v6

    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/server/wm/DragState;->-$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    div-float v2, p1, v1

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v1, p1, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v3, p1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v5, p1, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    invoke-static {p1, v1, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result p1

    iget-object v1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v3, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v5, v1, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget v6, v1, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v1, v3, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v5, v3, Lcom/android/server/wm/DragState;->mSourceX:F

    invoke-static {v3, v5, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v3

    sub-float/2addr v3, p1

    mul-float/2addr v3, v2

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v4, v3, Lcom/android/server/wm/DragState;->mSourceY:F

    invoke-static {v3, v4, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v3

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    move v9, v1

    move v1, p1

    move p1, v9

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_3

    const-string p0, "WindowManager"

    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p0
.end method
