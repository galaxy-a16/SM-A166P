.class public Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;
.super Ljava/lang/Object;
.source "ActivityTaskSupervisor.java"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mIncludeInvisibleAndFinishing:Z

.field public mStarting:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpaqueActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    const/4 v0, 0x1

    .line 3788
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    const/4 v1, 0x0

    .line 3789
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleOpaqueActivity(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3795
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    const/4 p2, 0x0

    .line 3796
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 3797
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3799
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    return-object p1
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 3805
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v2, :cond_0

    return v1

    .line 3814
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 3815
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3819
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_3

    .line 3820
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3821
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ASPECT_RATIO:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-eqz v0, :cond_3

    .line 3823
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3824
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz v0, :cond_3

    .line 3825
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3826
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 3829
    :cond_2
    invoke-static {p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3835
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 3783
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
