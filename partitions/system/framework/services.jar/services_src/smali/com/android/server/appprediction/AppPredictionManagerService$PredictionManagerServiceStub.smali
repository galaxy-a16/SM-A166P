.class public Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
.super Landroid/app/prediction/IPredictionManager$Stub;
.source "AppPredictionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appprediction/AppPredictionManagerService;


# direct methods
.method public static synthetic $r8$lambda$4n794nF51j5KIjXsbtbVV_Lb-8o(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$sortAppTargets$3(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5jsJbgVSWtaTejUm1kHnEwAbBu8(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KcZB7udVPuf8sPqDCvlyhBAHY3s(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$createPredictionSession$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P8Q4BapilmYWViuI5SZgpkxiMec(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XbI9UDSCNg5jLGIP5TT02oyuygc(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$requestPredictionUpdate$6(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tOAXouYR6qhksAx7ORnQh1pmx_Y(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$notifyLaunchLocationShown$2(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xdfQUvFGxkqQMptRJ2CRxEz9lHs(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$registerPredictionUpdates$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkMZx7WqHoP5bDAvbpK2mZvZxm8(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$notifyAppTargetEvent$1(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-direct {p0}, Landroid/app/prediction/IPredictionManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    return-void
.end method

.method public static synthetic lambda$createPredictionSession$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 115
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$notifyAppTargetEvent$1(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 122
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->notifyAppTargetEventLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method public static synthetic lambda$notifyLaunchLocationShown$2(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 129
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->notifyLaunchLocationShownLocked(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public static synthetic lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 162
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method public static synthetic lambda$registerPredictionUpdates$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 144
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static synthetic lambda$requestPredictionUpdate$6(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 156
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->requestPredictionUpdateLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method public static synthetic lambda$sortAppTargets$3(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 137
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->sortAppTargetsLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static synthetic lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    .line 150
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method


# virtual methods
.method public createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V
    .locals 1

    .line 114
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda7;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    const-string p1, "createPredictionSession"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda5;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    const-string/jumbo p2, "notifyAppTargetEvent"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    .line 128
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    const-string/jumbo p2, "notifyLaunchLocationShown"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    .line 161
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda6;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    const-string/jumbo v1, "onDestroyPredictionSession"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 169
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 170
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo p2, "registerPredictionUpdates"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    .line 155
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    const-string/jumbo v1, "requestPredictionUpdate"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V
    .locals 9

    .line 176
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 178
    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionSessionId;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 177
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 180
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 182
    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$000(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected caller to hold PACKAGE_USAGE_STATS permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {}, Lcom/android/server/appprediction/AppPredictionManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 196
    :try_start_0
    iget-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {p1}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$100(Lcom/android/server/appprediction/AppPredictionManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    :try_start_1
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {p0, p2}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$200(Lcom/android/server/appprediction/AppPredictionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 198
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 199
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 199
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    throw p0
.end method

.method public sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda3;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo p2, "sortAppTargets"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    .line 149
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo p2, "unregisterPredictionUpdates"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method
