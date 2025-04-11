.class public Lcom/android/server/desktopmode/CoverStateManager$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "CoverStateManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 74
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmCoverManagerDisabled(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmCoverState(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-ne v1, v2, :cond_2

    .line 78
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCoverStateChanged - mCoverManagerDisabled && state.attached == mCoverState.attached"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    monitor-exit v0

    return-void

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fputmCoverState(Lcom/android/server/desktopmode/CoverStateManager;Lcom/samsung/android/cover/CoverState;)V

    .line 82
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$1;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$mupdateCoverSupportStateLocked(Lcom/android/server/desktopmode/CoverStateManager;)Z

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
