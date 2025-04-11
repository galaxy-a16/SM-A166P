.class public Lcom/android/server/desktopmode/BootInitBlocker;
.super Ljava/lang/Object;
.source "BootInitBlocker.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field public final mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static synthetic $r8$lambda$VOPvp_m4BjMAnRub22dArgMTZFQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/desktopmode/BootInitBlocker;->lambda$new$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlocker(Lcom/android/server/desktopmode/BootInitBlocker;)Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopModeManager(Lcom/android/server/desktopmode/BootInitBlocker;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/BootInitBlocker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/BootInitBlocker;)Lcom/android/server/desktopmode/IStateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/BootInitBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/BootInitBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iput-object p3, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance p1, Lcom/android/server/desktopmode/BootInitBlocker$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/desktopmode/BootInitBlocker$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    return-void
.end method

.method public static synthetic lambda$new$0()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/BootInitBlocker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerBlocker"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->notifyBootInitBlockerRegistered(Z)V

    new-instance v0, Lcom/android/server/desktopmode/BootInitBlocker$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/BootInitBlocker$1;-><init>(Lcom/android/server/desktopmode/BootInitBlocker;)V

    iget-object p0, p0, Lcom/android/server/desktopmode/BootInitBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method
