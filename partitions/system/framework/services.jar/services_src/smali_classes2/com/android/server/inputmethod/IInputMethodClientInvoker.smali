.class public final Lcom/android/server/inputmethod/IInputMethodClientInvoker;
.super Ljava/lang/Object;
.source "IInputMethodClientInvoker.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mIsProxy:Z

.field public final mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;


# direct methods
.method public static synthetic $r8$lambda$0CD7vpLDv72GKbn2IRqDm4M66mc(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onUnbindMethod$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$0X1EZs8fPTykfO6llODJPr3T3dc(Lcom/android/server/inputmethod/IInputMethodClientInvoker;I[F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$updateVirtualDisplayToScreenMatrix$8(I[F)V

    return-void
.end method

.method public static synthetic $r8$lambda$0dikhKszumLGTaYC_gpKcRJyQpU(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$scheduleStartInputIfNecessary$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$1AB0tpH_i93vaApmHwX32l7V-zc(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onUnbindAccessibilityService$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$1DUVq3Gu_5OKv1mFpnnt7rOEY6A(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$throwExceptionFromSystem$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3pJYOGaiXp0CUMaYxkSuoPSh9LQ(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setImeTraceEnabled$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4jg_5KPJdoB2zontjJvBk8Sjw6M(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onBindMethod$0(Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OtAmkJX_1nrx--a4IkYdcLLTIII(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$reportFullscreenMode$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VuwgDnRl2jtuLxrxaVF-4W_2lRs(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onBindAccessibilityService$1(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTlZBSrBKJaMiEITB6IyyM2HFfs(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setInteractive$5(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$eeeJPW4kWIJcIvDsEzGhzvORxuI(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setActive$4(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 70
    iput-boolean p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 71
    iput-object p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static create(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/Handler;)Lcom/android/server/inputmethod/IInputMethodClientInvoker;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 63
    :cond_0
    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    .line 64
    new-instance v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V

    return-object v2
.end method

.method public static getCallerMethodName()Ljava/lang/String;
    .locals 3

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 82
    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const-string v0, "<bottom of call stack>"

    return-object v0

    .line 85
    :cond_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onBindAccessibilityService$1(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method private synthetic lambda$onBindMethod$0(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void
.end method

.method private synthetic lambda$onUnbindAccessibilityService$3(II)V
    .locals 0

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindAccessibilityServiceInternal(II)V

    return-void
.end method

.method private synthetic lambda$onUnbindMethod$2(II)V
    .locals 0

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethodInternal(II)V

    return-void
.end method

.method private synthetic lambda$reportFullscreenMode$7(Z)V
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenModeInternal(Z)V

    return-void
.end method

.method private synthetic lambda$scheduleStartInputIfNecessary$6(Z)V
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessaryInternal(Z)V

    return-void
.end method

.method private synthetic lambda$setActive$4(ZZ)V
    .locals 0

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActiveInternal(ZZ)V

    return-void
.end method

.method private synthetic lambda$setImeTraceEnabled$9(Z)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabledInternal(Z)V

    return-void
.end method

.method private synthetic lambda$setInteractive$5(ZZ)V
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractiveInternal(ZZ)V

    return-void
.end method

.method private synthetic lambda$throwExceptionFromSystem$10(Ljava/lang/String;)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->throwExceptionFromSystemInternal(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateVirtualDisplayToScreenMatrix$8(I[F)V
    .locals 0

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->updateVirtualDisplayToScreenMatrixInternal(I[F)V

    return-void
.end method

.method public static logRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    .line 90
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC failed at IInputMethodClientInvoker#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->getCallerMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    .line 138
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 133
    :try_start_1
    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 140
    :cond_1
    throw p2
.end method

.method public onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    .line 114
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 109
    :try_start_1
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 116
    :cond_1
    throw v0
.end method

.method public onUnbindAccessibilityService(II)V
    .locals 2

    .line 163
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindAccessibilityServiceInternal(II)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final onUnbindAccessibilityServiceInternal(II)V
    .locals 0

    .line 173
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindAccessibilityService(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onUnbindMethod(II)V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethodInternal(II)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final onUnbindMethodInternal(II)V
    .locals 0

    .line 155
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenModeInternal(Z)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final reportFullscreenModeInternal(Z)V
    .locals 0

    .line 245
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 247
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public scheduleStartInputIfNecessary(Z)V
    .locals 2

    .line 217
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessaryInternal(Z)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final scheduleStartInputIfNecessaryInternal(Z)V
    .locals 0

    .line 227
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setActive(ZZ)V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActiveInternal(ZZ)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final setActiveInternal(ZZ)V
    .locals 0

    .line 191
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setActive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 193
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setImeTraceEnabled(Z)V
    .locals 2

    .line 273
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabledInternal(Z)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final setImeTraceEnabledInternal(Z)V
    .locals 0

    .line 283
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 285
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setInteractive(ZZ)V
    .locals 2

    .line 199
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractiveInternal(ZZ)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final setInteractiveInternal(ZZ)V
    .locals 0

    .line 209
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setInteractive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public throwExceptionFromSystem(Ljava/lang/String;)V
    .locals 2

    .line 291
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->throwExceptionFromSystemInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final throwExceptionFromSystemInternal(Ljava/lang/String;)V
    .locals 0

    .line 301
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->throwExceptionFromSystem(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 303
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public updateVirtualDisplayToScreenMatrix(I[F)V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->updateVirtualDisplayToScreenMatrixInternal(I[F)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;I[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final updateVirtualDisplayToScreenMatrixInternal(I[F)V
    .locals 0

    .line 265
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->updateVirtualDisplayToScreenMatrix(I[F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 267
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
