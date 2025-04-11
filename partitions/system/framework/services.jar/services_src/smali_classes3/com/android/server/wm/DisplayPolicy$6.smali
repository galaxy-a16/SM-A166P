.class public Lcom/android/server/wm/DisplayPolicy$6;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 4612
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$6;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransientSystemBarsVisibilityChanged(IZZ)V
    .locals 1

    .line 4617
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$6;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmTransientWindowState(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 4618
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$6;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmTransientWindowState(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 4619
    iget v0, p3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p1, :cond_0

    .line 4620
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$6;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmIsVisibleBySwipe(Lcom/android/server/wm/DisplayPolicy;Z)V

    .line 4621
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$6;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    xor-int/lit8 p1, p2, 0x1

    .line 4622
    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/TaskOrganizerController;->onNewDexImmersiveModeChanged(Lcom/android/server/wm/Task;Z)V

    :cond_0
    return-void
.end method
