.class public Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "VibratorManagerService.java"


# instance fields
.field public mService:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->systemReady()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 146
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mbootCompleteReady(Lcom/android/server/vibrator/VibratorManagerService;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 137
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$Injector;

    invoke-direct {v2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    const-string/jumbo v1, "vibrator_manager"

    .line 138
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
