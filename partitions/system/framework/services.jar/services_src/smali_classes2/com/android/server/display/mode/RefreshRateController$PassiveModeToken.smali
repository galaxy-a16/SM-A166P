.class public Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;
.super Lcom/android/server/display/mode/RefreshRateToken;
.source "RefreshRateController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    invoke-direct {p0}, Lcom/android/server/display/mode/RefreshRateToken;-><init>()V

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSubScreen()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    iget-boolean v1, v1, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default display was changed!, don\'t need to check passive mode for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->-$$Nest$fgetmDisplayToken(Lcom/android/server/display/mode/RefreshRateController;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RefreshRateModeManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateLfdValueLocked(Z)V

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updatePassiveLocked(Z)V

    return-void
.end method
