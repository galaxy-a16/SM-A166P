.class public Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DualModeChanger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    return-void
.end method


# virtual methods
.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {v0}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmDisplayUnsupportDialogShown(Lcom/android/server/desktopmode/DualModeChanger;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mshowDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    :cond_0
    return-void
.end method

.method public onNavBarGestureEnabled(Lcom/android/server/desktopmode/State;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNavBarGestureEnabled(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public onSpenEnabled(Lcom/android/server/desktopmode/State;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateSpenNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public onTouchpadAvailabilityChanged(Lcom/android/server/desktopmode/State;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchpadAvailabilityChanged(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateNavBarIcon(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadAvailable()Z

    move-result v0

    const/16 v1, 0x12c

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "touchpad_auto_run"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v2, v0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmTouchpadManager(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/TouchpadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/TouchpadManager;->getInternalUiCallback()Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "how_to_open_touchpad_shown"

    invoke-static {v0, v1, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->canShowTouchpadNotification(Lcom/android/server/desktopmode/State;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x9

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, p1, v2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouchpadEnabled(Lcom/android/server/desktopmode/State;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchpadEnabled(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateSpenNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateNavBarIcon(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    return-void
.end method
