.class public Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DesktopModeService.java"


# instance fields
.field public mOverlayShown:Z

.field public mShown:Z

.field public mStartPressed:Z

.field public mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public static synthetic $r8$lambda$UcorhNxOyMZP3L0z_D_kX5vPfK8(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->handleOnDismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$xJcNfZj0Qo1GuyLh9xHmmnnsVc0(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->handleOnShow()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDesktopModeState(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZII)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowOrDismissOverlay(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    const/4 p1, 0x0

    .line 810
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 811
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 812
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    .line 813
    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public final handleOnDismiss()V
    .locals 5

    const/4 v0, 0x0

    .line 897
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 898
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 899
    invoke-virtual {p0, v0, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    .line 901
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    .line 902
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v2

    invoke-virtual {p0, v2, v4, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    .line 906
    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    if-nez v1, :cond_1

    .line 907
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmWirelessDexManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/WirelessDexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    .line 909
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    return-void
.end method

.method public final handleOnShow()V
    .locals 4

    const/4 v0, 0x1

    .line 884
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 885
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 886
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    .line 887
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v2

    .line 886
    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    .line 888
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 889
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v0, p0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method

.method public onClickButtonPositive()V
    .locals 4

    const/4 v0, 0x1

    .line 870
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    .line 871
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mfinishWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 872
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    .line 873
    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_initial_connection_dialog_shown"

    invoke-static {v2, v3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 877
    :cond_0
    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "pogo_initial_connection_dialog_shown"

    invoke-static {p0, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShow()V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDesktopModeState(ZII)V
    .locals 1

    .line 913
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 914
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p0

    .line 915
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/desktopmode/ModeChanger;->setDesktopModeState(II)V

    return-void
.end method

.method public final showOrDismissOverlay(ZZ)V
    .locals 4

    const/16 v0, 0x70

    const/16 v1, 0x67

    if-eqz p1, :cond_3

    .line 825
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    if-nez v2, :cond_3

    .line 826
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/CoverStateManager;->isFlipTypeCoverClosed()Z

    move-result p1

    const-string/jumbo v2, "showOrDismissOverlay(), show=true, isCoverSupportStatePartial="

    if-eqz p1, :cond_1

    .line 827
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", skip showing external overlay since cover is closed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 832
    :cond_1
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showing external overlay"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x1

    .line 835
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 836
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/desktopmode/UiManager;->showOverlay(II)V

    .line 837
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 838
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 839
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    .line 840
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    .line 842
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    if-eqz p1, :cond_5

    .line 843
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showOrDismissOverlay(), show=false, isCoverSupportStatePartial="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", dismissing external overlay"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    .line 846
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 847
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 849
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez p2, :cond_5

    .line 850
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 851
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    .line 852
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    :cond_5
    :goto_0
    return-void
.end method
