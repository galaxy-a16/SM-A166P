.class public Lcom/android/server/VcnManagementService$VcnCallbackImpl;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Lcom/android/server/VcnManagementService$VcnCallback;


# instance fields
.field public final mSubGroup:Landroid/os/ParcelUuid;

.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public static synthetic $r8$lambda$EZWpium1j_Q6UaAiJ0jrb17Vlx8(Lcom/android/server/VcnManagementService$VcnCallbackImpl;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->lambda$onGatewayConnectionError$0(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .locals 0

    .line 1466
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Missing subGroup"

    .line 1467
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/VcnManagementService$VcnCallbackImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method private synthetic lambda$onGatewayConnectionError$0(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1503
    :try_start_0
    iget-object p1, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/net/vcn/IVcnStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1509
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    const-string p2, "VcnStatusCallback threw on VCN status change"

    invoke-static {p0, p2, p1}, Lcom/android/server/VcnManagementService;->-$$Nest$mlogDbg(Lcom/android/server/VcnManagementService;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1492
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1494
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1495
    monitor-exit v0

    return-void

    .line 1499
    :cond_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmRegisteredStatusCallbacks(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 1500
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-static {v2, v5, v3}, Lcom/android/server/VcnManagementService;->-$$Nest$misCallbackPermissioned(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    new-instance v2, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService$VcnCallbackImpl;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    .line 1514
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSafeModeStatusChanged(Z)V
    .locals 3

    .line 1472
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1475
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 1481
    :goto_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$mnotifyAllPolicyListenersLocked(Lcom/android/server/VcnManagementService;)V

    .line 1482
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-static {v1, p0, p1}, Lcom/android/server/VcnManagementService;->-$$Nest$mnotifyAllPermissionedStatusCallbacksLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V

    .line 1483
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
