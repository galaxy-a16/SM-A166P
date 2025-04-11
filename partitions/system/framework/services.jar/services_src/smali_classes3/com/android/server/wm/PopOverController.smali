.class public Lcom/android/server/wm/PopOverController;
.super Ljava/lang/Object;
.source "PopOverController.java"


# static fields
.field static final POP_OVER_DIM_AMOUNT_FOR_CHILD:F = 0.13f

.field static final POP_OVER_DIM_AMOUNT_FOR_NIGHT:F = 0.5f

.field static final POP_OVER_DIM_DURATION:J = 0x96L


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public static synthetic $r8$lambda$-FUwVQgxHvAzgUoYShuTRMKkG3w(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/PopOverController;->lambda$updateTransparency$0([ZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private synthetic lambda$updateTransparency$0([ZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-object v0, p4, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p4

    if-eqz p4, :cond_4

    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aput-boolean p2, p1, v0

    if-ne p4, p3, :cond_2

    return v0

    :cond_2
    const/16 p1, 0x10

    invoke-virtual {p4, v0, p1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_3
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/PopOverController;->startTransparentAnimation(Lcom/android/server/wm/WindowState;Z)V

    return v0

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public addPopOverWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PopOverController;->isChildDimmingDialog(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v2, v0, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    iget-wide v1, v1, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v1, v0, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public getDistanceToTopForPopOver(Lcom/android/server/wm/WindowState;II)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    move-result v0

    sub-int/2addr p2, v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getPopOverShadow(Landroid/content/res/Resources;)I

    move-result p0

    sub-int/2addr p2, p0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p3

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final isChildDimmingDialog(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removePopOverWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final startTransparentAnimation(Lcom/android/server/wm/WindowState;Z)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3a83126f    # 0.001f

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    if-eqz p2, :cond_2

    move-wide v4, v2

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0xc8

    :goto_1
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    if-eqz p2, :cond_3

    const-wide/16 v2, 0x0

    :cond_3
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v2, Lcom/android/server/wm/PopOverController$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/server/wm/PopOverController$1;-><init>(Lcom/android/server/wm/PopOverController;ZLcom/android/server/wm/WindowState;F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    const-wide/16 v2, 0x96

    if-eqz p0, :cond_1

    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p0, 0x3f000000    # 0.5f

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const p0, 0x3e051eb8    # 0.13f

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    goto :goto_0

    :cond_2
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, -0x3

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-wide v2, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    :goto_0
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    :cond_3
    return-void
.end method

.method public updateTransparency(Lcom/android/server/wm/WindowState;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    aget-boolean p1, v0, v1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Pop-over transparent mode"

    invoke-interface/range {v0 .. v5}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
