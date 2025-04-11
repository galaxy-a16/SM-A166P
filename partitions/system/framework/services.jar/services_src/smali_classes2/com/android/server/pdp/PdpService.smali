.class public Lcom/android/server/pdp/PdpService;
.super Lcom/android/server/SystemService;
.source "PdpService.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

.field public mSvcPdpThread:Landroid/os/HandlerThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSvcPdpThread(Lcom/android/server/pdp/PdpService;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSvcPdpHandler(Lcom/android/server/pdp/PdpService;Lcom/android/server/pdp/PdpService$SvcPdpHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/pdp/PdpService$1;

    const-string/jumbo v0, "mSvcPdpThread"

    invoke-direct {p1, p0, v0}, Lcom/android/server/pdp/PdpService$1;-><init>(Lcom/android/server/pdp/PdpService;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method


# virtual methods
.method public handleDisplayPDPToast(Ljava/lang/String;I)V
    .locals 6

    const-string v0, "[PDP] displayPDPToast start"

    const-string v1, "PdpService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-gt v2, p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[PDP] Toast exception"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p0, "[PDP] displayPDPToast end"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const-string p1, "PdpService"

    const-string v0, "[PDP] PHASE_BOOT_COMPLETED"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pdp/PdpService;->pdpServiceReady()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const-string p0, "PdpService"

    const-string v0, "[PDP] onStart"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pdpServiceReady()V
    .locals 4

    const-string v0, "[PDP] pdpServiceReady >"

    const-string v1, "PdpService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p0, "[PDP] pdpServiceReady <"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
