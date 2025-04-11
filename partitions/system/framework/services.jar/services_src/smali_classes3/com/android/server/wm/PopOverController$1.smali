.class public Lcom/android/server/wm/PopOverController$1;
.super Ljava/lang/Object;
.source "PopOverController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PopOverController;

.field public final synthetic val$apply:Z

.field public final synthetic val$toAlpha:F

.field public final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PopOverController;ZLcom/android/server/wm/WindowState;F)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    iput-boolean p2, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    iput-object p3, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iput p4, p0, Lcom/android/server/wm/PopOverController$1;->val$toAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 181
    iget-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    invoke-static {p1}, Lcom/android/server/wm/PopOverController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/PopOverController$1;->val$toAlpha:F

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 183
    iget-object p0, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    invoke-static {p0}, Lcom/android/server/wm/PopOverController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 184
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 171
    iget-boolean p1, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    invoke-static {p1}, Lcom/android/server/wm/PopOverController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 174
    iget-object p0, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    invoke-static {p0}, Lcom/android/server/wm/PopOverController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 175
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
