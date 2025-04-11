.class public Lcom/android/server/desktopmode/DesktopModeService$4;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DesktopModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .locals 1

    const-string p2, "dual"

    .line 352
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 353
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 354
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method
