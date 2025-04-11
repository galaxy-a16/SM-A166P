.class public Lcom/android/server/desktopmode/BootInitBlocker$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "BootInitBlocker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/BootInitBlocker;


# direct methods
.method public static synthetic $r8$lambda$vB-hQO8pYuymUmAkDM0hmdl5uE4(Lcom/android/server/desktopmode/BootInitBlocker$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/desktopmode/BootInitBlocker$1;->lambda$onUserChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/BootInitBlocker;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onUserChanged$0()V
    .locals 2

    .line 40
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/BootInitBlocker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterBlocker"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-static {v0}, Lcom/android/server/desktopmode/BootInitBlocker;->-$$Nest$fgetmDesktopModeManager(Lcom/android/server/desktopmode/BootInitBlocker;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/BootInitBlocker;->-$$Nest$fgetmBlocker(Lcom/android/server/desktopmode/BootInitBlocker;)Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 42
    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/BootInitBlocker;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/BootInitBlocker;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->notifyBootInitBlockerRegistered(Z)V

    return-void
.end method


# virtual methods
.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 39
    iget-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-static {p1}, Lcom/android/server/desktopmode/BootInitBlocker;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/BootInitBlocker;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/desktopmode/BootInitBlocker$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/BootInitBlocker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/BootInitBlocker$1;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    iget-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-static {p1}, Lcom/android/server/desktopmode/BootInitBlocker;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/BootInitBlocker;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/server/desktopmode/IStateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method
