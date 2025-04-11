.class public Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;
.super Ljava/lang/Object;
.source "TaskFragment.java"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mBehindFullscreen:Z

.field public mPreserveWindow:Z

.field public mUpdateConfig:Z

.field public final synthetic this$0:Lcom/android/server/wm/TaskFragment;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/TaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
