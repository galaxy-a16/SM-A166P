.class public Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;
.super Ljava/lang/Object;
.source "BleAdvertiserServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;


# direct methods
.method public static synthetic $r8$lambda$U3mk_ysLJGtmhHUmCMujG12VDEs(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->lambda$onServiceConnected$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jLt8TxFIIloJuFNDsshOMUur7bg(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->lambda$onBindingDied$2(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xVUH5XB-FtpwDEzhjJcWFv59pQo(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->lambda$onNullBinding$1(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindingDied$2(Landroid/content/ComponentName;)V
    .locals 3

    .line 79
    invoke-static {}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding died of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$mretryConnectionWithBackoff(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    return-void
.end method

.method private synthetic lambda$onNullBinding$1(Landroid/content/ComponentName;)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null binding of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$mretryConnectionWithBackoff(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Landroid/os/IBinder;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmService(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fputmConnectionBackoffAttempts(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;I)V

    .line 51
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmDeferredConnectionCallback(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmBindServiceRunnable(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/IBleAdvertiserService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fputmService(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;Lcom/samsung/android/desktopmode/IBleAdvertiserService;)V

    .line 64
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected(), mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmService(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 58
    invoke-static {}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lost connection to the service"

    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    iget-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->unbindService()V

    .line 60
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$mretryConnectionWithBackoff(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Landroid/content/ComponentName;)V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Landroid/content/ComponentName;)V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
