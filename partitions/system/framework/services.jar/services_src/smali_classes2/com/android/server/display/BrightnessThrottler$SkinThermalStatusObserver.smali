.class public final Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "BrightnessThrottler.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

.field public mStarted:Z

.field public mThermalService:Landroid/os/IThermalService;

.field public final synthetic this$0:Lcom/android/server/display/BrightnessThrottler;


# direct methods
.method public static synthetic $r8$lambda$AG1LcbHs_AaoejxETmZQrSxoJHg(Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;Landroid/os/Temperature;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->lambda$notifyThrottling$0(Landroid/os/Temperature;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/BrightnessThrottler;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 448
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    .line 449
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$notifyThrottling$0(Landroid/os/Temperature;)V
    .locals 0

    .line 458
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    .line 459
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/BrightnessThrottler;

    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->-$$Nest$mthermalStatusChanged(Lcom/android/server/display/BrightnessThrottler;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  SkinThermalStatusObserver:"

    .line 502
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    if-eqz p0, :cond_0

    const-string p0, "    ThermalService available"

    .line 505
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "    ThermalService not available"

    .line 507
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;Landroid/os/Temperature;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startObserving()V
    .locals 3

    .line 464
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    const-string v1, "BrightnessThrottler"

    if-nez v0, :cond_1

    const-string p0, "Could not observe thermal status. Service not available"

    .line 472
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x3

    .line 478
    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to register thermal status listener"

    .line 481
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stopObserving()V
    .locals 3

    .line 486
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BrightnessThrottler"

    const-string v2, "Failed to unregister thermal status listener"

    .line 496
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 498
    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    return-void
.end method
